/**
 * Project: BE_PUM_V1
 * Package name: v2.org.analysis.apihandle.be_pum.winapi.kernel32.functions
 * File name: WinExec.java
 * Created date: Jan 30, 2015
 */
package v2.org.analysis.apihandle.winapi.kernel32.functions;

import v2.org.analysis.apihandle.winapi.kernel32.Kernel32API;
import v2.org.analysis.apihandle.winapi.kernel32.Kernel32DLL;

import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.asm.DataType;
import org.jakstab.asm.Instruction;
import org.jakstab.asm.x86.X86MemoryOperand;

import v2.org.analysis.environment.Environment;
import v2.org.analysis.environment.Memory;
import v2.org.analysis.environment.Register;
import v2.org.analysis.environment.Stack;
import v2.org.analysis.path.BPState;
import v2.org.analysis.system.Storage;
import v2.org.analysis.value.LongValue;
import v2.org.analysis.value.Value;

/**
 * Runs the specified application.
 * 
 * UINT WINAPI WinExec( _In_ LPCSTR lpCmdLine, _In_ UINT uCmdShow );
 * 
 * @param lpCmdLine
 * 
 *            <p>
 *            The command line (file name plus optional parameters) for the
 *            application to be executed. If the name of the executable file in
 *            the lpCmdLine parameter does not contain a directory path, the
 *            system searches for the executable file in this sequence:
 *            </p>
 * 
 *            <ol>
 *            <li>The directory from which the application loaded.
 *            <li>The current directory.
 *            <li>The Windows system directory. The GetSystemDirectory function
 *            retrieves the path of this directory.
 *            <li>The Windows directory. The GetWindowsDirectory function
 *            retrieves the path of this directory.
 *            <li>The directories listed in the PATH environment variable.
 *            </ol>
 * 
 * @param uCmdShow
 *            <p>
 *            The display options. For a list of the acceptable values, see the
 *            description of the nCmdShow parameter of the ShowWindow function.
 *            </p>
 * @return <p>
 *         If the function succeeds, the return value is greater than 31.
 *         </p>
 *         <p>
 *         If the function fails, the return value is one of the following error
 *         values.
 *         </p>
 * 
 * @author Yen Nguyen
 *
 */

public class WinExec extends Kernel32API {

	/**
	 * Constructor
	 */
	public WinExec() {

	}

	@Override
	public boolean execute(AbsoluteAddress address, String funcName, BPState curState, Instruction inst) {
		// Prepare environment
		Environment env = curState.getEnvironement();
		Stack stack = env.getStack();
		Memory memory = env.getMemory();
		Register register = env.getRegister();

		// HMODULE hModule, handle to DLL module
		// LPCSTR lpProcName name of function
		Value x1 = stack.pop();
		Value x2 = stack.pop();
		System.out.println("Argument:" + x1 + " " + x2 + " ");

		if (x1 instanceof LongValue && x2 instanceof LongValue) {
			/*
			 * returnValue = APIHandler.getProcAddress( ((ValueLongExp)
			 * x1).getValue(), ((ValueLongExp) x2).getValue(), program);
			 */
			String commandLine = memory.getText(new X86MemoryOperand(DataType.INT32, ((LongValue) x1).getValue()));
			commandLine = Storage.getMappingPath(commandLine);
			System.out.println("Command Line:" + commandLine + ", Window Style:" + ((LongValue) x2).getValue());

			int ret = Kernel32DLL.INSTANCE.WinExec(commandLine, ((int) ((LongValue) x2).getValue()));

			register.mov("eax", new LongValue(ret));
		}

		return false;
	}

}
