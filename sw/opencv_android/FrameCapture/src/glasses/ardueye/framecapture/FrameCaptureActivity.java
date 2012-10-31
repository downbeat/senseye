package glasses.ardueye.framecapture;

import org.opencv.android.BaseLoaderCallback;
import org.opencv.android.LoaderCallbackInterface;
import org.opencv.android.OpenCVLoader;

import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.ImageButton;

public class FrameCaptureActivity extends Activity implements SerialIOEvent, FrameBufferEvent {

	private final String TAG = FrameCaptureActivity.class.getSimpleName();
	
	/**
	 * teensy/ardueye commands and resolution 
	 */
	private final byte[] mFrameCaptureCommand = {0x12};
	private final byte   mStartOfFrame        = (byte) 0x84;
	private final int    mNumRows             = 112;
	private final int    mNumCols             = 112;
	
	/**
	 * serialIO object, alerts us when data is received and allows us to write data to a serial device
	 */
	private SerialIO mSerialIO;
	
	/**
	 * framebuffer object, alerts user when a frame is completely full, and aids in parsing data into a frame
	 */
	private FrameBuffer mFrameBuffer;
	
	/**
	 * frameview object, object that handles displaying each frame
	 */
	private FrameView mFrameView;
	
	/**
	 * GUI elements
	 */
	private ImageButton mImageButtonCaptureFrame;
	
	
	/**
	 * initialization for openCV on android
	 */
	 private BaseLoaderCallback  mOpenCVCallBack = new BaseLoaderCallback(this) {
	    	@Override
	    	public void onManagerConnected(int status) {
	    		switch (status) {
					case LoaderCallbackInterface.SUCCESS:
						Log.i(TAG, "OpenCV loaded successfully");
						break;
					default:
						super.onManagerConnected(status);
						break;
				}
	    	}
		};
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_frame_capture);
        Log.i(TAG, "onCreate");
        
        // Initializing openCV
        Log.i(TAG, "Trying to load OpenCV library");
        if (!OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION_2_4_2, this, mOpenCVCallBack)) {
        	Log.e(TAG, "Cannot connect to OpenCV Manager");
        }
       
        // Initializing Serial IO and Framebuffer
        mSerialIO    = new SerialIO(this, this);
        mFrameBuffer = new FrameBuffer(mNumRows, mNumCols, mStartOfFrame, this);
        
        // Connecting to GUI elements
        mImageButtonCaptureFrame = (ImageButton) findViewById(R.id.buttonFrameCap);
        mFrameView               = (FrameView)   findViewById(R.id.frameview);
        
        // sending frame capture command on button click
        mImageButtonCaptureFrame.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				if(mSerialIO.getDevice() != null) {
					mSerialIO.sendData(mFrameCaptureCommand);	
				}
			}
		});  
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_frame_capture, menu);
        Log.i(TAG, "onCreateOptionsMenu");
        return true;
    }
    
    @Override
    protected void onResume() {
    	super.onResume();
    	Log.i(TAG, "Entering onResume");
    	
    	mSerialIO.openConnection();
    }
    
    @Override
    protected void onPause() {
    	super.onPause();
    	Log.i(TAG, "Entering onPause");
    	
    	mSerialIO.closeConnection();
    }

	@Override
	public void onDataReceived(final byte[] data) {
		mFrameBuffer.addDataToFrameBuffer(data);
	}

	@Override
	public void onFrameComplete(final byte[] frame) {
		Log.d(TAG, "onFrameComplete");
		
		mFrameView.setBitmap(frame, mNumRows, mNumCols);
	}
}
