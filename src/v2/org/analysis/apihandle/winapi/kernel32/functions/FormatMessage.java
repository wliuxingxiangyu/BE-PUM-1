/**
 * Project: BE_PUM_V1
 * Package name: v2.org.analysis.apihandle.be_pum.winapi.kernel32.functions
 * File name: VirtualAlloc.java
 * Created date: Feb 9, 2015
 * Description:
 */
package v2.org.analysis.apihandle.winapi.kernel32.functions;

import v2.org.analysis.apihandle.winapi.kernel32.Kernel32API;
import v2.org.analysis.apihandle.winapi.kernel32.Kernel32DLL;

import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.asm.Instruction;

import com.sun.jna.platform.win32.WinDef.DWORD;
import com.sun.jna.platform.win32.WinDef.LPVOID;

import v2.org.analysis.environment.Environment;
import v2.org.analysis.environment.Register;
import v2.org.analysis.environment.Stack;
import v2.org.analysis.path.BPState;
import v2.org.analysis.value.LongValue;
import v2.org.analysis.value.Value;

/**
 * Formats a message string. The function requires a message definition as
 * input. The message definition can come from a buffer passed into the
 * function. It can come from a message table resource in an already-loaded
 * module. Or the caller can ask the function to search the system's message
 * table resource(s) for the message definition. The function finds the message
 * definition in a message table resource based on a message identifier and a
 * language identifier. The function copies the formatted message text to an
 * output buffer, processing any embedded insert sequences if requested.
 * 
 * @param dwFlags
 *            The formatting options, and how to interpret the lpSource
 *            parameter. The low-order byte of dwFlags specifies how the
 *            function handles line breaks in the output buffer. The low-order
 *            byte can also specify the maximum width of a formatted output
 *            line.
 * 
 * @param lpSource
 *            The location of the message definition. The type of this parameter
 *            depends upon the settings in the dwFlags parameter.
 * 
 * @param dwMessageId
 *            The message identifier for the requested message. This parameter
 *            is ignored if dwFlags includes FORMAT_MESSAGE_FROM_STRING.
 * 
 * @param dwLanguageId
 *            The language identifier for the requested message. This parameter
 *            is ignored if dwFlags includes FORMAT_MESSAGE_FROM_STRING.
 * 
 *            If you pass a specific LANGID in this parameter, FormatMessage
 *            will return a message for that LANGID only. If the function cannot
 *            find a message for that LANGID, it sets Last-Error to
 *            ERROR_RESOURCE_LANG_NOT_FOUND. If you pass in zero, FormatMessage
 *            looks for a message for LANGIDs in the following order:
 * 
 *            <ol>
 *            <li>Language neutral
 *            <li>Thread LANGID, based on the thread's locale value
 *            <li>User default LANGID, based on the user's default locale value
 *            <li>System default LANGID, based on the system default locale
 *            value
 *            <li>US English
 *            </ol>
 * 
 *            If FormatMessage does not locate a message for any of the
 *            preceding LANGIDs, it returns any language message string that is
 *            present. If that fails, it returns ERROR_RESOURCE_LANG_NOT_FOUND.
 * 
 * @param lpBuffer
 *            A pointer to a buffer that receives the null-terminated string
 *            that specifies the formatted message. If dwFlags includes
 *            FORMAT_MESSAGE_ALLOCATE_BUFFER, the function allocates a buffer
 *            using the LocalAlloc function, and places the pointer to the
 *            buffer at the address specified in lpBuffer.
 * 
 * @param nSize
 *            If the FORMAT_MESSAGE_ALLOCATE_BUFFER flag is not set, this
 *            parameter specifies the size of the output buffer, in TCHARs. If
 *            FORMAT_MESSAGE_ALLOCATE_BUFFER is set, this parameter specifies
 *            the minimum number of TCHARs to allocate for an output buffer. The
 *            output buffer cannot be larger than 64K bytes.
 * 
 * @param Arguments
 *            An array of values that are used as insert values in the formatted
 *            message. A %1 in the format string indicates the first value in
 *            the Arguments array; a %2 indicates the second argument; and so
 *            on.
 * 
 * @return If the function succeeds, the return value is the number of TCHARs
 *         stored in the output buffer, excluding the terminating null
 *         character.
 * 
 * @author Yen Nguyen
 *
 */
public class FormatMessage extends Kernel32API {

	public FormatMessage() {

	}

	@Override
	public boolean execute(AbsoluteAddress address, String funcName, BPState curState, Instruction inst) {
		Environment env = curState.getEnvironement();
		Stack stack = env.getStack();
		Register register = env.getRegister();

		Value x1 = stack.pop();
		Value x2 = stack.pop();
		Value x3 = stack.pop();
		Value x4 = stack.pop();
		Value x5 = stack.pop();
		Value x6 = stack.pop();
		Value x7 = stack.pop();
		System.out.println("Argument:" + x1 + " " + x2 + " " + x3 + " " + x4 + " " + x5 + " " + x6 + " " + x7);
		if (x1 instanceof LongValue && x2 instanceof LongValue && x3 instanceof LongValue && x4 instanceof LongValue
				&& x5 instanceof LongValue && x6 instanceof LongValue && x7 instanceof LongValue) {
			long t1 = ((LongValue) x1).getValue();
			long t2 = ((LongValue) x2).getValue();
			long t3 = ((LongValue) x3).getValue();
			long t4 = ((LongValue) x4).getValue();
			long t5 = ((LongValue) x4).getValue();
			long t6 = ((LongValue) x6).getValue();
			long t7 = ((LongValue) x7).getValue();

			DWORD dwFlags = new DWORD(t1);
			LPVOID lpSource = new LPVOID(t2);
			DWORD dwMessageId = new DWORD(t3);
			DWORD dwLanguageId = new DWORD(t4);
			char[] lpBuffer = new char[(int) t6];
			DWORD nSize = new DWORD(t6);
			String[] Arguments = null;
			DWORD ret = Kernel32DLL.INSTANCE.FormatMessage(dwFlags, lpSource, dwMessageId, dwLanguageId, lpBuffer,
					nSize, Arguments);

			register.mov("eax", new LongValue(ret.longValue()));
		}
		return false;
	}

}
