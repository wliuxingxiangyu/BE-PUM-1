package v2.org.analysis.transition_rule.x86instruction;

import v2.org.analysis.path.BPState;
import v2.org.analysis.transition_rule.stub.X86InstructionStub;
import v2.org.analysis.value.BooleanValue;
import v2.org.analysis.value.DoubleValue;
import v2.org.analysis.value.Value;

public class fchs extends X86InstructionStub {

	@Override
	public BPState execute() {
		// TODO Auto-generated method stub
		//System.out.println("Instruction: " + inst.getName());		
		if (((BooleanValue) env.getFST().getC1()).getValue()) {
			env.getFST().setC1(new BooleanValue(false));
		} else {
			Value st0 = env.getFPUregister().getFPURegisterValue("st0");		
			double t_st0 = ((DoubleValue) st0).getValue();			
			if (t_st0 > 0.0) {
				t_st0 = 0 - t_st0;
				env.getFPUregister().setFPURegisterValue("st0", new DoubleValue(t_st0));
			}
			else {
				t_st0 = Math.abs(t_st0);
				env.getFPUregister().setFPURegisterValue("st0", new DoubleValue(t_st0));
			}			
		}		
		return null;
	}

}
