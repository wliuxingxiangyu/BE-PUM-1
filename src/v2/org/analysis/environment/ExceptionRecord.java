package v2.org.analysis.environment;

import v2.org.analysis.path.BPState;
import v2.org.analysis.value.LongValue;

public class ExceptionRecord {

	private long exception_record_ptr;
	// OTHER FIELDS
	private long ExceptionCode;
	private long ExceptionFlag;
	private long NestedExceptionRecord;
	private long ExceptionAddress;
	private long NumberParameters;
	private long[] AdditionalData;

	public ExceptionRecord() {
	}

	public void setExceptionRecord(BPState curState) {
		this.ExceptionCode = 0xC0000005;
		this.ExceptionFlag = 0;
		this.NestedExceptionRecord = 0;
		this.ExceptionAddress = curState.getLocation().getValue();
		this.NumberParameters = 0;
		long[] ad = { 0, 0 };
		this.AdditionalData = ad;
	}

	public void toStack(BPState curState) {
		curState.getEnvironement().getStack().push(new LongValue(this.AdditionalData[1]));
		curState.getEnvironement().getStack().push(new LongValue(this.AdditionalData[0]));
		curState.getEnvironement().getStack().push(new LongValue(this.NumberParameters));
		curState.getEnvironement().getStack().push(new LongValue(this.ExceptionAddress));
		curState.getEnvironement().getStack().push(new LongValue(this.NestedExceptionRecord));
		curState.getEnvironement().getStack().push(new LongValue(this.ExceptionFlag));
		curState.getEnvironement().getStack().push(new LongValue(this.ExceptionCode));
		this.setException_record_ptr(((LongValue) curState.getEnvironement().getRegister().getRegisterValue("esp"))
				.getValue());
	}

	public long getException_record_ptr() {
		return exception_record_ptr;
	}

	public void setException_record_ptr(long exception_record_ptr) {
		this.exception_record_ptr = exception_record_ptr;
	}
}