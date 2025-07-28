; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1691 () Bool)

(assert start!1691)

(declare-fun b!8730 () Bool)

(declare-fun res!7141 () Bool)

(declare-fun e!4785 () Bool)

(assert (=> b!8730 (=> (not res!7141) (not e!4785))))

(declare-datatypes ((array!663 0))(
  ( (array!664 (arr!290 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!290 (_ BitVec 32))) )
))
(declare-fun f!79 () array!663)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8730 (= res!7141 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8731 () Bool)

(declare-fun res!7153 () Bool)

(assert (=> b!8731 (=> (not res!7153) (not e!4785))))

(assert (=> b!8731 (= res!7153 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8732 () Bool)

(declare-fun e!4789 () Bool)

(declare-fun e!4786 () Bool)

(assert (=> b!8732 (= e!4789 e!4786)))

(declare-fun res!7142 () Bool)

(assert (=> b!8732 (=> (not res!7142) (not e!4786))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4377 () (_ BitVec 32))

(assert (=> b!8732 (= res!7142 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4377 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4377) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8732 (= lt!4377 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8733 () Bool)

(declare-fun res!7151 () Bool)

(assert (=> b!8733 (=> (not res!7151) (not e!4785))))

(assert (=> b!8733 (= res!7151 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-datatypes ((Unit!633 0))(
  ( (Unit!634) )
))
(declare-datatypes ((tuple3!174 0))(
  ( (tuple3!175 (_1!223 Unit!633) (_2!223 (_ BitVec 32)) (_3!187 array!663)) )
))
(declare-fun e!4787 () tuple3!174)

(declare-fun lt!4379 () (_ BitVec 32))

(declare-fun b!8735 () Bool)

(declare-fun lt!4380 () array!663)

(declare-fun xx!50 () array!663)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!663 (_ BitVec 32) array!663) tuple3!174)

(assert (=> b!8735 (= e!4787 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4379 lt!4380))))

(declare-fun b!8736 () Bool)

(declare-fun res!7144 () Bool)

(assert (=> b!8736 (=> (not res!7144) (not e!4785))))

(declare-fun q!51 () array!663)

(declare-fun qInv!0 (array!663) Bool)

(assert (=> b!8736 (= res!7144 (qInv!0 q!51))))

(declare-fun b!8737 () Bool)

(declare-fun res!7143 () Bool)

(assert (=> b!8737 (=> (not res!7143) (not e!4785))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8737 (= res!7143 (P!3 (select (store (arr!290 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000000) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000001) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000010) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000011) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000100) (select (arr!290 f!79) i!190)))) i!190)))))

(declare-fun b!8738 () Bool)

(declare-fun res!7145 () Bool)

(assert (=> b!8738 (=> (not res!7145) (not e!4785))))

(assert (=> b!8738 (= res!7145 (bvsle i!190 jz!36))))

(declare-fun b!8739 () Bool)

(declare-fun res!7150 () Bool)

(assert (=> b!8739 (=> (not res!7150) (not e!4785))))

(declare-fun fInv!0 (array!663) Bool)

(assert (=> b!8739 (= res!7150 (fInv!0 f!79))))

(declare-fun b!8740 () Bool)

(declare-fun res!7146 () Bool)

(assert (=> b!8740 (=> (not res!7146) (not e!4785))))

(assert (=> b!8740 (= res!7146 (Q!0 (select (arr!290 f!79) i!190)))))

(declare-fun b!8741 () Bool)

(assert (=> b!8741 (= e!4785 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8742 () Bool)

(assert (=> b!8742 (= e!4786 e!4785)))

(declare-fun res!7152 () Bool)

(assert (=> b!8742 (=> (not res!7152) (not e!4785))))

(assert (=> b!8742 (= res!7152 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4378 () tuple3!174)

(assert (=> b!8742 (= lt!4378 e!4787)))

(declare-fun c!1001 () Bool)

(assert (=> b!8742 (= c!1001 (bvsle lt!4379 (bvadd (bvsub (size!290 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8742 (= lt!4379 #b00000000000000000000000000000000)))

(assert (=> b!8742 (= lt!4380 (array!664 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun res!7149 () Bool)

(assert (=> start!1691 (=> (not res!7149) (not e!4789))))

(assert (=> start!1691 (= res!7149 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1691 e!4789))

(declare-fun array_inv!240 (array!663) Bool)

(assert (=> start!1691 (array_inv!240 f!79)))

(assert (=> start!1691 (array_inv!240 q!51)))

(assert (=> start!1691 true))

(assert (=> start!1691 (array_inv!240 xx!50)))

(declare-fun b!8734 () Bool)

(declare-fun res!7148 () Bool)

(assert (=> b!8734 (=> (not res!7148) (not e!4789))))

(declare-fun xxInv!0 (array!663) Bool)

(assert (=> b!8734 (= res!7148 (xxInv!0 xx!50))))

(declare-fun b!8743 () Bool)

(declare-fun res!7147 () Bool)

(assert (=> b!8743 (=> (not res!7147) (not e!4785))))

(assert (=> b!8743 (= res!7147 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8744 () Bool)

(declare-fun Unit!635 () Unit!633)

(assert (=> b!8744 (= e!4787 (tuple3!175 Unit!635 lt!4379 lt!4380))))

(assert (= (and start!1691 res!7149) b!8734))

(assert (= (and b!8734 res!7148) b!8732))

(assert (= (and b!8732 res!7142) b!8742))

(assert (= (and b!8742 c!1001) b!8735))

(assert (= (and b!8742 (not c!1001)) b!8744))

(assert (= (and b!8742 res!7152) b!8739))

(assert (= (and b!8739 res!7150) b!8736))

(assert (= (and b!8736 res!7144) b!8738))

(assert (= (and b!8738 res!7145) b!8743))

(assert (= (and b!8743 res!7147) b!8730))

(assert (= (and b!8730 res!7141) b!8733))

(assert (= (and b!8733 res!7151) b!8731))

(assert (= (and b!8731 res!7153) b!8740))

(assert (= (and b!8740 res!7146) b!8737))

(assert (= (and b!8737 res!7143) b!8741))

(declare-fun m!14455 () Bool)

(assert (=> b!8740 m!14455))

(assert (=> b!8740 m!14455))

(declare-fun m!14457 () Bool)

(assert (=> b!8740 m!14457))

(declare-fun m!14459 () Bool)

(assert (=> b!8739 m!14459))

(declare-fun m!14461 () Bool)

(assert (=> start!1691 m!14461))

(declare-fun m!14463 () Bool)

(assert (=> start!1691 m!14463))

(declare-fun m!14465 () Bool)

(assert (=> start!1691 m!14465))

(declare-fun m!14467 () Bool)

(assert (=> b!8736 m!14467))

(declare-fun m!14469 () Bool)

(assert (=> b!8733 m!14469))

(assert (=> b!8733 m!14469))

(declare-fun m!14471 () Bool)

(assert (=> b!8733 m!14471))

(declare-fun m!14473 () Bool)

(assert (=> b!8735 m!14473))

(declare-fun m!14475 () Bool)

(assert (=> b!8737 m!14475))

(declare-fun m!14477 () Bool)

(assert (=> b!8737 m!14477))

(declare-fun m!14479 () Bool)

(assert (=> b!8737 m!14479))

(declare-fun m!14481 () Bool)

(assert (=> b!8737 m!14481))

(declare-fun m!14483 () Bool)

(assert (=> b!8737 m!14483))

(declare-fun m!14485 () Bool)

(assert (=> b!8737 m!14485))

(declare-fun m!14487 () Bool)

(assert (=> b!8737 m!14487))

(assert (=> b!8737 m!14469))

(declare-fun m!14489 () Bool)

(assert (=> b!8737 m!14489))

(declare-fun m!14491 () Bool)

(assert (=> b!8737 m!14491))

(declare-fun m!14493 () Bool)

(assert (=> b!8737 m!14493))

(assert (=> b!8737 m!14455))

(assert (=> b!8737 m!14489))

(declare-fun m!14495 () Bool)

(assert (=> b!8737 m!14495))

(declare-fun m!14497 () Bool)

(assert (=> b!8734 m!14497))

(assert (=> b!8731 m!14481))

(assert (=> b!8731 m!14481))

(declare-fun m!14499 () Bool)

(assert (=> b!8731 m!14499))

(assert (=> b!8730 m!14477))

(assert (=> b!8730 m!14477))

(declare-fun m!14501 () Bool)

(assert (=> b!8730 m!14501))

(assert (=> b!8743 m!14475))

(assert (=> b!8743 m!14475))

(declare-fun m!14503 () Bool)

(assert (=> b!8743 m!14503))

(check-sat (not b!8736) (not start!1691) (not b!8737) (not b!8735) (not b!8743) (not b!8739) (not b!8733) (not b!8740) (not b!8731) (not b!8730) (not b!8734))
(check-sat)
