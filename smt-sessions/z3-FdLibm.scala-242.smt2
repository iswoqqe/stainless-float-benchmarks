; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1425 () Bool)

(assert start!1425)

(declare-fun b!7085 () Bool)

(declare-fun e!3771 () Bool)

(declare-fun e!3770 () Bool)

(assert (=> b!7085 (= e!3771 e!3770)))

(declare-fun res!5817 () Bool)

(assert (=> b!7085 (=> (not res!5817) (not e!3770))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7085 (= res!5817 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((array!583 0))(
  ( (array!584 (arr!260 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!260 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!477 0))(
  ( (Unit!478) )
))
(declare-datatypes ((tuple3!114 0))(
  ( (tuple3!115 (_1!176 Unit!477) (_2!176 (_ BitVec 32)) (_3!157 array!583)) )
))
(declare-fun lt!3631 () tuple3!114)

(declare-fun e!3773 () tuple3!114)

(assert (=> b!7085 (= lt!3631 e!3773)))

(declare-fun lt!3630 () (_ BitVec 32))

(declare-fun c!845 () Bool)

(declare-fun xx!50 () array!583)

(assert (=> b!7085 (= c!845 (bvsle lt!3630 (bvadd (bvsub (size!260 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7085 (= lt!3630 #b00000000000000000000000000000000)))

(declare-fun lt!3632 () array!583)

(assert (=> b!7085 (= lt!3632 (array!584 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7086 () Bool)

(declare-fun res!5814 () Bool)

(assert (=> b!7086 (=> (not res!5814) (not e!3770))))

(declare-fun f!79 () array!583)

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!7086 (= res!5814 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun res!5819 () Bool)

(declare-fun e!3775 () Bool)

(assert (=> start!1425 (=> (not res!5819) (not e!3775))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1425 (= res!5819 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1425 e!3775))

(declare-fun array_inv!210 (array!583) Bool)

(assert (=> start!1425 (array_inv!210 f!79)))

(declare-fun q!51 () array!583)

(assert (=> start!1425 (array_inv!210 q!51)))

(assert (=> start!1425 true))

(assert (=> start!1425 (array_inv!210 xx!50)))

(declare-fun b!7087 () Bool)

(declare-fun res!5810 () Bool)

(assert (=> b!7087 (=> (not res!5810) (not e!3770))))

(assert (=> b!7087 (= res!5810 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!7088 () Bool)

(declare-fun res!5808 () Bool)

(assert (=> b!7088 (=> (not res!5808) (not e!3770))))

(declare-fun fInv!0 (array!583) Bool)

(assert (=> b!7088 (= res!5808 (fInv!0 f!79))))

(declare-fun b!7089 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!583 (_ BitVec 32) array!583) tuple3!114)

(assert (=> b!7089 (= e!3773 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3630 lt!3632))))

(declare-fun b!7090 () Bool)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!7090 (= e!3770 (not (P!3 (select (store (arr!260 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000000) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000001) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000010) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000011) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000100) (select (arr!260 f!79) i!190)))) i!190))))))

(declare-fun b!7091 () Bool)

(declare-fun res!5813 () Bool)

(assert (=> b!7091 (=> (not res!5813) (not e!3770))))

(declare-fun qInv!0 (array!583) Bool)

(assert (=> b!7091 (= res!5813 (qInv!0 q!51))))

(declare-fun b!7092 () Bool)

(declare-fun res!5816 () Bool)

(assert (=> b!7092 (=> (not res!5816) (not e!3770))))

(assert (=> b!7092 (= res!5816 (bvsle i!190 jz!36))))

(declare-fun b!7093 () Bool)

(assert (=> b!7093 (= e!3775 e!3771)))

(declare-fun res!5809 () Bool)

(assert (=> b!7093 (=> (not res!5809) (not e!3771))))

(declare-fun lt!3633 () (_ BitVec 32))

(assert (=> b!7093 (= res!5809 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3633 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3633) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7093 (= lt!3633 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7094 () Bool)

(declare-fun Unit!479 () Unit!477)

(assert (=> b!7094 (= e!3773 (tuple3!115 Unit!479 lt!3630 lt!3632))))

(declare-fun b!7095 () Bool)

(declare-fun res!5811 () Bool)

(assert (=> b!7095 (=> (not res!5811) (not e!3770))))

(assert (=> b!7095 (= res!5811 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!7096 () Bool)

(declare-fun res!5815 () Bool)

(assert (=> b!7096 (=> (not res!5815) (not e!3770))))

(assert (=> b!7096 (= res!5815 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!7097 () Bool)

(declare-fun res!5812 () Bool)

(assert (=> b!7097 (=> (not res!5812) (not e!3775))))

(declare-fun xxInv!0 (array!583) Bool)

(assert (=> b!7097 (= res!5812 (xxInv!0 xx!50))))

(declare-fun b!7098 () Bool)

(declare-fun res!5818 () Bool)

(assert (=> b!7098 (=> (not res!5818) (not e!3770))))

(assert (=> b!7098 (= res!5818 (Q!0 (select (arr!260 f!79) i!190)))))

(assert (= (and start!1425 res!5819) b!7097))

(assert (= (and b!7097 res!5812) b!7093))

(assert (= (and b!7093 res!5809) b!7085))

(assert (= (and b!7085 c!845) b!7089))

(assert (= (and b!7085 (not c!845)) b!7094))

(assert (= (and b!7085 res!5817) b!7088))

(assert (= (and b!7088 res!5808) b!7091))

(assert (= (and b!7091 res!5813) b!7092))

(assert (= (and b!7092 res!5816) b!7086))

(assert (= (and b!7086 res!5814) b!7087))

(assert (= (and b!7087 res!5810) b!7095))

(assert (= (and b!7095 res!5811) b!7096))

(assert (= (and b!7096 res!5815) b!7098))

(assert (= (and b!7098 res!5818) b!7090))

(declare-fun m!11827 () Bool)

(assert (=> b!7095 m!11827))

(assert (=> b!7095 m!11827))

(declare-fun m!11829 () Bool)

(assert (=> b!7095 m!11829))

(declare-fun m!11831 () Bool)

(assert (=> b!7090 m!11831))

(declare-fun m!11833 () Bool)

(assert (=> b!7090 m!11833))

(assert (=> b!7090 m!11827))

(declare-fun m!11835 () Bool)

(assert (=> b!7090 m!11835))

(declare-fun m!11837 () Bool)

(assert (=> b!7090 m!11837))

(declare-fun m!11839 () Bool)

(assert (=> b!7090 m!11839))

(declare-fun m!11841 () Bool)

(assert (=> b!7090 m!11841))

(declare-fun m!11843 () Bool)

(assert (=> b!7090 m!11843))

(assert (=> b!7090 m!11839))

(declare-fun m!11845 () Bool)

(assert (=> b!7090 m!11845))

(declare-fun m!11847 () Bool)

(assert (=> b!7090 m!11847))

(declare-fun m!11849 () Bool)

(assert (=> b!7090 m!11849))

(declare-fun m!11851 () Bool)

(assert (=> b!7090 m!11851))

(declare-fun m!11853 () Bool)

(assert (=> b!7090 m!11853))

(declare-fun m!11855 () Bool)

(assert (=> b!7091 m!11855))

(assert (=> b!7096 m!11835))

(assert (=> b!7096 m!11835))

(declare-fun m!11857 () Bool)

(assert (=> b!7096 m!11857))

(declare-fun m!11859 () Bool)

(assert (=> b!7088 m!11859))

(assert (=> b!7087 m!11833))

(assert (=> b!7087 m!11833))

(declare-fun m!11861 () Bool)

(assert (=> b!7087 m!11861))

(declare-fun m!11863 () Bool)

(assert (=> start!1425 m!11863))

(declare-fun m!11865 () Bool)

(assert (=> start!1425 m!11865))

(declare-fun m!11867 () Bool)

(assert (=> start!1425 m!11867))

(assert (=> b!7098 m!11847))

(assert (=> b!7098 m!11847))

(declare-fun m!11869 () Bool)

(assert (=> b!7098 m!11869))

(declare-fun m!11871 () Bool)

(assert (=> b!7089 m!11871))

(assert (=> b!7086 m!11831))

(assert (=> b!7086 m!11831))

(declare-fun m!11873 () Bool)

(assert (=> b!7086 m!11873))

(declare-fun m!11875 () Bool)

(assert (=> b!7097 m!11875))

(check-sat (not b!7095) (not b!7097) (not start!1425) (not b!7096) (not b!7086) (not b!7098) (not b!7089) (not b!7088) (not b!7087) (not b!7090) (not b!7091))
(check-sat)
