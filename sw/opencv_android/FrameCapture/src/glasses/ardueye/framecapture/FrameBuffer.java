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
	private int mStartOfFrame;
	
	/**
	 * frame holds pixel data, and frameBuffer holds frame data
	 */
	private Vector<int[]> frameBuffer;
	private int[]         frame;
	
	/**
	 * FrameBuffer constructor, initializes size of frame
	 * 
	 * @param numRows specifies number of pixels in row
	 * @param numCols specifies number of pixels in col
	 */
	public FrameBuffer(int numRows, int numCols, int startOfFrame, FrameBufferEvent event) {
		mTotalRows    = numRows;
		mTotalCols    = numCols;
		mRow          = 0;
		mCol          = 0;
		mEvent        = event;
		mStartOfFrame = startOfFrame;
		
		frame         = new int[numRows * numCols];
		frameBuffer   = new Vector<int[]>();
	}
	
	public void addDataToFrameBuffer(byte[] data) {
		int[] pixels = new int[data.length];
		int i;
		
		pixels = byteArrayToIntArray(data);
		
		for(i = 0; i < pixels.length; i++) {
			addPixelToFrame(pixels[i]);
		}
	}
	
	private void addPixelToFrame(int pixel) {
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
	
	private static int[] byteArrayToIntArray(byte[] b) {
		int[] data = new int[b.length];
		int i;
		
		for(i = 0; i < b.length; i++) {
			data[i] = b[i];
		}
		
		return data;
	}
}
