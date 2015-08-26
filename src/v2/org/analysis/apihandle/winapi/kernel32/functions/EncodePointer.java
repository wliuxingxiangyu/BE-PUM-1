/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.kernel32.functions
 * File name: EncodePointer.java
 * Created date: Aug 27, 2015
 * Description:
 */
package v2.org.analysis.apihandle.winapi.kernel32.functions;

import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.WinDef.PVOID;
import v2.org.analysis.apihandle.winapi.kernel32.Kernel32API;
import v2.org.analysis.apihandle.winapi.kernel32.Kernel32DLL;
import v2.org.analysis.value.LongValue;

/**
 * Encodes the specified pointer. Encoded pointers can be used to provide
 * another layer of protection for pointer values.
 * 
 * @param Ptr
 *            The pointer to be encoded.
 * 
 * @return The function returns the encoded pointer.
 * 
 * @author Yen Nguyen
 *
 */
public class EncodePointer extends Kernel32API {
	
	public EncodePointer() {
		super();
		NUM_OF_PARMS = 1;
	}

	@Override
	public void execute() {
		long t1 = this.params.get(0);

		PVOID Ptr = new PVOID(new Pointer(t1));
		PVOID ret = Kernel32DLL.INSTANCE.EncodePointer(Ptr );
		
		long value = ret == null ? 0 : Pointer.nativeValue(ret.getPointer());
		register.mov("eax", new LongValue(value));
		
//		if (value > 0) {
//			long v = ret.getPointer().getLong(0);
//			memory.setDoubleWordMemoryValue(new X86MemoryOperand(DataType.INT32, value), new LongValue(v));
//		}
	}

}
