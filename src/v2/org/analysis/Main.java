/*
 * Main.java - This file is part of the Jakstab project.
 * Copyright 2007-2012 Johannes Kinder <jk@jakstab.org>
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, see <http://www.gnu.org/licenses/>.
 */

package v2.org.analysis;

import antlr.ANTLRException;

import com.sun.jna.WString;

import v2.org.analysis.apihandle.winapi.kernel32.Kernel32DLL;

import org.jakstab.Algorithm;
import org.jakstab.Options;
import org.jakstab.Program;
import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.loader.BinaryParseException;
import org.jakstab.loader.DefaultHarness;
import org.jakstab.loader.HeuristicHarness;
import org.jakstab.ssl.Architecture;
import org.jakstab.util.Characters;
import org.jakstab.util.Logger;

import v2.org.analysis.algorithm.OTFModelGeneration;
import v2.org.analysis.cfg.BPCFG;
import v2.org.analysis.statistics.FileProcess;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class Main {

	private static Logger logger = Logger.getLogger(Main.class);

	private final static String version = "2.0";

	private static volatile Algorithm activeAlgorithm;
	private static volatile Thread mainThread;

	public static String[] SplitUsingTokenizer(String Subject, String Delimiters) {
		StringTokenizer StrTkn = new StringTokenizer(Subject, Delimiters);
		ArrayList<String> ArrLis = new ArrayList<String>(Subject.length());
		while (StrTkn.hasMoreTokens()) {
			ArrLis.add(StrTkn.nextToken());
		}
		return ArrLis.toArray(new String[0]);
	}

	/*
	 * public static void main(String[] args) { //Main m = new Main(); String
	 * fileName = "asm/sefm14/pony1.exe"; Main.process("-m " + fileName); }
	 */

	public static void main(String[] args) {
		mainThread = Thread.currentThread();

		// StatsTracker stats = StatsTracker.getInstance();

		// Parse command line
		// System.out.print("Enter file name:");
		System.out.print("Enter file name:");
		String in = "";
		String pathVirus = "";
		// Path Virus
		// pathVirus = "asm/sefm14/";
		pathVirus = "asm/api/";
		// pathVirus = "asm/APLAS14/";
		// pathVirus = "asm/virus/";
		pathVirus = "asm/packer/";
		// pathVirus = "D:/Temp/Test_week_6/";
		// pathVirus = "asm/mcvecto/";
		//pathVirus = "asm/vx.netlux.org/";
		// pathVirus = "C:/Software/Virus/API/";
		// pathVirus = "asm/WindowsXP/";
		// pathVirus = "asm/demo1/";
		// pathVirus = "asm/Test-case/";
		// pathVirus = "E:/masm32/myasm/TestCase/";

		// Virus Name
		in = "Rootkit.Win32.Agent.h";
		in = "Virus.Win32.Seppuku.4827"; // Giai quyet tiep
		in = "Virus.Win32.Wit.b"; // Convergence
		in = "Virus.Win32.Htrip.b";
		in = "Backdoor.Linux.Subsevux.b";
		in = "DoS.Win32.Anon.09";
		in = "Email-Worm.Win32.Bagle.aa";
		in = "Flooder.Win32.Agent.m";
		in = "Email-Worm.Win32.Bagle.ag";
		in = "cmd.exe";
		in = "Backdoor.Win32.RtKit.10.a";
		in = "Email-Worm.Win32.Bagle.af";
		in = "Email-Worm.Win32.Bagle.ag";
		in = "Email-Worm.Win32.Bagle.aj";
		in = "Email-Worm.Win32.Bagle.ak";
		in = "Email-Worm.Win32.Bagle.am";
		in = "Email-Worm.Win32.Bagle.as";
		in = "Email-Worm.Win32.Plexus.c";
		in = "Flooder.Win32.Agent.m";
		in = "Virus.Win32.Belial.2537";
		in = "Virus.Win32.Cabanas.a";
		in = "Virus.Win32.Cabanas.b";
		in = "Virus.Win32.Cabanas.c";
		in = "Virus.Win32.Cabanas.Release";
		in = "Virus.Win32.Seppuku.1606";
		in = "Virus.Win32.Wit.b";
		in = "Exploit.Linux.Rpc.e";
		in = "Virus.Win32.Anuir.a";
		in = "Virus.Win32.Awfull.2376";
		in = "Virus.Win32.Champ";
		in = "Virus.Win32.Champ.5430";
		in = "Virus.Win32.Brof.a";
		// in = "Virus.Win32.Brof.b";
		in = "Virus.Win32.Seppuku.1606";// Tim gia tri cua EDI
		// in = "Flooder.Win32.AngryPing";

		in = "Email-Worm.Win32.Coronex.a"; // 107 112
		// Xu li Top
		in = "Trojan-PSW.Win32.QQRob.16.d"; // 33 33 Thieu duong kha nhieu
		in = "Virus.Win32.Aidlot"; // 76 76 Chua xu li ret tai 0x004010af
		in = "Virus.Win32.Belial.a"; // 113 117 Gan bang voi ket qua ban dau
		in = "Virus.Win32.Belial.b"; // 123 127 Gan bang voi ket qua ban dau
		in = "Virus.Win32.Belial.d"; // 151 155 Gan bang voi ket qua ban dau
		in = "Virus.Win32.Benny.3219.a"; // 29 32 Qua thap
		in = "Virus.Win32.Benny.3219.b"; // 29 32 Qua thap
		in = "Virus.Win32.Benny.3223"; // 29 32 Qua thap
		in = "Virus.Win32.Bogus.4096"; // 87 97 Bang ket qua ban dau
		in = "Virus.Win32.Brof.a"; // 44 44 Thap Chua xu li loop tai 4012e5
		in = "Virus.Win32.Cerebrus.1482"; // 24 26 Qua Thap
		in = "Virus.Win32.Compan.a"; // 19 19
		in = "Virus.Win32.Compan.b"; // 15 15
		in = "Virus.Win32.Cornad"; // 93 97 Gan bang
		in = "Virus.Win32.Eva.a"; // 130 136 Chua xu li xong RET
		in = "Virus.Win32.Eva.b"; // 130 136 Chua xu li xong RET
		in = "Virus.Win32.Eva.c"; // 130 136 Chua xu li xong RET
		in = "Virus.Win32.Eva.d"; // 128 134 Chua xu li xong RET
		in = "Virus.Win32.Eva.e"; // 150 156 Chua xu li xong RET
		in = "Virus.Win32.Eva.f"; // 9 9 Chua xu li xong RET
		in = "Virus.Win32.Eva.g"; // 9 9 Chua xu li xong RET
		in = "Virus.Win32.Htrip.a"; // 5 5
		// in = "Virus.Win32.Htrip.b"; // 5 5
		// in = "Virus.Win32.Htrip.d"; // 5 5
		// in = "Virus.Win32.Seppuku.1606"; // 30 29
		// in = "Virus.Win32.Wit.a"; // 16 17
		// in = "Virus.Win32.Wit.b"; // 4 4 Xu li loop
		// in = "Virus.Win9x.I13.b"; // 26 26
		// in = "Virus.Win9x.I13.c"; // 27 27
		// in = "Virus.Win9x.I13.f"; // 31 31
		// in = "Virus.Win9x.I13.h"; // 30 30

		// in = "Virus.Win32.Cabanas.2999"; // 223 238
		// SMC at 0x004048d5
		// in = "Virus.Win32.Benny.3219.a"; // 209 224
		// in = "selfModifyCode7.exe";

		// in = "seh.exe";
		in = "Virus.Win32.Wanex"; // 161 174
		in = "Virus.Win32.Wanhope.1357"; // 232 236
		in = "Virus.Win32.Warray"; // 282 274 Converge
		in = "Virus.Win32.Watcher.a"; // 152 152
		in = "Virus.Win32.Wide.8238"; // 20 20
		in = "Virus.Win32.Undertaker.5036.a"; // 112 113
		in = "Virus.Win9x.Luna.2636"; // 29 29
		in = "Virus.Win32.VCell.3041";
		in = "Virus.Win32.Zevity"; // 119 119
		in = "Virus.Win9x.Harry.a"; // 30 30
		in = "Virus.Win9x.Hooy.8192"; // 78 90

		in = "Virus.Win32.Cabanas.2999"; // 220 233
		in = "Virus.Win32.Auryn.1157"; // Truy cap vao dia chi B7FF0000;
										// Kernel32 cua Win9x 2058 2058
		in = "Worm.Win32.Heher.j"; // 265 250
		in = "Virus.Win32.HLLW.Selfoner"; // 61 61
		in = "Worm.Win32.Delf.w"; // 375 390
		in = "Virus.Win32.Pesin.a"; // 376 390
		in = "Virus.Win32.Tiniresu.a"; // 267 275
		// in = "Email-Worm.Win32.Kickin.d"; // 54 54
		// in = "Email-Worm.Win32.Kindal"; // 74 74
		in = "Virus.Win32.Adson.1703.b";
		in = "Virus.Win32.Jolla.a";
		in = "Email-Worm.Win32.Kipis.r";
		in = "Email-Worm.Win32.Klez.h";
		in = "Email-Worm.Win32.Lama";
		in = "Virus.Win32.Stupid.b"; // 154 151
		in = "Email-Worm.Win32.Kergez.a"; // 54 49
		in = "Constructor.Win32.A2Vbs.a";
		in = "Email-Worm.Win32.Lassorm";
		in = "Email-Worm.Win32.Locksky.r";

		in = "Virus.Win32.Aztec.01"; // 265 282 4s x
		// in = "Email-Worm.Win32.Coronex.a"; // 231 245 x
		// 244 260 with MAX_LOOP = 50
		// in = "Trojan-PSW.Win32.QQRob.16.d"; // 104 121
		// in = "Virus.Win32.Belial.a"; //130 135 0.5
		// in = "Virus.Win32.Cabanas.2999"; // 407 421 67s x
		in = "Net-Worm.Win32.Sasser.a"; // 309 323 263s ?
		// in = "Virus.Win32.Adson.1559"; // 155 167 x
		// 178 195 Covergence
		// in = "Virus.Win32.Adson.1651"; // 191 213 2s
		// in = "Virus.Win32.Adson.1734"; // 181 198
		// in = "Virus.Win32.Adson.1703"; // 172 189
		in = "Virus.Win32.Benny.3219.a"; // 231 251 125s; 110 117 0.1s x
		in = "Virus.Win32.Seppuku.1606"; // 41 40 0.3s
		// in = "Email-Worm.Win32.Klez.a"; // 347 351 25s x
		// in = "Email-Worm.Win32.Avron.a"; // 81 81 0.1s

		// ICFEM
		in = "Worm.Win32.Deborm.ah"; // Fail due to MOVS with too high loop SEH
		//in = "Virus.Win32.HLLO.Momac.a"; // Fail due to MOVS with too high loop
		//in = "Virus.Win32.Donut"; // 4542 4543 truy cap 77e60000
		//in = "Email-Worm.Win32.Atak.e"; // 5654 5653 2
		//in = "Email-Worm.Win32.Atak.c"; // 6132 6131 2
		//in = "Email-Worm.Win32.Kipis.p"; // 40 41 Done
		//in = "Worm.Win32.Leebad.a"; // 206 209; 49 48 0.7s
		//in = "Email-Worm.Win32.Bagle.am"; // loop too long
		//in = "Virus.Win32.ZMist"; // 158 190 0.9s x
		//in = "Virus.Win32.Henky.772.b"; // 16 16 0.5
		//in = "Virus.Win32.Champ.5495"; // 1057 1105 285 825 865 576s
		//in = "Email-Worm.Win32.Navidad.b"; // 639 688 7161 x
		//in = "Email-Worm.Win32.Nohoper.7397"; // 746 741 165 x 648 671
		//in = "Email-Worm.Win32.Apbost.c"; // 317 345 SEH
		//in = "Email-Worm.Win32.Mydoom.az"; // 952 981 47s
		//in = "Email-Worm.Win32.Zeynep.j"; // 442 470 317s
		//in = "Virus.Win32.Cabanas.2999"; // 385 404 45s;

		//Windows
		// in = "cmd.exe"; // 484 493 273s
		// in = "systray.exe"; // 146 134
		// in = "regedt32.exe"; // 59 64 Done
		// in = "actmovie.exe"; //167 173
		// in = "nddeapir.exe"; // 167 173 1s
		// in = "calc.exe"; // 361 380 12s
		// in = "fixmapi.exe"; // 43 45 0.2 19 18 0.1
		// in = "demo2.exe";
		// in = "multiDemo.exe";

		// in = "demo2.exe";
		// in = "Packed_IczEdit.exe";

		// Undone
		//in = "api_test_pelock.exe";
		//in = "api_test_pespin.exe";
		//in = "api_test_upack.exe"; // Header
		//in = "api_test_mew.exe"; // Header
		//in = "api_test_mpess.exe"; // 149 166 50
		// in = "demo1_fastpack.exe"; // 47 49 98s
		// in = "api_test_armadillo.exe";
		// in = "api_test_asprotect.exe";
		// in = "api_test_thermida.exe";
		// in = "api_test_vmprotect.exe"; // 488 532 456s
		// 466 504

		// Done
		// in = "api_test.exe"; // 158 160 0.1s x
		//in = "api_test_upx.exe"; // 323 353 21s x
		//in = "api_test_fsg.exe"; // 244 268 5s x
		//in = "api_test_pecompact.exe"; // 1127 1178 35s x
		//in = "api_test_npack.exe"; // 602 639 10s x
		//in = "api_test_yoda.1.2.exe"; // 622 659 80s x
		//in = "api_test_yoda.1.3.exe"; // 909 945 54s x
		//in = "api_test_petite_2.3.exe"; //1569 1637 115s x
		//in = "api_test_aspack.exe"; // 1047 1112 101s x

		// in = "api_test_yoda.exe"; // 962 1038 257s
		//in = "api_test_v2.3_lvl1.exe"; // 879 887 165

		// in = "Virus.Win32.Aztec.01"; // 312 330 Done

		// in = "hostname.exe"; // 291 306 6s x
		// in = "hostname_upx.exe"; // 339 365 12s 425 461 40 x
		// in = "hostname_fsg.exe"; // 379 414 172s x

		// in = "Virus.Win32.Aztec_upx.01"; // 379 410 80s x
		// in = "Virus.Win32.Aztec.01"; // 265 282 4s x

		// in = "ws2_32_upx.exe"; // 139 160 60s
		// in = "ws2_32_fsg.exe"; // 113 132 130s
		// in = "ws2_32.exe"; // 258 261 1s

		// in = "original.exe";
		// in = "original_upx.exe";
		// in = "original_fsg.exe"; // 309 329 417s

		// in = "helloworld.exe"; // 144 153 10s
		// in = "helloworld_upack.exe"; // Header destroyed
		// in = "helloworld_fastpack.exe"; // 144 153 0.5

		// in = "messagebox.exe"; // 11 10 0.1 x
		// in = "messagebox_mew.exe";
		// in = "messagebox_mpress.exe";

		// in = "demo1.exe"; // 13405 13404 10s x
		// in = "demo1_upx.exe"; // 13563 13583 493s x
		// in = "demo1_fsg.exe"; // 13493 13510 226s x
		// in = "demo1_upack.exe"; //
		// in = "demo1_fastpack.exe"; // 47 49 98s
		// in = "demo1_asprotect.exe";

		// in = "demo2.exe"; // 8707 8706 5s x
		// in = "demo2_upx.exe"; // 8867 8887 260s x
		// in = "demo2_fsg.exe"; // 8795 8812 116 x

		// in = "iexplore_themida.exe";

		// in = "movsb.exe";
		// in = "BASECALC.EXE";

		// in = "bsf_Test_1.exe";
		// in = "shrd_1.exe";
		// in = "bsr.exe";
		// in = "shld_1.exe";
		// in = "aam.exe";
		// Test-case
		// in = "memory.exe";
		// in = args[0];
		// System.out.println(in);
		// pathVirus = "asm/packer/";
		// in = "api_test_pecompact.exe";

		// pathVirus = "asm/api/";
		// pathVirus = "asm/virus/";
		// in = "Virus.Win32.Aztec.01"; // 265 281 113182ms => 324 files

		//pathVirus = "asm/testcase/";
		//in = "test.exe";

		System.out.println(pathVirus + in);
		analyzeFile(pathVirus + in);
	}

	private static void runAlgorithm(Algorithm a) {
		activeAlgorithm = a;
		a.run();
		activeAlgorithm = null;
	}

	private static String getBaseFileName(File file) {
		String baseFileName = file.getAbsolutePath();
		// Get name of the analyzed file without file extension if it has one
		if (file.getName().contains(".")) {
			int dotIndex = file.getPath().lastIndexOf('.');
			if (dotIndex > 0) {
				// baseFileName = file.getPath().substring(0, dotIndex);
			}
		}
		return baseFileName;
	}

	public static void analyzeFile(String file) {
		// TODO Auto-generated method stub
		mainThread = Thread.currentThread();

		String[] arg = SplitUsingTokenizer("-m " + file, " ");
		// String[] arg = SplitUsingTokenizer(pathFile, " ");
		// String[] arg = SplitUsingTokenizer("-s -m asm/chosenFile/processing/"
		// + in, " ");
		Options.parseOptions(arg);
		// Options.parseOptions(in.next().split(" "));

		logger.info(Characters.DOUBLE_LINE_FULL_WIDTH);
		logger.info("                         Jakstab " + version);
		logger.info(Characters.DOUBLE_LINE_FULL_WIDTH);

		logger.error("Start analyzing file with BE-PUM");

		// ///////////////////////
		// Parse SSL file

		Architecture arch;
		try {
			arch = new Architecture(Options.sslFilename.getValue());
			// arch = new Architecture(fName.next());
		} catch (IOException e) {
			logger.fatal("Unable to open SSL file!", e);
			return;
		} catch (ANTLRException e) {
			logger.fatal("Error parsing SSL file!", e);
			return;
		}

		// ///////////////////////
		// Parse executable

		Program program = Program.createProgram(arch);
		program.setDebugLevel(3);

		File mainFile = new File(Options.mainFilename).getAbsoluteFile();

		String baseFileName = null;
		long overallStartTime = System.currentTimeMillis();
		try {
			// Load additional modules
			for (String moduleName : Options.moduleFilenames) {
				logger.fatal("Parsing " + moduleName + "...");
				File moduleFile = new File(moduleName).getAbsoluteFile();
				program.loadModule(moduleFile);

				// If we are processing drivers, use the driver's name as base
				// name
				if (Options.wdm.getValue() && moduleFile.getName().toLowerCase().endsWith(".sys")) {
					baseFileName = getBaseFileName(moduleFile);
				}
			}
			// Load main module last
			logger.error("Parsing main module " + Options.mainFilename + "...");
			program.loadMainModule(mainFile);

			// Use main module as base name if we have none yet
			// reserved for drivers, ignore
			if (baseFileName == null)
				baseFileName = getBaseFileName(mainFile);
			program.setAbsolutePathFile(baseFileName);
		} catch (FileNotFoundException e) {
			logger.fatal("File not found: " + e.getMessage());
			return;
		} catch (IOException e) {
			logger.fatal("IOException while parsing executable!", e);
			// e.printStackTrace();
			return;
		} catch (BinaryParseException e) {
			logger.fatal("Error during parsing!", e);
			// e.printStackTrace();
			return;
		}
		logger.info("Finished parsing executable.");

		// Change entry point if requested
		if (Options.startAddress.getValue() > 0) {
			logger.verbose("Setting start address to 0x" + Long.toHexString(Options.startAddress.getValue()));
			program.setEntryAddress(new AbsoluteAddress(Options.startAddress.getValue()));
		}

		// Add surrounding "%DF := 1; call entrypoint; halt;"
		program.installHarness(Options.heuristicEntryPoints.getValue() ? new HeuristicHarness() : new DefaultHarness());

		// stats.record(baseFileName.substring(slashIdx));
		// stats.record(version);

		// StatsPlotter.create(baseFileName + "_states.dat");
		// StatsPlotter.plot("#Time(ms)\tStates\tInstructions\tGC Time\tSpeed(st/s)");

		// Catches control-c and System.exit
		Thread shutdownThread = new Thread() {
			@Override
			public void run() {
				if (mainThread.isAlive() && activeAlgorithm != null) {
					// stop = true; // Used for CFI checks
					activeAlgorithm.stop();
					try {
						mainThread.join();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}
		};
		Runtime.getRuntime().addShutdownHook(shutdownThread);

		// Add shutdown on return pressed for eclipse
		if (!Options.background.getValue() && System.console() == null) {
			logger.info("No console detected (eclipse?). Press return to terminate analysis and print statistics.");
			Thread eclipseShutdownThread = new Thread() {
				public void run() {
					try {
						System.in.read();
					} catch (IOException e) {
						e.printStackTrace();
					}
					System.exit(1);
				}
			};
			// yices.dll blocks for input on load for some reason, so load it
			// before we start reading from System.in
			// If you are having problems with that, uncomment the next line
			// org.jakstab.solver.yices.YicesWrapper.getVersion();
			eclipseShutdownThread.start();
		}

		// Necessary to stop shutdown thread on exceptions being thrown
		try {

			// ///////////////////////
			// On-the-fly Model Generation
			OTFModelGeneration otfMG = new OTFModelGeneration(program);
			// long customTime = System.currentTimeMillis();
			// Execute the algorithm
			try {
				runAlgorithm(otfMG);
			} catch (RuntimeException r) {
				logger.error("!! Runtime exception during Control Flow Reconstruction! Trying to shut down gracefully.");
				r.printStackTrace();
			}
			// long overallEndTime = System.currentTimeMillis();
			// ProgramGraphWriter graphWriter = new ProgramGraphWriter(program);

			if (!otfMG.isCompleted()) {
				System.out.println(Characters.starredBox("WARNING: Analysis interrupted, CFG might be incomplete!"));
			} else
				System.out.println(Characters.starredBox("Analysis finished, CFG is complete!"));

			if (!otfMG.isSound()) {
				logger.error(Characters.starredBox("WARNING: Analysis was unsound!"));
			}
			program.generageCFG(baseFileName);
			BPCFG cfg = program.getBPCFG();

			long overallEndTime = System.currentTimeMillis();
			System.out.println(Characters.DOUBLE_LINE_FULL_WIDTH);
			System.out.println("   Statistics for On-The-Fly Model Generation of BE-PUM");
			System.out.println(Characters.DOUBLE_LINE_FULL_WIDTH);
			System.out.println("   Filename:                     " + program.getFileName());
			System.out.println("   Runtime:                     "
					+ String.format("%8dms", (overallEndTime - overallStartTime)));
			System.out.println("   Instructions:                        "
					+ String.format("%8d", cfg.getInstructionCount()));
			System.out.println("   Nodes:                        " + String.format("%8d", cfg.getVertexCount()));
			System.out.println("   Edges:                        " + String.format("%8d", cfg.getEdgeCount()));
			FileProcess fullResultFile = program.getFullResultFile();

			Kernel32DLL.INSTANCE.SetCurrentDirectory(new WString(System.getProperty("user.dir")));
			fullResultFile.appendFile(Characters.DOUBLE_LINE_FULL_WIDTH);
			fullResultFile.appendFile("   Statistics for On-The-Fly Model Generation of BE-PUM");
			fullResultFile.appendFile(Characters.DOUBLE_LINE_FULL_WIDTH);
			fullResultFile.appendFile("   Filename:                     " + program.getFileName());
			fullResultFile.appendFile("   Runtime:                     "
					+ String.format("%8dms", (overallEndTime - overallStartTime)));
			fullResultFile.appendFile("   Instructions:                        "
					+ String.format("%8d", cfg.getInstructionCount()));
			fullResultFile.appendFile("   Nodes:                        " + String.format("%8d", cfg.getVertexCount()));
			fullResultFile.appendFile("   Edges:                        " + String.format("%8d", cfg.getEdgeCount()));

			FileProcess resultFile = program.getResultFile();
			resultFile.appendFile(program.getFileName() + "\t"
					+ String.format("%8dms", (overallEndTime - overallStartTime)) + "\t"
					+ String.format("%8d", cfg.getVertexCount()) + "\t" + String.format("%8d", cfg.getEdgeCount())
					+ "\t" + program.getTechnique() + "\t" + program.getDetailTechnique());

			program.getResultFileTemp().appendInLine(program.getDetailTechnique());
			program.getResultFileTemp().appendInLine(
					'\t' + String.format("%8dms", (overallEndTime - overallStartTime)) + "\t"
							+ String.format("%8d", cfg.getVertexCount()) + "\t"
							+ String.format("%8d", cfg.getEdgeCount()));

			// Comparison between IDA and BE-PUM
			// String f = program.generatePathFileName(baseFileName);
			// new DOTComparison().exportComparison(baseFileName);

			try {
				Runtime.getRuntime().removeShutdownHook(shutdownThread);
				System.exit(0);
			} catch (IllegalStateException e) {
				// Happens when shutdown has already been initiated by Ctrl-C or
				// Return
				// e.printStackTrace();
			}
		} catch (Throwable e) {
			System.out.flush();
			e.printStackTrace();
			Runtime.getRuntime().removeShutdownHook(shutdownThread);
			// Kills eclipse shutdown thread
			System.exit(1);
		}
	}

}