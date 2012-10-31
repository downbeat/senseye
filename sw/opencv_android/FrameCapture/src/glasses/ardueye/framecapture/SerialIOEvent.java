package glasses.ardueye.framecapture;

public interface SerialIOEvent {

	/**
	 * called whenever data is received over serial line 
	 * 
	 * @param data byte array containing data
	 */
	void onDataReceived(byte[] data);
	
}
