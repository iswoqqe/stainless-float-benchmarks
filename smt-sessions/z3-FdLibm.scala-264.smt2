; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1589 () Bool)

(assert start!1589)

(declare-fun b!7938 () Bool)

(declare-fun res!6458 () Bool)

(declare-fun e!4452 () Bool)

(assert (=> b!7938 (=> (not res!6458) (not e!4452))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7938 (= res!6458 (bvsle i!190 jz!36))))

(declare-fun b!7939 () Bool)

(declare-datatypes ((array!639 0))(
  ( (array!640 (arr!282 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!282 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!579 0))(
  ( (Unit!580) )
))
(declare-datatypes ((tuple3!158 0))(
  ( (tuple3!159 (_1!210 Unit!579) (_2!210 (_ BitVec 32)) (_3!179 array!639)) )
))
(declare-fun e!4454 () tuple3!158)

(declare-fun lt!4113 () (_ BitVec 32))

(declare-fun lt!4111 () array!639)

(declare-fun Unit!581 () Unit!579)

(assert (=> b!7939 (= e!4454 (tuple3!159 Unit!581 lt!4113 lt!4111))))

(declare-fun b!7940 () Bool)

(declare-fun e!4455 () Bool)

(declare-fun e!4450 () Bool)

(assert (=> b!7940 (= e!4455 e!4450)))

(declare-fun res!6464 () Bool)

(assert (=> b!7940 (=> (not res!6464) (not e!4450))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4110 () (_ BitVec 32))

(assert (=> b!7940 (= res!6464 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4110 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4110) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7940 (= lt!4110 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7941 () Bool)

(declare-fun res!6463 () Bool)

(assert (=> b!7941 (=> (not res!6463) (not e!4455))))

(declare-fun xx!50 () array!639)

(declare-fun xxInv!0 (array!639) Bool)

(assert (=> b!7941 (= res!6463 (xxInv!0 xx!50))))

(declare-fun b!7942 () Bool)

(declare-fun res!6457 () Bool)

(assert (=> b!7942 (=> (not res!6457) (not e!4452))))

(declare-fun f!79 () array!639)

(declare-fun fInv!0 (array!639) Bool)

(assert (=> b!7942 (= res!6457 (fInv!0 f!79))))

(declare-fun b!7943 () Bool)

(assert (=> b!7943 (= e!4450 e!4452)))

(declare-fun res!6460 () Bool)

(assert (=> b!7943 (=> (not res!6460) (not e!4452))))

(assert (=> b!7943 (= res!6460 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4112 () tuple3!158)

(assert (=> b!7943 (= lt!4112 e!4454)))

(declare-fun c!947 () Bool)

(assert (=> b!7943 (= c!947 (bvsle lt!4113 (bvadd (bvsub (size!282 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7943 (= lt!4113 #b00000000000000000000000000000000)))

(assert (=> b!7943 (= lt!4111 (array!640 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7944 () Bool)

(assert (=> b!7944 (= e!4452 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(declare-fun b!7946 () Bool)

(declare-fun res!6461 () Bool)

(assert (=> b!7946 (=> (not res!6461) (not e!4452))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!7946 (= res!6461 (Q!0 (select (arr!282 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!7947 () Bool)

(declare-fun res!6459 () Bool)

(assert (=> b!7947 (=> (not res!6459) (not e!4452))))

(declare-fun q!51 () array!639)

(declare-fun qInv!0 (array!639) Bool)

(assert (=> b!7947 (= res!6459 (qInv!0 q!51))))

(declare-fun res!6462 () Bool)

(assert (=> start!1589 (=> (not res!6462) (not e!4455))))

(assert (=> start!1589 (= res!6462 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1589 e!4455))

(declare-fun array_inv!232 (array!639) Bool)

(assert (=> start!1589 (array_inv!232 f!79)))

(assert (=> start!1589 (array_inv!232 q!51)))

(assert (=> start!1589 true))

(assert (=> start!1589 (array_inv!232 xx!50)))

(declare-fun b!7945 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!639 (_ BitVec 32) array!639) tuple3!158)

(assert (=> b!7945 (= e!4454 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4113 lt!4111))))

(assert (= (and start!1589 res!6462) b!7941))

(assert (= (and b!7941 res!6463) b!7940))

(assert (= (and b!7940 res!6464) b!7943))

(assert (= (and b!7943 c!947) b!7945))

(assert (= (and b!7943 (not c!947)) b!7939))

(assert (= (and b!7943 res!6460) b!7942))

(assert (= (and b!7942 res!6457) b!7947))

(assert (= (and b!7947 res!6459) b!7938))

(assert (= (and b!7938 res!6458) b!7946))

(assert (= (and b!7946 res!6461) b!7944))

(declare-fun m!12355 () Bool)

(assert (=> b!7946 m!12355))

(assert (=> b!7946 m!12355))

(declare-fun m!12357 () Bool)

(assert (=> b!7946 m!12357))

(declare-fun m!12359 () Bool)

(assert (=> start!1589 m!12359))

(declare-fun m!12361 () Bool)

(assert (=> start!1589 m!12361))

(declare-fun m!12363 () Bool)

(assert (=> start!1589 m!12363))

(declare-fun m!12365 () Bool)

(assert (=> b!7945 m!12365))

(declare-fun m!12367 () Bool)

(assert (=> b!7941 m!12367))

(declare-fun m!12369 () Bool)

(assert (=> b!7947 m!12369))

(declare-fun m!12371 () Bool)

(assert (=> b!7942 m!12371))

(check-sat (not b!7947) (not start!1589) (not b!7941) (not b!7942) (not b!7946) (not b!7945))
(check-sat)
