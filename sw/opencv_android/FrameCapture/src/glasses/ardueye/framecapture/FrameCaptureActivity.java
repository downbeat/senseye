package glasses.ardueye.framecapture;

import java.util.Arrays;

import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

public class FrameCaptureActivity extends Activity implements SerialIOEvent, FrameBufferEvent {

	private final String TAG = FrameCaptureActivity.class.getSimpleName();
	
	/**
	 * teensy/ardueye commands and resolution 
	 */
	private final byte[] mFrameCaptureCommand = {0x12};
	private final int    mStartOfFrame        = -124;
	private final int    mNumRows             = 112;
	private final int    mNumCols             = 112;
	
	/**
	 * serialIO object, alerts us when data is received and allows us to write data to a serial device
	 */
	SerialIO mSerialIO;
	
	/**
	 * framebuffer object, alerts user when a frame is completely full, and aids in parsing data into a frame
	 */
	FrameBuffer mFrameBuffer;
	
	/**
	 * GUI elements
	 */
	private TextView 	mTextViewFrameBuffer;
	private ImageButton mImageButtonCaptureFrame;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_frame_capture);
        Log.i(TAG, "onCreate");
       
        // Initializing Serial IO and Framebuffer
        mSerialIO    = new SerialIO(this, this);
        mFrameBuffer = new FrameBuffer(mNumRows, mNumCols, mStartOfFrame, this);
        
        // Connecting to GUI elements
        mTextViewFrameBuffer     = (TextView)    findViewById(R.id.textViewFrameBuffer);
        mImageButtonCaptureFrame = (ImageButton) findViewById(R.id.buttonFrameCap);
        
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
		runOnUiThread(new Runnable() {
			public void run() {
				mTextViewFrameBuffer.append(Arrays.toString(data));	
			}
		});
	}

	@Override
	public void onFrameComplete(final int[] frame) {
		Log.d(TAG, "onFrameComplete");
		final String message = Arrays.toString(frame);
		
		runOnUiThread(new Runnable() {
			public void run() {
				mTextViewFrameBuffer.setText(message);
			}
		});
	}
}
