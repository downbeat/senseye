package glasses.ardueye.framecapture;

import org.opencv.android.Utils;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class FrameView extends View {
	
	private String TAG = FrameView.class.getSimpleName();
		
	/**
	 * opencv matrix to hold raw pixel data + data needed to convert to properly formatted image
	 */
	private Mat mGrayMat;
	private Mat mRgbaMat;
	
	/**
	 * bitmap to be displayed
	 */
	private Bitmap mBitmap;
	
	/**
	 * FrameView constructor, inflates custom view based on attributes specified in xml layout
	 * 
	 * @param context  relevant contextual data needed to connect to gui
	 * @param attrs    attirbutes specified in xml layout resource file
	 */
	public FrameView(Context context, AttributeSet attrs) {
		super(context, attrs);
		Log.i(TAG, "FrameView Constructor");
		
		mGrayMat = null;
		mRgbaMat = null;
		mBitmap  = null;
	} 
	
	/**
	 * sets bitmap to be drawn with the specified pixel data
	 * 
	 * @param frame  array of pixel data
	 */
	public void setBitmap(byte[] frame, int rows, int cols) {		
		if(mGrayMat == null) {
			mGrayMat = new Mat(rows, cols, CvType.CV_8UC1);
			mRgbaMat = new Mat();
		}
					
		mGrayMat.put(0, 0, frame);
		Imgproc.cvtColor(mGrayMat, mRgbaMat, Imgproc.COLOR_GRAY2RGBA, 4);
		
		mBitmap = Bitmap.createBitmap(cols, rows, Bitmap.Config.ARGB_8888);
		
		
		Utils.matToBitmap(mRgbaMat, mBitmap);
		
		postInvalidate();
	}
	
	@Override
	public void onDraw(Canvas canvas) {		

		Log.d(TAG, "onDraw");
		
		if (mBitmap != null) {
			canvas.drawBitmap(mBitmap, getWidth() / 2, getHeight() / 2, null);
			mBitmap.recycle();
		}
		
	}
}
