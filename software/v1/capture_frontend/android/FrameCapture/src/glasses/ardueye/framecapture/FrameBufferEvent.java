package glasses.ardueye.framecapture;

public interface FrameBufferEvent {

	/**
	 * called whenever a full frame is captured
	 * 
	 * @param frame int array containing the frame
	 */
	public void onFrameComplete(byte[] frame);
	
}
