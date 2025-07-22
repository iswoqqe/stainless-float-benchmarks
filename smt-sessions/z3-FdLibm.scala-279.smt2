; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1679 () Bool)

(assert start!1679)

(declare-fun b!8713 () Bool)

(declare-fun res!7113 () Bool)

(declare-fun e!4887 () Bool)

(assert (=> b!8713 (=> (not res!7113) (not e!4887))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8713 (= res!7113 (bvsle i!190 jz!36))))

(declare-fun b!8714 () Bool)

(declare-fun res!7117 () Bool)

(assert (=> b!8714 (=> (not res!7117) (not e!4887))))

(declare-datatypes ((array!674 0))(
  ( (array!675 (arr!297 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!297 (_ BitVec 32))) )
))
(declare-fun f!79 () array!674)

(declare-fun q!51 () array!674)

(declare-fun xx!50 () array!674)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8714 (= res!7117 (P!3 (select (store (arr!297 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000000) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000001) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000010) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000011) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000100) (select (arr!297 f!79) i!190)))) i!190)))))

(declare-fun b!8715 () Bool)

(declare-fun lt!4424 () (_ BitVec 32))

(assert (=> b!8715 (= e!4887 (and (bvsgt lt!4424 jz!36) (bvsle lt!4424 jz!36)))))

(assert (=> b!8715 (= lt!4424 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8716 () Bool)

(declare-fun e!4888 () Bool)

(assert (=> b!8716 (= e!4888 e!4887)))

(declare-fun res!7114 () Bool)

(assert (=> b!8716 (=> (not res!7114) (not e!4887))))

(assert (=> b!8716 (= res!7114 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!640 0))(
  ( (Unit!641) )
))
(declare-datatypes ((tuple3!188 0))(
  ( (tuple3!189 (_1!233 Unit!640) (_2!233 (_ BitVec 32)) (_3!197 array!674)) )
))
(declare-fun lt!4423 () tuple3!188)

(declare-fun e!4886 () tuple3!188)

(assert (=> b!8716 (= lt!4423 e!4886)))

(declare-fun c!1010 () Bool)

(declare-fun lt!4421 () (_ BitVec 32))

(assert (=> b!8716 (= c!1010 (bvsle lt!4421 (bvadd (bvsub (size!297 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8716 (= lt!4421 #b00000000000000000000000000000000)))

(declare-fun lt!4422 () array!674)

(assert (=> b!8716 (= lt!4422 (array!675 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8717 () Bool)

(declare-fun Unit!642 () Unit!640)

(assert (=> b!8717 (= e!4886 (tuple3!189 Unit!642 lt!4421 lt!4422))))

(declare-fun b!8718 () Bool)

(declare-fun res!7118 () Bool)

(declare-fun e!4884 () Bool)

(assert (=> b!8718 (=> (not res!7118) (not e!4884))))

(declare-fun xxInv!0 (array!674) Bool)

(assert (=> b!8718 (= res!7118 (xxInv!0 xx!50))))

(declare-fun b!8719 () Bool)

(assert (=> b!8719 (= e!4884 e!4888)))

(declare-fun res!7111 () Bool)

(assert (=> b!8719 (=> (not res!7111) (not e!4888))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4425 () (_ BitVec 32))

(assert (=> b!8719 (= res!7111 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4425 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4425) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8719 (= lt!4425 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8720 () Bool)

(declare-fun res!7116 () Bool)

(assert (=> b!8720 (=> (not res!7116) (not e!4887))))

(declare-fun qInv!0 (array!674) Bool)

(assert (=> b!8720 (= res!7116 (qInv!0 q!51))))

(declare-fun b!8722 () Bool)

(declare-fun res!7110 () Bool)

(assert (=> b!8722 (=> (not res!7110) (not e!4887))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8722 (= res!7110 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8723 () Bool)

(declare-fun res!7106 () Bool)

(assert (=> b!8723 (=> (not res!7106) (not e!4887))))

(assert (=> b!8723 (= res!7106 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8724 () Bool)

(declare-fun res!7109 () Bool)

(assert (=> b!8724 (=> (not res!7109) (not e!4887))))

(declare-fun fInv!0 (array!674) Bool)

(assert (=> b!8724 (= res!7109 (fInv!0 f!79))))

(declare-fun b!8725 () Bool)

(declare-fun res!7107 () Bool)

(assert (=> b!8725 (=> (not res!7107) (not e!4887))))

(assert (=> b!8725 (= res!7107 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8726 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!674 (_ BitVec 32) array!674) tuple3!188)

(assert (=> b!8726 (= e!4886 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4421 lt!4422))))

(declare-fun b!8727 () Bool)

(declare-fun res!7115 () Bool)

(assert (=> b!8727 (=> (not res!7115) (not e!4887))))

(assert (=> b!8727 (= res!7115 (Q!0 (select (arr!297 f!79) i!190)))))

(declare-fun b!8721 () Bool)

(declare-fun res!7112 () Bool)

(assert (=> b!8721 (=> (not res!7112) (not e!4887))))

(assert (=> b!8721 (= res!7112 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun res!7108 () Bool)

(assert (=> start!1679 (=> (not res!7108) (not e!4884))))

(assert (=> start!1679 (= res!7108 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1679 e!4884))

(declare-fun array_inv!247 (array!674) Bool)

(assert (=> start!1679 (array_inv!247 f!79)))

(assert (=> start!1679 (array_inv!247 q!51)))

(assert (=> start!1679 true))

(assert (=> start!1679 (array_inv!247 xx!50)))

(assert (= (and start!1679 res!7108) b!8718))

(assert (= (and b!8718 res!7118) b!8719))

(assert (= (and b!8719 res!7111) b!8716))

(assert (= (and b!8716 c!1010) b!8726))

(assert (= (and b!8716 (not c!1010)) b!8717))

(assert (= (and b!8716 res!7114) b!8724))

(assert (= (and b!8724 res!7109) b!8720))

(assert (= (and b!8720 res!7116) b!8713))

(assert (= (and b!8713 res!7113) b!8725))

(assert (= (and b!8725 res!7107) b!8722))

(assert (= (and b!8722 res!7110) b!8721))

(assert (= (and b!8721 res!7112) b!8723))

(assert (= (and b!8723 res!7106) b!8727))

(assert (= (and b!8727 res!7115) b!8714))

(assert (= (and b!8714 res!7117) b!8715))

(declare-fun m!12995 () Bool)

(assert (=> b!8726 m!12995))

(declare-fun m!12997 () Bool)

(assert (=> b!8727 m!12997))

(assert (=> b!8727 m!12997))

(declare-fun m!12999 () Bool)

(assert (=> b!8727 m!12999))

(declare-fun m!13001 () Bool)

(assert (=> start!1679 m!13001))

(declare-fun m!13003 () Bool)

(assert (=> start!1679 m!13003))

(declare-fun m!13005 () Bool)

(assert (=> start!1679 m!13005))

(declare-fun m!13007 () Bool)

(assert (=> b!8721 m!13007))

(assert (=> b!8721 m!13007))

(declare-fun m!13009 () Bool)

(assert (=> b!8721 m!13009))

(declare-fun m!13011 () Bool)

(assert (=> b!8725 m!13011))

(assert (=> b!8725 m!13011))

(declare-fun m!13013 () Bool)

(assert (=> b!8725 m!13013))

(declare-fun m!13015 () Bool)

(assert (=> b!8722 m!13015))

(assert (=> b!8722 m!13015))

(declare-fun m!13017 () Bool)

(assert (=> b!8722 m!13017))

(declare-fun m!13019 () Bool)

(assert (=> b!8724 m!13019))

(declare-fun m!13021 () Bool)

(assert (=> b!8718 m!13021))

(assert (=> b!8714 m!13011))

(assert (=> b!8714 m!13015))

(assert (=> b!8714 m!13007))

(declare-fun m!13023 () Bool)

(assert (=> b!8714 m!13023))

(declare-fun m!13025 () Bool)

(assert (=> b!8714 m!13025))

(declare-fun m!13027 () Bool)

(assert (=> b!8714 m!13027))

(declare-fun m!13029 () Bool)

(assert (=> b!8714 m!13029))

(declare-fun m!13031 () Bool)

(assert (=> b!8714 m!13031))

(assert (=> b!8714 m!13027))

(declare-fun m!13033 () Bool)

(assert (=> b!8714 m!13033))

(assert (=> b!8714 m!12997))

(declare-fun m!13035 () Bool)

(assert (=> b!8714 m!13035))

(declare-fun m!13037 () Bool)

(assert (=> b!8714 m!13037))

(declare-fun m!13039 () Bool)

(assert (=> b!8714 m!13039))

(assert (=> b!8723 m!13023))

(assert (=> b!8723 m!13023))

(declare-fun m!13041 () Bool)

(assert (=> b!8723 m!13041))

(declare-fun m!13043 () Bool)

(assert (=> b!8720 m!13043))

(check-sat (not b!8722) (not b!8725) (not b!8724) (not b!8718) (not b!8720) (not b!8723) (not start!1679) (not b!8714) (not b!8726) (not b!8721) (not b!8727))
(check-sat)
