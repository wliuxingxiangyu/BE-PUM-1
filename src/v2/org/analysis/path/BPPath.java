/**
 * 
 */
package v2.org.analysis.path;

import org.jakstab.asm.AbsoluteAddress;
import v2.org.analysis.loop.LoopHandle;
import v2.org.analysis.value.Formulas;

import java.util.ArrayList;
import java.util.List;

/**
 * @author NMHai
 * 
 */

public class BPPath {
	private BPState curState;
	private PathList trace;
	private Formulas pathCondition;
	private LoopHandle l;
	private List<ProcessedAPI> processedAPI;
	private boolean isStop = false;
		
	private class ProcessedAPI {
		private String apiName; 
		private byte processedWay;
		
		public ProcessedAPI(String api, byte way) {
			this.apiName = api;
			this.processedWay = way;
		}
		/**
		 * @return the apiName
		 */
		public String getApiName() {
			return apiName;
		}
		
		/**
		 * @return the processedWay
		 */
		public byte getProcessedWay() {
			return processedWay;
		}
		/**
		 * @param processedWay the processedWay to set
		 */
		public void setProcessedWay(byte processedWay) {
			this.processedWay = processedWay;
		}
	}

	/**
	 * @param curState
	 * @param trace
	 * @param pathCondition
	 */
	public BPPath(BPState state, PathList trace, Formulas pathCondition) {
		super();
		this.curState = state;
		this.trace = trace;
		this.pathCondition = pathCondition;		
		processedAPI = new ArrayList<ProcessedAPI>();
		l = new LoopHandle();
	}

	public BPState getCurrentState() {
		return curState;
	}

	public void setCurrentState(BPState curState) {	
		this.curState = curState;		
	}

	public PathList getTrace() {
		return trace;
	}

	public void setTrace(PathList trace) {
		this.trace = trace;
	}

	public Formulas getPathCondition() {
		return pathCondition;
	}	
	
	public void setPathCondition(Formulas pathCondition) {
		this.pathCondition = pathCondition;
	}

	public BPPath clone() {
		BPPath ret = new BPPath(curState.clone(), trace.clone(), pathCondition.clone());
		
		List<ProcessedAPI> p = new ArrayList<ProcessedAPI>();
		for (ProcessedAPI t: this.processedAPI) {
			p.add(new ProcessedAPI(t.getApiName(), t.getProcessedWay()));
		}
		ret.setLoopHandle(l.clone());
		ret.setProcessedAPI(p);
		
		return ret;
	}
	
	public void insertProcessedAPI(String name, byte way) {
		for (ProcessedAPI t: this.processedAPI) {
			if (t.getApiName().equals(name)) {
				t.setProcessedWay(way);
				return;
			}
		}
		
		this.processedAPI.add(new ProcessedAPI(name, way));
	}
	
	public boolean containAPI(String name) {
		for (ProcessedAPI t: this.processedAPI) {
			if (t.getApiName().equals(name))
				return true;
		}
		
		return false;	
	}
	
	public byte getAPIWay(String name) {
		for (ProcessedAPI t: this.processedAPI) {
			if (t.getApiName().equals(name))
				return t.getProcessedWay();
		}
		
		return 0;
	}

	private void setProcessedAPI(List<ProcessedAPI> p) {
		// TODO Auto-generated method stub
		this.processedAPI = p;
	}

	public void addTrace(AbsoluteAddress addr) {
		if (addr != null)
			trace.add(addr.getValue());
	}

	public AbsoluteAddress getTrace(int index) {
		return new AbsoluteAddress(trace.get(index));
	}

	public int lengthTrace() {
		return trace.length();
	}	
	
	public void destroy() {
		// TODO Auto-generated method stub
		// curState.
	}

	public boolean isStop() {
		// TODO Auto-generated method stub
		return isStop;
	}
	
	public void setStop(boolean b) {
		isStop = b;
	}

	public LoopHandle getLoopHandle() {
		// TODO Auto-generated method stub
		return l;
	}
	
	public void setLoopHandle(LoopHandle t) {
		l = t;
	}
}
