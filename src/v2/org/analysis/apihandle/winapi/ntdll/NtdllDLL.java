package v2.org.analysis.apihandle.winapi.ntdll;

import com.sun.jna.Native;
import com.sun.jna.Structure;
import com.sun.jna.platform.win32.WinDef.PVOID;
import com.sun.jna.platform.win32.WinDef.ULONG;
import com.sun.jna.platform.win32.WinDef.ULONGByReference;
import com.sun.jna.platform.win32.WinNT.HANDLE;
import com.sun.jna.win32.StdCallLibrary;
import com.sun.jna.win32.W32APIOptions;

public interface NtdllDLL extends StdCallLibrary {
	NtdllDLL INSTANCE = (NtdllDLL) Native.loadLibrary("NtDll", NtdllDLL.class, W32APIOptions.DEFAULT_OPTIONS);

	/**
	 * Retrieves information about the specified process.
	 * 
	 * @param ProcessHandle
	 *            A handle to the process for which information is to be
	 *            retrieved.
	 * 
	 * @param ProcessInformationClass
	 *            The type of process information to be retrieved. This
	 *            parameter can be one of the following values from the
	 *            PROCESSINFOCLASS enumeration.
	 * 
	 * @param ProcessInformation
	 *            A pointer to a buffer supplied by the calling application into
	 *            which the function writes the requested information. The size
	 *            of the information written varies depending on the data type
	 *            of the ProcessInformationClass parameter:
	 * 
	 * @param ProcessInformationLength
	 *            The size of the buffer pointed to by the ProcessInformation
	 *            parameter, in bytes.
	 * 
	 * @param ReturnLength
	 *            A pointer to a variable in which the function returns the size
	 *            of the requested information. If the function was successful,
	 *            this is the size of the information written to the buffer
	 *            pointed to by the ProcessInformation parameter, but if the
	 *            buffer was too small, this is the minimum size of buffer
	 *            needed to receive the information successfully.
	 * 
	 * @return The function returns an NTSTATUS success or error code.
	 */
	/* NTSTATUS */int /* WINAPI */NtQueryInformationProcess(/* _In_ */HANDLE ProcessHandle, /* _In_ *//* PROCESSINFOCLASS */
			int ProcessInformationClass, /* _Out_ */Structure.ByReference ProcessInformation, /* _In_ */ULONG ProcessInformationLength, /* _Out_opt_ */
			ULONGByReference ReturnLength);
	/* NTSTATUS */int /* WINAPI */NtQueryInformationProcess(/* _In_ */HANDLE ProcessHandle, /* _In_ *//* PROCESSINFOCLASS */
			int ProcessInformationClass, /* _Out_ */com.sun.jna.ptr.ByReference ProcessInformation, /* _In_ */ULONG ProcessInformationLength, /* _Out_opt_ */
			ULONGByReference ReturnLength);
	int NtQueryInformation();
}