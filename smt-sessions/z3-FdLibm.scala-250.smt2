; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1467 () Bool)

(assert start!1467)

(declare-fun b!7642 () Bool)

(declare-fun e!4003 () Bool)

(declare-fun e!3999 () Bool)

(assert (=> b!7642 (= e!4003 e!3999)))

(declare-fun res!6287 () Bool)

(assert (=> b!7642 (=> (not res!6287) (not e!3999))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7642 (= res!6287 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((array!602 0))(
  ( (array!603 (arr!268 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!268 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!516 0))(
  ( (Unit!517) )
))
(declare-datatypes ((tuple3!130 0))(
  ( (tuple3!131 (_1!184 Unit!516) (_2!184 (_ BitVec 32)) (_3!165 array!602)) )
))
(declare-fun lt!3800 () tuple3!130)

(declare-fun e!4004 () tuple3!130)

(assert (=> b!7642 (= lt!3800 e!4004)))

(declare-fun c!884 () Bool)

(declare-fun lt!3798 () (_ BitVec 32))

(declare-fun xx!50 () array!602)

(assert (=> b!7642 (= c!884 (bvsle lt!3798 (bvadd (bvsub (size!268 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7642 (= lt!3798 #b00000000000000000000000000000000)))

(declare-fun lt!3801 () array!602)

(assert (=> b!7642 (= lt!3801 (array!603 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7643 () Bool)

(declare-fun res!6290 () Bool)

(assert (=> b!7643 (=> (not res!6290) (not e!3999))))

(declare-fun q!51 () array!602)

(declare-fun qInv!0 (array!602) Bool)

(assert (=> b!7643 (= res!6290 (qInv!0 q!51))))

(declare-fun res!6292 () Bool)

(declare-fun e!4005 () Bool)

(assert (=> start!1467 (=> (not res!6292) (not e!4005))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1467 (= res!6292 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1467 e!4005))

(declare-fun f!79 () array!602)

(declare-fun array_inv!218 (array!602) Bool)

(assert (=> start!1467 (array_inv!218 f!79)))

(assert (=> start!1467 (array_inv!218 q!51)))

(assert (=> start!1467 true))

(assert (=> start!1467 (array_inv!218 xx!50)))

(declare-fun b!7644 () Bool)

(declare-fun res!6288 () Bool)

(assert (=> b!7644 (=> (not res!6288) (not e!3999))))

(declare-fun fInv!0 (array!602) Bool)

(assert (=> b!7644 (= res!6288 (fInv!0 f!79))))

(declare-fun b!7645 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!602 (_ BitVec 32) array!602) tuple3!130)

(assert (=> b!7645 (= e!4004 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3798 lt!3801))))

(declare-fun b!7646 () Bool)

(declare-fun res!6289 () Bool)

(assert (=> b!7646 (=> (not res!6289) (not e!4005))))

(declare-fun xxInv!0 (array!602) Bool)

(assert (=> b!7646 (= res!6289 (xxInv!0 xx!50))))

(declare-fun b!7647 () Bool)

(assert (=> b!7647 (= e!3999 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!7648 () Bool)

(declare-fun Unit!518 () Unit!516)

(assert (=> b!7648 (= e!4004 (tuple3!131 Unit!518 lt!3798 lt!3801))))

(declare-fun b!7649 () Bool)

(assert (=> b!7649 (= e!4005 e!4003)))

(declare-fun res!6291 () Bool)

(assert (=> b!7649 (=> (not res!6291) (not e!4003))))

(declare-fun lt!3799 () (_ BitVec 32))

(assert (=> b!7649 (= res!6291 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3799 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3799) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7649 (= lt!3799 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1467 res!6292) b!7646))

(assert (= (and b!7646 res!6289) b!7649))

(assert (= (and b!7649 res!6291) b!7642))

(assert (= (and b!7642 c!884) b!7645))

(assert (= (and b!7642 (not c!884)) b!7648))

(assert (= (and b!7642 res!6287) b!7644))

(assert (= (and b!7644 res!6288) b!7643))

(assert (= (and b!7643 res!6290) b!7647))

(declare-fun m!13791 () Bool)

(assert (=> b!7646 m!13791))

(declare-fun m!13793 () Bool)

(assert (=> b!7643 m!13793))

(declare-fun m!13795 () Bool)

(assert (=> b!7644 m!13795))

(declare-fun m!13797 () Bool)

(assert (=> start!1467 m!13797))

(declare-fun m!13799 () Bool)

(assert (=> start!1467 m!13799))

(declare-fun m!13801 () Bool)

(assert (=> start!1467 m!13801))

(declare-fun m!13803 () Bool)

(assert (=> b!7645 m!13803))

(check-sat (not b!7644) (not b!7643) (not start!1467) (not b!7645) (not b!7646))
(check-sat)
