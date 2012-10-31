package glasses.ardueye.framecapture;

import java.util.Vector;

import android.util.Log;

public class FrameBuffer {

	private final String TAG = FrameBuffer.class.getSimpleName();
	
	/**
	 * connections to UI(callback inteface)
	 */
	private FrameBufferEvent mEvent;
	
	/**
	 * member specifies whether a frame has started or not
	 */
	private int frameStarted = 0;
	
	/**
	 * number of rows and columns based on resolution
	 */
	private int mTotalRows;
	private int mTotalCols;
	
	/**
	 * current row and column being written to in frame buffer
	 */
	private int mRow;
	private int mCol;
	
	/**
	 * start of frame opcode
	 */
	private byte mStartOfFrame;
	
	/**
	 * frame holds pixel data, and frameBuffer holds frame data
	 */
	private Vector<byte[]> frameBuffer;
	private byte[]         frame;
	
	/**
	 * FrameBuffer constructor, initializes size of frame
	 * 
	 * @param numRows specifies number of pixels in row
	 * @param numCols specifies number of pixels in col
	 */
	public FrameBuffer(int numRows, int numCols, byte startOfFrame, FrameBufferEvent event) {
		mTotalRows    = numRows;
		mTotalCols    = numCols;
		mRow          = 0;
		mCol          = 0;
		mEvent        = event;
		mStartOfFrame = startOfFrame;
		
		frame         = new byte[numRows * numCols];
		frameBuffer   = new Vector<byte[]>();
	}
	
	public void addDataToFrameBuffer(byte[] data) {
		//byte[] pixels = new byte[data.length];
		int i;
		
		//pixels = byteArrayToIntArray(data);
		
		for(i = 0; i < data.length; i++) {
			addPixelToFrame(data[i]);
		}
	}
	
	private void addPixelToFrame(byte pixel) {
		if(pixel == mStartOfFrame) {
			Log.d(TAG, "Starting Frame");
			frameStarted = 1;
			//mRow = 0;
			//mCol = 0;
			return;
		}
		
		else if(frameStarted == 0) {
			return;
		}
		
		else {
			if(mCol == mTotalCols) { mRow++; mCol = 0; }
			if(mRow ==  mTotalRows) {  
				Log.d(TAG, "Finished frame mRow: " + mRow + "mCol: " + mCol);
				mRow = 0; 
				mCol = 0;
				frameBuffer.add(frame);
				mEvent.onFrameComplete(frame);
				frameStarted = 0;
				return;
			}
		}
		frame[mRow*mTotalCols + mCol] = pixel;
		mCol++;
	}
}
