package glasses.ardueye.framecapture;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import com.hoho.android.usbserial.driver.UsbSerialDriver;
import com.hoho.android.usbserial.driver.UsbSerialProber;
import com.hoho.android.usbserial.util.SerialInputOutputManager;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.util.Log;

public class SerialIO {

	private final String TAG = SerialIO.class.getSimpleName();
	
	/**
	 * connection to UI thread(context and callback on event)
	 */
	private Context       mContext;
	private SerialIOEvent mEvent;
	
	/**
	 * serial/usb control members
	 */
	private UsbSerialDriver          mSerialDevice;
	private UsbManager               mUsbManager;
	private SerialInputOutputManager mSerialIOManager;
	
	/**
	 * executor service to manage threads for serialIO(needed for USB serial library
	 */
	private final ExecutorService mExecutor = Executors.newSingleThreadExecutor();
	
	/**
	 * serialIO constructor
	 * 
	 * @param context device context 
	 * @param event   SerialIOEvent of class that wants to receive serial data through callback function
	 */
	public SerialIO(Context context, SerialIOEvent event) {
		Log.d(TAG, "SerialIO Constructor");
		mContext = context;
		mEvent   = event;
	}
	
	/**
	 * returns connected serial device.
	 * 
	 * @return returns connected serial device. if no device is found, returns null
	 */
	public UsbDevice getDevice() {
		Log.d(TAG, "getDevice");
		
		if(mSerialDevice == null) {
			return null;
		}
		else {
			return mSerialDevice.getDevice();
		}
		
	}

	/**
	 * opens a serial connection to a usb device if there is one available
	 * 
	 * @return returns 1 upon success, returns 0 if no serial device is found
	 */
	public int openConnection() {
		mUsbManager = (UsbManager) mContext.getSystemService(Context.USB_SERVICE);

		// looking for serial device
		mSerialDevice = UsbSerialProber.acquire(mUsbManager);

		// if no serial device is found, return failure
		if (mSerialDevice == null) { Log.d(TAG, "No Serial Device Found"); return 0; }

		else {
			try { mSerialDevice.open(); } 
			catch(IOException e) {
				Log.e(TAG, "Unable to Connect to Serial Device");
				try { mSerialDevice.close(); } catch(IOException e2) { }
				mSerialDevice = null;
				return 0;
			}
		}
		
		onDeviceStateChange();

		return 1;
	}
	
	/**
	 * opens a serial connection to a usb device if there is one available
	 * 
	 * @return returns 1 upon success, returns 0 if no serial device is found
	 */
	public void closeConnection() {
		stopIOManager();
		
		if(mSerialDevice != null) {
			try { mSerialDevice.close(); } 
			catch(IOException e) { }
			mSerialDevice = null;
		}
	}
	
	/**
	 *  sends data connected serial device
	 *  
	 * @param data byte array containing data to be sent to serial device
	 */
	public void sendData(byte[] data) {
		if(mSerialIOManager != null) {
			mSerialIOManager.writeAsync(data);
		}
	}
	
	/**
	 * listener that provides callback function for serial communication...
	 * modify onNewData if you wish to do something else with the incoming data
	 */
    private final SerialInputOutputManager.Listener mListener =
            new SerialInputOutputManager.Listener() {

        @Override
        public void onRunError(Exception e) {
            Log.d(TAG, "Runner stopped.");
        }

        @Override
        public void onNewData(final byte[] data) {
        	mEvent.onDataReceived(data);
        }
    };
 
	private void stopIOManager() {
		if (mSerialIOManager != null) {
			Log.i(TAG, "Stopping io manager ..");
			mSerialIOManager.stop();
			mSerialIOManager = null;
		}
	}
		
	private void startIOManager() {
        if (mSerialDevice != null) {
            Log.i(TAG, "Starting io manager ..");
            mSerialIOManager = new SerialInputOutputManager(mSerialDevice, mListener);
            mExecutor.submit(mSerialIOManager);
        }
	}
	
	private void onDeviceStateChange() {
		stopIOManager();
		startIOManager();
	}



}
