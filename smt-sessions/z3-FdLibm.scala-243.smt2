; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1453 () Bool)

(assert start!1453)

(declare-datatypes ((array!588 0))(
  ( (array!589 (arr!261 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!261 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!495 0))(
  ( (Unit!496) )
))
(declare-datatypes ((tuple3!116 0))(
  ( (tuple3!117 (_1!177 Unit!495) (_2!177 (_ BitVec 32)) (_3!158 array!588)) )
))
(declare-fun e!3857 () tuple3!116)

(declare-fun e!19 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun lt!3717 () (_ BitVec 32))

(declare-fun lt!3714 () array!588)

(declare-fun b!7477 () Bool)

(declare-fun xx!50 () array!588)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!588 (_ BitVec 32) array!588) tuple3!116)

(assert (=> b!7477 (= e!3857 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3717 lt!3714))))

(declare-fun b!7478 () Bool)

(declare-fun res!6165 () Bool)

(declare-fun e!3856 () Bool)

(assert (=> b!7478 (=> (not res!6165) (not e!3856))))

(declare-fun xxInv!0 (array!588) Bool)

(assert (=> b!7478 (= res!6165 (xxInv!0 xx!50))))

(declare-fun res!6166 () Bool)

(assert (=> start!1453 (=> (not res!6166) (not e!3856))))

(assert (=> start!1453 (= res!6166 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1453 e!3856))

(assert (=> start!1453 true))

(declare-fun array_inv!211 (array!588) Bool)

(assert (=> start!1453 (array_inv!211 xx!50)))

(declare-fun b!7479 () Bool)

(declare-fun Unit!497 () Unit!495)

(assert (=> b!7479 (= e!3857 (tuple3!117 Unit!497 lt!3717 lt!3714))))

(declare-fun b!7480 () Bool)

(declare-fun e!3855 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7480 (= e!3855 (and (bvsle #b00000000000000000000000000000000 i!190) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!3715 () tuple3!116)

(assert (=> b!7480 (= lt!3715 e!3857)))

(declare-fun c!863 () Bool)

(assert (=> b!7480 (= c!863 (bvsle lt!3717 (bvadd (bvsub (size!261 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7480 (= lt!3717 #b00000000000000000000000000000000)))

(assert (=> b!7480 (= lt!3714 (array!589 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7481 () Bool)

(assert (=> b!7481 (= e!3856 e!3855)))

(declare-fun res!6164 () Bool)

(assert (=> b!7481 (=> (not res!6164) (not e!3855))))

(declare-fun lt!3716 () (_ BitVec 32))

(assert (=> b!7481 (= res!6164 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3716 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3716) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7481 (= lt!3716 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1453 res!6166) b!7478))

(assert (= (and b!7478 res!6165) b!7481))

(assert (= (and b!7481 res!6164) b!7480))

(assert (= (and b!7480 c!863) b!7477))

(assert (= (and b!7480 (not c!863)) b!7479))

(declare-fun m!13701 () Bool)

(assert (=> b!7477 m!13701))

(declare-fun m!13703 () Bool)

(assert (=> b!7478 m!13703))

(declare-fun m!13705 () Bool)

(assert (=> start!1453 m!13705))

(check-sat (not start!1453) (not b!7478) (not b!7477))
(check-sat)
