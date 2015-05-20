/**
 * 
 */
package v2.org.analysis.apihandle.winapi.kernel32.functions;

import v2.org.analysis.apihandle.winapi.kernel32.Kernel32API;
import v2.org.analysis.apihandle.winapi.kernel32.Kernel32DLL;

import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.asm.DataType;
import org.jakstab.asm.Instruction;
import org.jakstab.asm.x86.X86MemoryOperand;

import com.sun.jna.Pointer;
import com.sun.jna.WString;
import com.sun.jna.platform.win32.WinDef.BOOL;
import com.sun.jna.platform.win32.WinDef.DWORD;
import com.sun.jna.platform.win32.WinNT.HANDLE;

import v2.org.analysis.environment.Environment;
import v2.org.analysis.environment.Memory;
import v2.org.analysis.environment.Register;
import v2.org.analysis.environment.Stack;
import v2.org.analysis.path.BPState;
import v2.org.analysis.value.LongValue;
import v2.org.analysis.value.Value;

/**
 * Opens an existing named event object.
 * 
 * @param dwDesiredAccess
 *            The access to the event object. The function fails if the security
 *            descriptor of the specified object does not permit the requested
 *            access for the calling process. For a list of access rights, see
 *            Synchronization Object Security and Access Rights.
 * 
 * @param bInheritHandle
 *            If this value is TRUE, processes created by this process will
 *            inherit the handle. Otherwise, the processes do not inherit this
 *            handle.
 * 
 * @param lpName
 *            The name of the event to be opened. Name comparisons are case
 *            sensitive. This function can open objects in a private namespace.
 *            For more information, see Object Namespaces.
 * 
 * @return If the function succeeds, the return value is a handle to the event
 *         object. If the function fails, the return value is NULL.
 * 
 * @author Yen Nguyen
 *
 */
public class OpenEvent extends Kernel32API {

	public OpenEvent() {
	}

	@Override
	public boolean execute(AbsoluteAddress address, String funcName, BPState curState, Instruction inst) {
		Environment env = curState.getEnvironement();
		Stack stack = env.getStack();
		Memory memory = env.getMemory();
		Register register = env.getRegister();

		Value x1 = stack.pop();
		Value x2 = stack.pop();
		Value x3 = stack.pop();
		System.out.println("Argument:" + x1 + " " + x2 + " " + x3);

		if (x1 instanceof LongValue && x2 instanceof LongValue && x3 instanceof LongValue) {
			long t1 = ((LongValue) x1).getValue();
			long t2 = ((LongValue) x2).getValue();
			long t3 = ((LongValue) x3).getValue();

			DWORD dwDesiredAccess = new DWORD(t1);
			BOOL bInheritHandle = new BOOL(t2);
			WString lpName = new WString(memory.getText(new X86MemoryOperand(DataType.INT32, t3)));
			HANDLE ret = Kernel32DLL.INSTANCE.OpenEvent(dwDesiredAccess, bInheritHandle, lpName);

			long value = (ret == null) ? 0 : Pointer.nativeValue(ret.getPointer());
			register.mov("eax", new LongValue(value));
			System.out.println("Return Value: " + value);
		}
		return false;
	}

}
