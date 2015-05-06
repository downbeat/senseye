//**************************************************************************************************
// This file is part of the glasses data protocol (GDP) and data exchange format (GDF) library.
// libglasses2 is part of the SensEye project.
// Copyright (C) 2015  Russ Bielawski
//
// libglasses2 is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//**************************************************************************************************

//**************************************************************************************************
// glasses_format.c
//
//
// Glasses data exchange format (GDF) C library.
//
// Recording file format definitions and helper functions.
//
//
// AUTHORS
// Russ Bielawski <jbielaws@umich.edu>
//
//
// VERSION   DATE        DESCRIPTION
// 01.00 00  2015-02-15  Created.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include "glasses_format.h"
#include "cv.h"
#include <stdio.h>
#include <stddef.h>
#include <string.h>
#include <sys/stat.h>
#include <errno.h>


//**************************************************************************************************
// Defines / constants
//
enum
{
   DIRECTORY_MODE_DEFAULT = 0755
};


//**************************************************************************************************
// Local function prototypes
//
static int  mkdir_p               (const char *const, mode_t);
static int  get_deepest_dir_name  (const char *const, char *const, size_t);


//**************************************************************************************************
// Function definitions 
//

//******************************************************************************
// gdf_create_record_directory
// Create the directory for the capture record.  Mark the directory as having
// been created.
//
// The directory should not already exist.
//
// Returns 0 on success and -1 on error (including existance of the directory).
//******************************************************************************
int gdf_create_record_directory(struct gdf_capture_record *rr)
{
   int rc;
   struct stat file_stat = {0};

   rc = -1;

   if(NULL != rr)
   {
      // Directory should not exist.
      if(0 != stat(rr->path, &file_stat))
      {
         rc = mkdir_p(rr->path, DIRECTORY_MODE_DEFAULT);
         if(0 == rc)
         {
            rr->record_directory_created = 1;
         }
      }
   }

   return rc;
}

//******************************************************************************
// mkdir_p
// Emulates mkdir -p.  Maximum path length is GDF_MAX_LENGTH_PATH.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
static int mkdir_p(const char *const path, mode_t mode)
{
   int rc;
   unsigned ii;
   unsigned path_length;
   char temp_path[GDF_MAX_LENGTH_PATH+1];

   rc = -1;

   if(NULL != path)
   {
      path_length = strnlen(path, GDF_MAX_LENGTH_PATH+1);
      if(path_length <= GDF_MAX_LENGTH_PATH)
      {
         rc = 0;
         for(ii = 0; ii <= path_length; ++ii)
         {
            if(('/' == path[ii]) || ('\0' == path[ii]))
            {
               strncpy(temp_path, path, ii);
               temp_path[ii] = '\0';
               // TODO: This needs better error checking/handling.
               (void)mkdir(temp_path, mode);
            }
         }
      }
   }

   return rc;
}

//******************************************************************************
// gdf_write_metadata_file
//
// Overwrites existing file at that location.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdf_write_metadata_file(struct gdf_capture_record *rr)
{
   int rc;
   unsigned ii;
   FILE *metadata_file;
   char record_name[GDF_MAX_LENGTH_PATH+1];
   char metadata_file_name[GDF_MAX_LENGTH_PATH+1];

   rc = -1;

   if(NULL != rr)
   {
      if((GDF_VERSION_MAJOR == rr->version_major) &&
         (GDF_VERSION_MINOR == rr->version_minor))
      {
         if(0 == get_deepest_dir_name(rr->path, record_name, GDF_MAX_LENGTH_PATH))
         {
            snprintf(metadata_file_name, GDF_MAX_LENGTH_PATH, "%s/%s%s", rr->path, record_name,
                     GDF_FILE_EXTENSION);
            metadata_file = fopen(metadata_file_name, "w");
            if(NULL != metadata_file)
            {
               // Print out metadata.
               fprintf(metadata_file, "GDF v%02X_%02X\n", rr->version_major, rr->version_minor);
               fprintf(metadata_file, "Record Name: %s\n", record_name);
               fprintf(metadata_file, "Average FPS: %.03f\n", rr->fps);
               fprintf(metadata_file, "Number of Imagers: %d\n", rr->num_cams);
               for(ii = 0; ii < rr->num_cams; ++ii)
               {
                  fprintf(metadata_file, "Imager %d Resolution: %d x %d\n",
                          ii, rr->resolution[ii].horizontal, rr->resolution[ii].vertical);
               }
               fprintf(metadata_file, "Instantaneous FPS File: %s%s%s\n", record_name,
                       GDF_FPS_FILE_NAME_SUFFIX, GDF_FPS_FILE_EXTENSION);
               fprintf(metadata_file, "Frame File Name Format: %s%s%s\n", record_name,
                       GDF_FRAME_FILE_NAME_FORMAT_SUFFIX, GDF_FRAME_FILE_EXTENSION);
            }
            fclose(metadata_file);
            rc = 0;
         }
      }
   }

   return rc;
}

//******************************************************************************
// get_deepest_dir_name
// Get the deepest directory name in the specified path.  Length of the deepest
// directory name cannot be longer than maximum path length, and nor can the
// length of the full path name.  If the deepest directory name is longer than
// maximum length specified, maxlen,, the first maxlen charaters are placed into
// the return buffer and an error is returned.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
static int get_deepest_dir_name(const char *const path, char *const deepest, size_t maxlen)
{
   int rc;
   int ii;
   unsigned path_length;
   unsigned prefix_length;
   unsigned copy_length;

   rc = -1;

   if((NULL != path) && (NULL != deepest) && (maxlen <= GDF_MAX_LENGTH_PATH))
   {
      path_length = strnlen(path, GDF_MAX_LENGTH_PATH+1);
      if(path_length <= GDF_MAX_LENGTH_PATH)
      {
         // Ignore trailing slashes (/).
         while((path_length > 0) && ('/' == path[path_length-1]))
         {
            --path_length;
         }
         // Find prefix length.
         prefix_length = path_length;
         for(ii = path_length-1; (ii >= 0) && ('/' != path[ii]); --ii)
         {
            --prefix_length;
         }

         copy_length = (maxlen < (path_length-prefix_length)) ? maxlen : (path_length-prefix_length);
         strncpy(deepest, (char*)(path+prefix_length), copy_length);
         // Fill remainder of deepest with null charaters.
         for(ii = copy_length; ii < maxlen; ++ii)
         {
            deepest[ii] = '\0';
         }

         // Set return code.
         if(maxlen >= (path_length-prefix_length))
         {
            rc = 0;
         }
      }
   }

   return rc;
}

//******************************************************************************
// gdf_append_fps
// Append a frame's instantaneous frames-per-second (FPS) to the FPS file.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdf_append_fps(struct gdf_capture_record *rr, unsigned frame_index, double fps)
{
   int rc;
   FILE *fps_file;
   char fps_file_name[GDF_MAX_LENGTH_PATH+1];

   rc = -1;

   if(NULL != rr)
   {
      if((GDF_VERSION_MAJOR == rr->version_major) &&
         (GDF_VERSION_MINOR == rr->version_minor))
      {
         if(0 == gdf_get_fps_file_name(rr, fps_file_name))
         {
            fps_file = fopen(fps_file_name, "a");
            if(NULL != fps_file)
            {
               // Print out metadata.
               fprintf(fps_file,"[%06d] fps := % 6.03f\n", frame_index, fps);
            }
            fclose(fps_file);
            rc = 0;
         }
      }
   }

   return rc;
}

//******************************************************************************
// gdf_write_frame
// Append a frame's instantaneous frames-per-second (FPS) to the FPS file.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdf_write_frame(struct gdf_capture_record *rr, IplImage *images[GDF_MAX_NUM_CAMS],
                    unsigned frame_index)
{
   int rc;
   unsigned ii;
   unsigned filled_width;
   char image_file_name[GDF_MAX_LENGTH_PATH+1];
   struct gdf_imager_resolution combined_resolution;
   IplImage *combined;

   rc = -1;

   if(NULL != rr)
   {
      if(rr->num_cams <= GDF_MAX_NUM_CAMS)
      {
         rc = 0;
         for(ii = 0; ii < rr->num_cams; ++ii)
         {
            if(NULL == images[ii])
            {
               rc = -1;
               break;
            }
         }
      }
   }

   if(0 == rc)
   {
      // Determine correct size for combined frame and allocate.
      combined_resolution.horizontal = combined_resolution.vertical = 0;
      for(ii = 0; ii < rr->num_cams; ++ii)
      {
         combined_resolution.horizontal += rr->resolution[ii].horizontal;
         if(combined_resolution.vertical < rr->resolution[ii].vertical)
         {
            combined_resolution.vertical = rr->resolution[ii].vertical;
         }
      }
      combined = cvCreateImage(cvSize(combined_resolution.horizontal, combined_resolution.vertical),
                               IPL_DEPTH_8U, 1);

      // Combine all frames side-by-side (backwards compatible with previous capture records).
      filled_width = 0;
      for(ii = 0; ii < rr->num_cams; ++ii)
      {
         // Set ROI for destination.
         cvSetImageROI(combined, cvRect(filled_width, 0, images[ii]->width, images[ii]->height));
         cvCopy(images[ii], combined, NULL);
         filled_width += images[ii]->width;
      }
      cvResetImageROI(combined);

      // Save image file as BMP.
      gdf_get_frame_file_name(rr, image_file_name, frame_index);
      // TODO: Check return code.
      (void)cvSaveImage(image_file_name, combined, 0);

      // Release dynamically allocated memory.
      cvReleaseImage(&combined);
   }

   return rc;
}

//******************************************************************************
// gdf_get_metadata_file_name
// Get the filename for the main metadata text file.
//
// This function will not create a path name longer than GDF_MAX_LENGTH_PATH.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdf_get_metadata_file_name(struct gdf_capture_record *rr, char *const file_name)
{
   int rc;
   char record_name[GDF_MAX_LENGTH_PATH+1];

   rc = -1;

   if((NULL != rr) && (NULL != file_name))
   {
      if(0 == get_deepest_dir_name(rr->path, record_name, GDF_MAX_LENGTH_PATH))
      {
         snprintf(file_name, GDF_MAX_LENGTH_PATH, "%s/%s%s", rr->path, record_name,
                  GDF_FILE_EXTENSION);
         rc = 0;
      }
   }

   return rc;
}

//******************************************************************************
// gdf_get_fps_file_name
// Get the filename for the frames per second (FPS) metadata text file.
//
// This function will not create a path name longer than GDF_MAX_LENGTH_PATH.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdf_get_fps_file_name(struct gdf_capture_record *rr, char *const file_name)
{
   int rc;
   char record_name[GDF_MAX_LENGTH_PATH+1];

   rc = -1;

   if((NULL != rr) && (NULL != file_name))
   {
      if(0 == get_deepest_dir_name(rr->path, record_name, GDF_MAX_LENGTH_PATH))
      {
         snprintf(file_name, GDF_MAX_LENGTH_PATH, "%s/%s%s%s", rr->path, record_name,
                  GDF_FPS_FILE_NAME_SUFFIX, GDF_FPS_FILE_EXTENSION);
         rc = 0;
      }
   }

   return rc;
}

//******************************************************************************
// gdf_get_frame_file_name
// Get the filename for frame image with the frame and camera indices specified.
//
// This function will not create a path name longer than GDF_MAX_LENGTH_PATH.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdf_get_frame_file_name(struct gdf_capture_record *rr, char *const file_name,
                            unsigned frame_index)
{
   int rc;
   char record_name[GDF_MAX_LENGTH_PATH+1];

   rc = -1;

   if((NULL != rr) && (NULL != file_name))
   {
      if(0 == get_deepest_dir_name(rr->path, record_name, GDF_MAX_LENGTH_PATH))
      {
         snprintf(file_name, GDF_MAX_LENGTH_PATH, "%s/%s_%06d%s", rr->path, record_name,
                  frame_index, GDF_FRAME_FILE_EXTENSION);
         rc = 0;
      }
   }

   return rc;
}
