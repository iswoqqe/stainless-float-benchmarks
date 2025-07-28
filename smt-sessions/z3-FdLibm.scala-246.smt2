; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1459 () Bool)

(assert start!1459)

(declare-fun b!7546 () Bool)

(declare-fun e!3916 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7546 (= e!3916 (and (bvsle i!190 jz!36) (bvslt (bvsub (bvadd jz!36 #b00000000000000000000000000000001) i!190) #b00000000000000000000000000000000)))))

(declare-fun res!6215 () Bool)

(declare-fun e!3919 () Bool)

(assert (=> start!1459 (=> (not res!6215) (not e!3919))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1459 (= res!6215 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1459 e!3919))

(declare-datatypes ((array!594 0))(
  ( (array!595 (arr!264 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!264 (_ BitVec 32))) )
))
(declare-fun f!79 () array!594)

(declare-fun array_inv!214 (array!594) Bool)

(assert (=> start!1459 (array_inv!214 f!79)))

(declare-fun q!51 () array!594)

(assert (=> start!1459 (array_inv!214 q!51)))

(assert (=> start!1459 true))

(declare-fun xx!50 () array!594)

(assert (=> start!1459 (array_inv!214 xx!50)))

(declare-fun b!7547 () Bool)

(declare-fun res!6220 () Bool)

(assert (=> b!7547 (=> (not res!6220) (not e!3916))))

(declare-fun fInv!0 (array!594) Bool)

(assert (=> b!7547 (= res!6220 (fInv!0 f!79))))

(declare-fun lt!3751 () (_ BitVec 32))

(declare-fun lt!3753 () array!594)

(declare-datatypes ((Unit!504 0))(
  ( (Unit!505) )
))
(declare-datatypes ((tuple3!122 0))(
  ( (tuple3!123 (_1!180 Unit!504) (_2!180 (_ BitVec 32)) (_3!161 array!594)) )
))
(declare-fun e!3920 () tuple3!122)

(declare-fun b!7548 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!594 (_ BitVec 32) array!594) tuple3!122)

(assert (=> b!7548 (= e!3920 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3751 lt!3753))))

(declare-fun b!7549 () Bool)

(declare-fun e!3915 () Bool)

(assert (=> b!7549 (= e!3915 e!3916)))

(declare-fun res!6216 () Bool)

(assert (=> b!7549 (=> (not res!6216) (not e!3916))))

(assert (=> b!7549 (= res!6216 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3752 () tuple3!122)

(assert (=> b!7549 (= lt!3752 e!3920)))

(declare-fun c!872 () Bool)

(assert (=> b!7549 (= c!872 (bvsle lt!3751 (bvadd (bvsub (size!264 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7549 (= lt!3751 #b00000000000000000000000000000000)))

(assert (=> b!7549 (= lt!3753 (array!595 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7550 () Bool)

(declare-fun Unit!506 () Unit!504)

(assert (=> b!7550 (= e!3920 (tuple3!123 Unit!506 lt!3751 lt!3753))))

(declare-fun b!7551 () Bool)

(declare-fun res!6217 () Bool)

(assert (=> b!7551 (=> (not res!6217) (not e!3916))))

(declare-fun qInv!0 (array!594) Bool)

(assert (=> b!7551 (= res!6217 (qInv!0 q!51))))

(declare-fun b!7552 () Bool)

(assert (=> b!7552 (= e!3919 e!3915)))

(declare-fun res!6218 () Bool)

(assert (=> b!7552 (=> (not res!6218) (not e!3915))))

(declare-fun lt!3750 () (_ BitVec 32))

(assert (=> b!7552 (= res!6218 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3750 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3750) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7552 (= lt!3750 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7553 () Bool)

(declare-fun res!6219 () Bool)

(assert (=> b!7553 (=> (not res!6219) (not e!3919))))

(declare-fun xxInv!0 (array!594) Bool)

(assert (=> b!7553 (= res!6219 (xxInv!0 xx!50))))

(assert (= (and start!1459 res!6215) b!7553))

(assert (= (and b!7553 res!6219) b!7552))

(assert (= (and b!7552 res!6218) b!7549))

(assert (= (and b!7549 c!872) b!7548))

(assert (= (and b!7549 (not c!872)) b!7550))

(assert (= (and b!7549 res!6216) b!7547))

(assert (= (and b!7547 res!6220) b!7551))

(assert (= (and b!7551 res!6217) b!7546))

(declare-fun m!13735 () Bool)

(assert (=> start!1459 m!13735))

(declare-fun m!13737 () Bool)

(assert (=> start!1459 m!13737))

(declare-fun m!13739 () Bool)

(assert (=> start!1459 m!13739))

(declare-fun m!13741 () Bool)

(assert (=> b!7551 m!13741))

(declare-fun m!13743 () Bool)

(assert (=> b!7553 m!13743))

(declare-fun m!13745 () Bool)

(assert (=> b!7547 m!13745))

(declare-fun m!13747 () Bool)

(assert (=> b!7548 m!13747))

(check-sat (not b!7547) (not b!7553) (not b!7548) (not b!7551) (not start!1459))
(check-sat)
