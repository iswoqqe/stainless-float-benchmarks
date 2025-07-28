; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1647 () Bool)

(assert start!1647)

(declare-fun b!8490 () Bool)

(declare-fun res!6951 () Bool)

(declare-fun e!4644 () Bool)

(assert (=> b!8490 (=> (not res!6951) (not e!4644))))

(declare-datatypes ((array!652 0))(
  ( (array!653 (arr!286 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!286 (_ BitVec 32))) )
))
(declare-fun f!79 () array!652)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8490 (= res!6951 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8491 () Bool)

(declare-fun e!4645 () Bool)

(assert (=> b!8491 (= e!4645 e!4644)))

(declare-fun res!6946 () Bool)

(assert (=> b!8491 (=> (not res!6946) (not e!4644))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8491 (= res!6946 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!612 0))(
  ( (Unit!613) )
))
(declare-datatypes ((tuple3!166 0))(
  ( (tuple3!167 (_1!216 Unit!612) (_2!216 (_ BitVec 32)) (_3!183 array!652)) )
))
(declare-fun lt!4275 () tuple3!166)

(declare-fun e!4647 () tuple3!166)

(assert (=> b!8491 (= lt!4275 e!4647)))

(declare-fun lt!4272 () (_ BitVec 32))

(declare-fun xx!50 () array!652)

(declare-fun c!980 () Bool)

(assert (=> b!8491 (= c!980 (bvsle lt!4272 (bvadd (bvsub (size!286 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8491 (= lt!4272 #b00000000000000000000000000000000)))

(declare-fun lt!4274 () array!652)

(assert (=> b!8491 (= lt!4274 (array!653 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8492 () Bool)

(declare-fun res!6952 () Bool)

(assert (=> b!8492 (=> (not res!6952) (not e!4644))))

(declare-fun fInv!0 (array!652) Bool)

(assert (=> b!8492 (= res!6952 (fInv!0 f!79))))

(declare-fun res!6944 () Bool)

(declare-fun e!4646 () Bool)

(assert (=> start!1647 (=> (not res!6944) (not e!4646))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1647 (= res!6944 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1647 e!4646))

(declare-fun array_inv!236 (array!652) Bool)

(assert (=> start!1647 (array_inv!236 f!79)))

(declare-fun q!51 () array!652)

(assert (=> start!1647 (array_inv!236 q!51)))

(assert (=> start!1647 true))

(assert (=> start!1647 (array_inv!236 xx!50)))

(declare-fun b!8493 () Bool)

(assert (=> b!8493 (= e!4644 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8494 () Bool)

(declare-fun res!6949 () Bool)

(assert (=> b!8494 (=> (not res!6949) (not e!4646))))

(declare-fun xxInv!0 (array!652) Bool)

(assert (=> b!8494 (= res!6949 (xxInv!0 xx!50))))

(declare-fun b!8495 () Bool)

(declare-fun res!6948 () Bool)

(assert (=> b!8495 (=> (not res!6948) (not e!4644))))

(assert (=> b!8495 (= res!6948 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8496 () Bool)

(assert (=> b!8496 (= e!4646 e!4645)))

(declare-fun res!6947 () Bool)

(assert (=> b!8496 (=> (not res!6947) (not e!4645))))

(declare-fun lt!4273 () (_ BitVec 32))

(assert (=> b!8496 (= res!6947 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4273 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4273) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8496 (= lt!4273 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8497 () Bool)

(declare-fun res!6943 () Bool)

(assert (=> b!8497 (=> (not res!6943) (not e!4644))))

(assert (=> b!8497 (= res!6943 (bvsle i!190 jz!36))))

(declare-fun b!8498 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!652 (_ BitVec 32) array!652) tuple3!166)

(assert (=> b!8498 (= e!4647 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4272 lt!4274))))

(declare-fun b!8499 () Bool)

(declare-fun Unit!614 () Unit!612)

(assert (=> b!8499 (= e!4647 (tuple3!167 Unit!614 lt!4272 lt!4274))))

(declare-fun b!8500 () Bool)

(declare-fun res!6950 () Bool)

(assert (=> b!8500 (=> (not res!6950) (not e!4644))))

(assert (=> b!8500 (= res!6950 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8501 () Bool)

(declare-fun res!6945 () Bool)

(assert (=> b!8501 (=> (not res!6945) (not e!4644))))

(declare-fun qInv!0 (array!652) Bool)

(assert (=> b!8501 (= res!6945 (qInv!0 q!51))))

(assert (= (and start!1647 res!6944) b!8494))

(assert (= (and b!8494 res!6949) b!8496))

(assert (= (and b!8496 res!6947) b!8491))

(assert (= (and b!8491 c!980) b!8498))

(assert (= (and b!8491 (not c!980)) b!8499))

(assert (= (and b!8491 res!6946) b!8492))

(assert (= (and b!8492 res!6952) b!8501))

(assert (= (and b!8501 res!6945) b!8497))

(assert (= (and b!8497 res!6943) b!8495))

(assert (= (and b!8495 res!6948) b!8490))

(assert (= (and b!8490 res!6951) b!8500))

(assert (= (and b!8500 res!6950) b!8493))

(declare-fun m!14291 () Bool)

(assert (=> b!8501 m!14291))

(declare-fun m!14293 () Bool)

(assert (=> b!8492 m!14293))

(declare-fun m!14295 () Bool)

(assert (=> b!8490 m!14295))

(assert (=> b!8490 m!14295))

(declare-fun m!14297 () Bool)

(assert (=> b!8490 m!14297))

(declare-fun m!14299 () Bool)

(assert (=> b!8494 m!14299))

(declare-fun m!14301 () Bool)

(assert (=> b!8500 m!14301))

(assert (=> b!8500 m!14301))

(declare-fun m!14303 () Bool)

(assert (=> b!8500 m!14303))

(declare-fun m!14305 () Bool)

(assert (=> b!8495 m!14305))

(assert (=> b!8495 m!14305))

(declare-fun m!14307 () Bool)

(assert (=> b!8495 m!14307))

(declare-fun m!14309 () Bool)

(assert (=> start!1647 m!14309))

(declare-fun m!14311 () Bool)

(assert (=> start!1647 m!14311))

(declare-fun m!14313 () Bool)

(assert (=> start!1647 m!14313))

(declare-fun m!14315 () Bool)

(assert (=> b!8498 m!14315))

(check-sat (not b!8501) (not b!8492) (not b!8498) (not b!8495) (not b!8500) (not start!1647) (not b!8490) (not b!8494))
(check-sat)
