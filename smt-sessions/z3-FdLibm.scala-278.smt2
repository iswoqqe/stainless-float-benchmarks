; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1703 () Bool)

(assert start!1703)

(declare-fun b!9033 () Bool)

(declare-datatypes ((array!675 0))(
  ( (array!676 (arr!296 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!296 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!652 0))(
  ( (Unit!653) )
))
(declare-datatypes ((tuple3!186 0))(
  ( (tuple3!187 (_1!232 Unit!652) (_2!232 (_ BitVec 32)) (_3!196 array!675)) )
))
(declare-fun e!4937 () tuple3!186)

(declare-fun lt!4482 () (_ BitVec 32))

(declare-fun lt!4478 () array!675)

(declare-fun Unit!654 () Unit!652)

(assert (=> b!9033 (= e!4937 (tuple3!187 Unit!654 lt!4482 lt!4478))))

(declare-fun b!9034 () Bool)

(declare-fun res!7414 () Bool)

(declare-fun e!4934 () Bool)

(assert (=> b!9034 (=> (not res!7414) (not e!4934))))

(declare-fun f!79 () array!675)

(declare-fun fInv!0 (array!675) Bool)

(assert (=> b!9034 (= res!7414 (fInv!0 f!79))))

(declare-fun b!9035 () Bool)

(declare-fun e!4936 () Bool)

(assert (=> b!9035 (= e!4934 e!4936)))

(declare-fun res!7413 () Bool)

(assert (=> b!9035 (=> (not res!7413) (not e!4936))))

(declare-fun lt!4479 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!9035 (= res!7413 (bvsgt lt!4479 jz!36))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!9035 (= lt!4479 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!9036 () Bool)

(declare-fun res!7402 () Bool)

(assert (=> b!9036 (=> (not res!7402) (not e!4934))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9036 (= res!7402 (Q!0 (select (arr!296 f!79) i!190)))))

(declare-fun b!9037 () Bool)

(declare-fun res!7409 () Bool)

(declare-fun e!4932 () Bool)

(assert (=> b!9037 (=> res!7409 e!4932)))

(assert (=> b!9037 (= res!7409 (not (fInv!0 f!79)))))

(declare-fun b!9038 () Bool)

(declare-fun res!7412 () Bool)

(assert (=> b!9038 (=> (not res!7412) (not e!4934))))

(assert (=> b!9038 (= res!7412 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!9039 () Bool)

(declare-fun e!4933 () Bool)

(assert (=> b!9039 (= e!4933 e!4934)))

(declare-fun res!7405 () Bool)

(assert (=> b!9039 (=> (not res!7405) (not e!4934))))

(assert (=> b!9039 (= res!7405 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4481 () tuple3!186)

(assert (=> b!9039 (= lt!4481 e!4937)))

(declare-fun c!1022 () Bool)

(declare-fun xx!50 () array!675)

(assert (=> b!9039 (= c!1022 (bvsle lt!4482 (bvadd (bvsub (size!296 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9039 (= lt!4482 #b00000000000000000000000000000000)))

(assert (=> b!9039 (= lt!4478 (array!676 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9040 () Bool)

(declare-fun res!7403 () Bool)

(assert (=> b!9040 (=> (not res!7403) (not e!4934))))

(declare-fun q!51 () array!675)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9040 (= res!7403 (P!3 (select (store (arr!296 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000000) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000001) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000010) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000011) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000100) (select (arr!296 f!79) i!190)))) i!190)))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun b!9041 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!675 (_ BitVec 32) array!675) tuple3!186)

(assert (=> b!9041 (= e!4937 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4482 lt!4478))))

(declare-fun b!9042 () Bool)

(declare-fun res!7406 () Bool)

(assert (=> b!9042 (=> (not res!7406) (not e!4934))))

(assert (=> b!9042 (= res!7406 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9043 () Bool)

(assert (=> b!9043 (= e!4936 e!4932)))

(declare-fun res!7417 () Bool)

(assert (=> b!9043 (=> res!7417 e!4932)))

(assert (=> b!9043 (= res!7417 (or (bvsgt #b00000000000000000000000000000000 lt!4479) (bvsgt lt!4479 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun b!9044 () Bool)

(declare-fun res!7408 () Bool)

(assert (=> b!9044 (=> (not res!7408) (not e!4934))))

(assert (=> b!9044 (= res!7408 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9045 () Bool)

(declare-fun qInv!0 (array!675) Bool)

(assert (=> b!9045 (= e!4932 (not (qInv!0 (array!676 (store (arr!296 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000000) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000001) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000010) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000011) (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!296 xx!50) #b00000000000000000000000000000100) (select (arr!296 f!79) i!190)))) (size!296 q!51)))))))

(declare-fun b!9047 () Bool)

(declare-fun res!7404 () Bool)

(assert (=> b!9047 (=> (not res!7404) (not e!4934))))

(assert (=> b!9047 (= res!7404 (bvsle i!190 jz!36))))

(declare-fun b!9048 () Bool)

(declare-fun res!7416 () Bool)

(assert (=> b!9048 (=> (not res!7416) (not e!4934))))

(assert (=> b!9048 (= res!7416 (qInv!0 q!51))))

(declare-fun b!9049 () Bool)

(declare-fun e!4938 () Bool)

(assert (=> b!9049 (= e!4938 e!4933)))

(declare-fun res!7411 () Bool)

(assert (=> b!9049 (=> (not res!7411) (not e!4933))))

(declare-fun lt!4480 () (_ BitVec 32))

(assert (=> b!9049 (= res!7411 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4480 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4480) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9049 (= lt!4480 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9050 () Bool)

(declare-fun res!7415 () Bool)

(assert (=> b!9050 (=> (not res!7415) (not e!4934))))

(assert (=> b!9050 (= res!7415 (Q!0 (select (arr!296 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun res!7407 () Bool)

(assert (=> start!1703 (=> (not res!7407) (not e!4938))))

(assert (=> start!1703 (= res!7407 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1703 e!4938))

(declare-fun array_inv!246 (array!675) Bool)

(assert (=> start!1703 (array_inv!246 f!79)))

(assert (=> start!1703 (array_inv!246 q!51)))

(assert (=> start!1703 true))

(assert (=> start!1703 (array_inv!246 xx!50)))

(declare-fun b!9046 () Bool)

(declare-fun res!7410 () Bool)

(assert (=> b!9046 (=> (not res!7410) (not e!4938))))

(declare-fun xxInv!0 (array!675) Bool)

(assert (=> b!9046 (= res!7410 (xxInv!0 xx!50))))

(assert (= (and start!1703 res!7407) b!9046))

(assert (= (and b!9046 res!7410) b!9049))

(assert (= (and b!9049 res!7411) b!9039))

(assert (= (and b!9039 c!1022) b!9041))

(assert (= (and b!9039 (not c!1022)) b!9033))

(assert (= (and b!9039 res!7405) b!9034))

(assert (= (and b!9034 res!7414) b!9048))

(assert (= (and b!9048 res!7416) b!9047))

(assert (= (and b!9047 res!7404) b!9042))

(assert (= (and b!9042 res!7406) b!9044))

(assert (= (and b!9044 res!7408) b!9050))

(assert (= (and b!9050 res!7415) b!9038))

(assert (= (and b!9038 res!7412) b!9036))

(assert (= (and b!9036 res!7402) b!9040))

(assert (= (and b!9040 res!7403) b!9035))

(assert (= (and b!9035 res!7413) b!9043))

(assert (= (and b!9043 (not res!7417)) b!9037))

(assert (= (and b!9037 (not res!7409)) b!9045))

(declare-fun m!14767 () Bool)

(assert (=> b!9038 m!14767))

(assert (=> b!9038 m!14767))

(declare-fun m!14769 () Bool)

(assert (=> b!9038 m!14769))

(declare-fun m!14771 () Bool)

(assert (=> b!9034 m!14771))

(declare-fun m!14773 () Bool)

(assert (=> b!9040 m!14773))

(declare-fun m!14775 () Bool)

(assert (=> b!9040 m!14775))

(declare-fun m!14777 () Bool)

(assert (=> b!9040 m!14777))

(assert (=> b!9040 m!14767))

(declare-fun m!14779 () Bool)

(assert (=> b!9040 m!14779))

(declare-fun m!14781 () Bool)

(assert (=> b!9040 m!14781))

(declare-fun m!14783 () Bool)

(assert (=> b!9040 m!14783))

(declare-fun m!14785 () Bool)

(assert (=> b!9040 m!14785))

(declare-fun m!14787 () Bool)

(assert (=> b!9040 m!14787))

(declare-fun m!14789 () Bool)

(assert (=> b!9040 m!14789))

(declare-fun m!14791 () Bool)

(assert (=> b!9040 m!14791))

(declare-fun m!14793 () Bool)

(assert (=> b!9040 m!14793))

(assert (=> b!9040 m!14787))

(declare-fun m!14795 () Bool)

(assert (=> b!9040 m!14795))

(assert (=> b!9050 m!14785))

(assert (=> b!9050 m!14785))

(declare-fun m!14797 () Bool)

(assert (=> b!9050 m!14797))

(assert (=> b!9044 m!14775))

(assert (=> b!9044 m!14775))

(declare-fun m!14799 () Bool)

(assert (=> b!9044 m!14799))

(declare-fun m!14801 () Bool)

(assert (=> start!1703 m!14801))

(declare-fun m!14803 () Bool)

(assert (=> start!1703 m!14803))

(declare-fun m!14805 () Bool)

(assert (=> start!1703 m!14805))

(assert (=> b!9045 m!14773))

(assert (=> b!9045 m!14775))

(assert (=> b!9045 m!14777))

(assert (=> b!9045 m!14785))

(assert (=> b!9045 m!14767))

(assert (=> b!9045 m!14781))

(assert (=> b!9045 m!14793))

(assert (=> b!9045 m!14783))

(declare-fun m!14807 () Bool)

(assert (=> b!9045 m!14807))

(assert (=> b!9045 m!14779))

(assert (=> b!9045 m!14789))

(assert (=> b!9045 m!14791))

(declare-fun m!14809 () Bool)

(assert (=> b!9041 m!14809))

(declare-fun m!14811 () Bool)

(assert (=> b!9046 m!14811))

(assert (=> b!9037 m!14771))

(assert (=> b!9042 m!14773))

(assert (=> b!9042 m!14773))

(declare-fun m!14813 () Bool)

(assert (=> b!9042 m!14813))

(declare-fun m!14815 () Bool)

(assert (=> b!9048 m!14815))

(assert (=> b!9036 m!14793))

(assert (=> b!9036 m!14793))

(declare-fun m!14817 () Bool)

(assert (=> b!9036 m!14817))

(check-sat (not b!9041) (not start!1703) (not b!9048) (not b!9037) (not b!9050) (not b!9045) (not b!9040) (not b!9038) (not b!9046) (not b!9036) (not b!9034) (not b!9042) (not b!9044))
(check-sat)
