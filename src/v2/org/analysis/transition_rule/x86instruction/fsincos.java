package v2.org.analysis.transition_rule.x86instruction;

import java.math.BigDecimal;

import v2.org.analysis.complement.Convert;
import v2.org.analysis.path.BPState;
import v2.org.analysis.transition_rule.BigDecimalCalculations;
import v2.org.analysis.transition_rule.stub.X86InstructionStub;
import v2.org.analysis.value.BooleanValue;
import v2.org.analysis.value.DoubleValue;
import v2.org.analysis.value.LongValue;
import v2.org.analysis.value.Value;

public class fsincos extends X86InstructionStub {

	@Override
	public BPState execute() {
		// TODO Auto-generated method stub
		System.out.println("Instruction: " + inst.getName());
		Value st0 = null;
		st0 = env.getFPUregister().getFPURegisterValue("st0");
		
		// ST0 == null
		if (checkOverflow() || st0 == null) {
			env.getFPUregister().FLD(Double.NaN);
			env.getFPUregister().FLD(Double.NaN);
			env.getFST().changeUnderflow();
			changefixFLD();		
			if (checkOverflow()){
				env.getFST().setC1(new BooleanValue(true));
			}
		} else {
			double temp_st0 = ((DoubleValue) st0).getValue();
			// ST0 == NaN
			if (Double.isNaN(temp_st0)) {
				env.getFPUregister().FLD(Double.NaN);				
				env.getFST().setC1(new BooleanValue(false));
				changefixFLD();
			}
			// ST0 = infinity
			else if (Double.isInfinite(temp_st0)) {
				env.getFPUregister().setFPURegisterValue("st0", new DoubleValue(Double.NaN));				
				env.getFPUregister().FLD(Double.NaN);
				env.getFST().setIE(new BooleanValue(true));
				changefixFLD();				
			}
			// ST0 in range (-2^63 to 2^63)
			else if (Math.abs(temp_st0) < Math.abs(Math.pow(2, 63))) {
				env.getFST().setC2(new BooleanValue(false));
				//cos
				double cos = Math.cos(temp_st0);
				env.getFPUregister().setFPURegisterValue("st0", new DoubleValue(cos));			
				BigDecimalCalculations BigDecCalcu = new BigDecimalCalculations();
				BigDecimal angle = new BigDecimal(temp_st0);
				BigDecimal exact_cos = BigDecCalcu.cos(angle, 20);				
				env.getFST().changeResult(cos,exact_cos);				
				//sin
				double sin = Math.sin(temp_st0);
				env.getFPUregister().FLD(sin);						
				BigDecimal exact_sin = BigDecCalcu.sin(angle, 20);				
				env.getFST().changeResult(sin,exact_sin);		
				changefixFLD();				
			}
			// ST0 out range
			else {
				env.getFST().setC2(new BooleanValue(true));
			}
		}
		System.out.println("Value FST: " + Convert.longToHex(env.getFST().getValueFST()));
		return null;
	}
	
	public void changefixFLD(){
		long temp_top;
		Value top = env.getFST().getTOP();
		top = top.evaluate(top.getValueMap());
		temp_top = ((LongValue) top).getValue();		
		env.getFST().changeFLD(temp_top);
	}
	
	public boolean checkOverflow(){	
		int overflow = env.getFST().getOverflow();		
		if (overflow >= 7) {			
			return true;
		} else {
			return false;
		}
	}
	
}
