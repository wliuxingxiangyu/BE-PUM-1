/**
 * Project: BE_PUM_V1
 * Package name: v2.org.analysis.apihandle.be_pum.winapi.kernel32.functions
 * File name: GetLastError.java
 * Created date: Feb 7, 2015
 * Description:
 */
package v2.org.analysis.apihandle.winapi.kernel32.functions;

import com.sun.jna.platform.win32.Kernel32;

import v2.org.analysis.apihandle.winapi.kernel32.Kernel32API;

import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.asm.Instruction;

import v2.org.analysis.environment.Environment;
import v2.org.analysis.environment.Register;
import v2.org.analysis.path.BPState;
import v2.org.analysis.value.LongValue;

/**
 * The GetLastError function retrieves the calling thread's last-error code
 * value. The last-error code is maintained on a per-thread basis. Multiple
 * threads do not overwrite each other's last-error code.
 * 
 * @return The return value is the calling thread's last-error code value.
 * 
 * @author Yen Nguyen
 *
 */
public class GetLastError extends Kernel32API {

	public GetLastError() {

	}

	@Override
	public boolean execute(AbsoluteAddress address, String funcName, BPState curState, Instruction inst) {
		Environment env = curState.getEnvironement();
		Register register = env.getRegister();

		// This function has no parameters.
		long verNum = Kernel32.INSTANCE.GetLastError();
		System.out.println("Last Error:" + verNum);

		register.mov("eax", new LongValue(verNum));

		return false;
	}

}
