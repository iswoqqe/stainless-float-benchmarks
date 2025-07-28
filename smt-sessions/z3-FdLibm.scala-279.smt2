; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1705 () Bool)

(assert start!1705)

(declare-fun b!9081 () Bool)

(declare-fun res!7451 () Bool)

(declare-fun e!4959 () Bool)

(assert (=> b!9081 (=> (not res!7451) (not e!4959))))

(declare-datatypes ((array!677 0))(
  ( (array!678 (arr!297 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!297 (_ BitVec 32))) )
))
(declare-fun f!79 () array!677)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9081 (= res!7451 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!9082 () Bool)

(declare-fun res!7452 () Bool)

(assert (=> b!9082 (=> (not res!7452) (not e!4959))))

(assert (=> b!9082 (= res!7452 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!9084 () Bool)

(declare-fun res!7445 () Bool)

(assert (=> b!9084 (=> (not res!7445) (not e!4959))))

(assert (=> b!9084 (= res!7445 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9085 () Bool)

(declare-fun e!4957 () Bool)

(declare-fun e!4955 () Bool)

(assert (=> b!9085 (= e!4957 e!4955)))

(declare-fun res!7456 () Bool)

(assert (=> b!9085 (=> (not res!7456) (not e!4955))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4496 () (_ BitVec 32))

(assert (=> b!9085 (= res!7456 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4496 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4496) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9085 (= lt!4496 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9086 () Bool)

(declare-fun res!7453 () Bool)

(assert (=> b!9086 (=> (not res!7453) (not e!4957))))

(declare-fun xx!50 () array!677)

(declare-fun xxInv!0 (array!677) Bool)

(assert (=> b!9086 (= res!7453 (xxInv!0 xx!50))))

(declare-fun b!9087 () Bool)

(declare-fun res!7450 () Bool)

(assert (=> b!9087 (=> (not res!7450) (not e!4959))))

(assert (=> b!9087 (= res!7450 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9088 () Bool)

(declare-fun res!7444 () Bool)

(assert (=> b!9088 (=> (not res!7444) (not e!4959))))

(assert (=> b!9088 (= res!7444 (Q!0 (select (arr!297 f!79) i!190)))))

(declare-fun b!9089 () Bool)

(declare-fun lt!4494 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!9089 (= e!4959 (and (bvsgt lt!4494 jz!36) (bvsle lt!4494 jz!36)))))

(assert (=> b!9089 (= lt!4494 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!9090 () Bool)

(declare-datatypes ((Unit!655 0))(
  ( (Unit!656) )
))
(declare-datatypes ((tuple3!188 0))(
  ( (tuple3!189 (_1!233 Unit!655) (_2!233 (_ BitVec 32)) (_3!197 array!677)) )
))
(declare-fun e!4956 () tuple3!188)

(declare-fun lt!4495 () array!677)

(declare-fun lt!4497 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!677 (_ BitVec 32) array!677) tuple3!188)

(assert (=> b!9090 (= e!4956 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4497 lt!4495))))

(declare-fun b!9091 () Bool)

(declare-fun res!7448 () Bool)

(assert (=> b!9091 (=> (not res!7448) (not e!4959))))

(declare-fun q!51 () array!677)

(declare-fun qInv!0 (array!677) Bool)

(assert (=> b!9091 (= res!7448 (qInv!0 q!51))))

(declare-fun res!7447 () Bool)

(assert (=> start!1705 (=> (not res!7447) (not e!4957))))

(assert (=> start!1705 (= res!7447 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1705 e!4957))

(declare-fun array_inv!247 (array!677) Bool)

(assert (=> start!1705 (array_inv!247 f!79)))

(assert (=> start!1705 (array_inv!247 q!51)))

(assert (=> start!1705 true))

(assert (=> start!1705 (array_inv!247 xx!50)))

(declare-fun b!9083 () Bool)

(declare-fun res!7454 () Bool)

(assert (=> b!9083 (=> (not res!7454) (not e!4959))))

(assert (=> b!9083 (= res!7454 (bvsle i!190 jz!36))))

(declare-fun b!9092 () Bool)

(declare-fun res!7446 () Bool)

(assert (=> b!9092 (=> (not res!7446) (not e!4959))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9092 (= res!7446 (P!3 (select (store (arr!297 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000000) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000001) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000010) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000011) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000100) (select (arr!297 f!79) i!190)))) i!190)))))

(declare-fun b!9093 () Bool)

(declare-fun res!7455 () Bool)

(assert (=> b!9093 (=> (not res!7455) (not e!4959))))

(declare-fun fInv!0 (array!677) Bool)

(assert (=> b!9093 (= res!7455 (fInv!0 f!79))))

(declare-fun b!9094 () Bool)

(assert (=> b!9094 (= e!4955 e!4959)))

(declare-fun res!7449 () Bool)

(assert (=> b!9094 (=> (not res!7449) (not e!4959))))

(assert (=> b!9094 (= res!7449 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4493 () tuple3!188)

(assert (=> b!9094 (= lt!4493 e!4956)))

(declare-fun c!1025 () Bool)

(assert (=> b!9094 (= c!1025 (bvsle lt!4497 (bvadd (bvsub (size!297 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9094 (= lt!4497 #b00000000000000000000000000000000)))

(assert (=> b!9094 (= lt!4495 (array!678 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9095 () Bool)

(declare-fun Unit!657 () Unit!655)

(assert (=> b!9095 (= e!4956 (tuple3!189 Unit!657 lt!4497 lt!4495))))

(assert (= (and start!1705 res!7447) b!9086))

(assert (= (and b!9086 res!7453) b!9085))

(assert (= (and b!9085 res!7456) b!9094))

(assert (= (and b!9094 c!1025) b!9090))

(assert (= (and b!9094 (not c!1025)) b!9095))

(assert (= (and b!9094 res!7449) b!9093))

(assert (= (and b!9093 res!7455) b!9091))

(assert (= (and b!9091 res!7448) b!9083))

(assert (= (and b!9083 res!7454) b!9087))

(assert (= (and b!9087 res!7450) b!9084))

(assert (= (and b!9084 res!7445) b!9082))

(assert (= (and b!9082 res!7452) b!9081))

(assert (= (and b!9081 res!7451) b!9088))

(assert (= (and b!9088 res!7444) b!9092))

(assert (= (and b!9092 res!7446) b!9089))

(declare-fun m!14819 () Bool)

(assert (=> b!9091 m!14819))

(declare-fun m!14821 () Bool)

(assert (=> b!9087 m!14821))

(assert (=> b!9087 m!14821))

(declare-fun m!14823 () Bool)

(assert (=> b!9087 m!14823))

(declare-fun m!14825 () Bool)

(assert (=> b!9090 m!14825))

(declare-fun m!14827 () Bool)

(assert (=> b!9082 m!14827))

(assert (=> b!9082 m!14827))

(declare-fun m!14829 () Bool)

(assert (=> b!9082 m!14829))

(declare-fun m!14831 () Bool)

(assert (=> b!9088 m!14831))

(assert (=> b!9088 m!14831))

(declare-fun m!14833 () Bool)

(assert (=> b!9088 m!14833))

(declare-fun m!14835 () Bool)

(assert (=> b!9093 m!14835))

(declare-fun m!14837 () Bool)

(assert (=> b!9084 m!14837))

(assert (=> b!9084 m!14837))

(declare-fun m!14839 () Bool)

(assert (=> b!9084 m!14839))

(declare-fun m!14841 () Bool)

(assert (=> b!9081 m!14841))

(assert (=> b!9081 m!14841))

(declare-fun m!14843 () Bool)

(assert (=> b!9081 m!14843))

(declare-fun m!14845 () Bool)

(assert (=> start!1705 m!14845))

(declare-fun m!14847 () Bool)

(assert (=> start!1705 m!14847))

(declare-fun m!14849 () Bool)

(assert (=> start!1705 m!14849))

(assert (=> b!9092 m!14821))

(assert (=> b!9092 m!14837))

(declare-fun m!14851 () Bool)

(assert (=> b!9092 m!14851))

(assert (=> b!9092 m!14841))

(declare-fun m!14853 () Bool)

(assert (=> b!9092 m!14853))

(declare-fun m!14855 () Bool)

(assert (=> b!9092 m!14855))

(declare-fun m!14857 () Bool)

(assert (=> b!9092 m!14857))

(assert (=> b!9092 m!14827))

(declare-fun m!14859 () Bool)

(assert (=> b!9092 m!14859))

(declare-fun m!14861 () Bool)

(assert (=> b!9092 m!14861))

(declare-fun m!14863 () Bool)

(assert (=> b!9092 m!14863))

(assert (=> b!9092 m!14831))

(assert (=> b!9092 m!14859))

(declare-fun m!14865 () Bool)

(assert (=> b!9092 m!14865))

(declare-fun m!14867 () Bool)

(assert (=> b!9086 m!14867))

(check-sat (not b!9088) (not b!9081) (not b!9091) (not b!9082) (not start!1705) (not b!9092) (not b!9084) (not b!9090) (not b!9087) (not b!9086) (not b!9093))
(check-sat)
