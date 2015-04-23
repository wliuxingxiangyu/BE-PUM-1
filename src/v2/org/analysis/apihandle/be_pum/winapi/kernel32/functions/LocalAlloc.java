/**
 * 
 */
package v2.org.analysis.apihandle.be_pum.winapi.kernel32.functions;

import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.BaseTSD.SIZE_T;
import com.sun.jna.platform.win32.WinDef.UINT;
import com.sun.jna.platform.win32.WinNT.HANDLE;
import v2.org.analysis.apihandle.be_pum.winapi.kernel32.Kernel32API;
import v2.org.analysis.apihandle.be_pum.winapi.kernel32.Kernel32DLL;
import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.asm.Instruction;
import v2.org.analysis.environment.Environment;
import v2.org.analysis.environment.Register;
import v2.org.analysis.environment.Stack;
import v2.org.analysis.path.BPState;
import v2.org.analysis.value.LongValue;
import v2.org.analysis.value.Value;

/**
 * Allocates the specified number of bytes from the heap.
 * 
 * @param uFlags
 *            The memory allocation attributes. The default is the LMEM_FIXED
 *            value. This parameter can be one or more of the following values,
 *            except for the incompatible combinations that are specifically
 *            noted.
 * 
 * @param uBytes
 *            The number of bytes to allocate. If this parameter is zero and the
 *            uFlags parameter specifies LMEM_MOVEABLE, the function returns a
 *            handle to a memory object that is marked as discarded.
 * 
 * @return If the function succeeds, the return value is a handle to the newly
 *         allocated memory object.
 * 
 * @author Yen Nguyen
 *
 */
public class LocalAlloc extends Kernel32API {

	public LocalAlloc() {
	}

	@Override
	public boolean execute(AbsoluteAddress address, String funcName,
			BPState curState, Instruction inst) {
		Environment env = curState.getEnvironement();
		Stack stack = env.getStack();
		// Memory memory = env.getMemory();
		Register register = env.getRegister();

		Value x1 = stack.pop();
		Value x2 = stack.pop();

		System.out.println("Argument:" + x1 + " " + x2);

		if (x1 instanceof LongValue && x2 instanceof LongValue) {
			long t1 = ((LongValue) x1).getValue();
			long t2 = ((LongValue) x2).getValue();

			UINT uFlags = new UINT(t1);
			SIZE_T uBytes = new SIZE_T(t2);
			HANDLE ret = Kernel32DLL.INSTANCE.LocalAlloc(uFlags, uBytes);

			register.mov(
					"eax",
					new LongValue(ret == null ? 0 : Pointer.nativeValue(ret
							.getPointer())));
		}
		return false;
	}

}
