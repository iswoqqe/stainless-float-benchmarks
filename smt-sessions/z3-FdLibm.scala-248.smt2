; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1463 () Bool)

(assert start!1463)

(declare-fun res!6254 () Bool)

(declare-fun e!3960 () Bool)

(assert (=> start!1463 (=> (not res!6254) (not e!3960))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1463 (= res!6254 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1463 e!3960))

(declare-datatypes ((array!598 0))(
  ( (array!599 (arr!266 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!266 (_ BitVec 32))) )
))
(declare-fun f!79 () array!598)

(declare-fun array_inv!216 (array!598) Bool)

(assert (=> start!1463 (array_inv!216 f!79)))

(declare-fun q!51 () array!598)

(assert (=> start!1463 (array_inv!216 q!51)))

(assert (=> start!1463 true))

(declare-fun xx!50 () array!598)

(assert (=> start!1463 (array_inv!216 xx!50)))

(declare-fun b!7594 () Bool)

(declare-fun e!3962 () Bool)

(declare-fun e!3957 () Bool)

(assert (=> b!7594 (= e!3962 e!3957)))

(declare-fun res!6255 () Bool)

(assert (=> b!7594 (=> (not res!6255) (not e!3957))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7594 (= res!6255 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!510 0))(
  ( (Unit!511) )
))
(declare-datatypes ((tuple3!126 0))(
  ( (tuple3!127 (_1!182 Unit!510) (_2!182 (_ BitVec 32)) (_3!163 array!598)) )
))
(declare-fun lt!3775 () tuple3!126)

(declare-fun e!3963 () tuple3!126)

(assert (=> b!7594 (= lt!3775 e!3963)))

(declare-fun c!878 () Bool)

(declare-fun lt!3776 () (_ BitVec 32))

(assert (=> b!7594 (= c!878 (bvsle lt!3776 (bvadd (bvsub (size!266 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7594 (= lt!3776 #b00000000000000000000000000000000)))

(declare-fun lt!3774 () array!598)

(assert (=> b!7594 (= lt!3774 (array!599 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7595 () Bool)

(declare-fun Unit!512 () Unit!510)

(assert (=> b!7595 (= e!3963 (tuple3!127 Unit!512 lt!3776 lt!3774))))

(declare-fun b!7596 () Bool)

(assert (=> b!7596 (= e!3960 e!3962)))

(declare-fun res!6253 () Bool)

(assert (=> b!7596 (=> (not res!6253) (not e!3962))))

(declare-fun lt!3777 () (_ BitVec 32))

(assert (=> b!7596 (= res!6253 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3777 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3777) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7596 (= lt!3777 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7597 () Bool)

(assert (=> b!7597 (= e!3957 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(declare-fun b!7598 () Bool)

(declare-fun res!6251 () Bool)

(assert (=> b!7598 (=> (not res!6251) (not e!3960))))

(declare-fun xxInv!0 (array!598) Bool)

(assert (=> b!7598 (= res!6251 (xxInv!0 xx!50))))

(declare-fun b!7599 () Bool)

(declare-fun res!6256 () Bool)

(assert (=> b!7599 (=> (not res!6256) (not e!3957))))

(declare-fun fInv!0 (array!598) Bool)

(assert (=> b!7599 (= res!6256 (fInv!0 f!79))))

(declare-fun b!7600 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!598 (_ BitVec 32) array!598) tuple3!126)

(assert (=> b!7600 (= e!3963 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3776 lt!3774))))

(declare-fun b!7601 () Bool)

(declare-fun res!6252 () Bool)

(assert (=> b!7601 (=> (not res!6252) (not e!3957))))

(declare-fun qInv!0 (array!598) Bool)

(assert (=> b!7601 (= res!6252 (qInv!0 q!51))))

(assert (= (and start!1463 res!6254) b!7598))

(assert (= (and b!7598 res!6251) b!7596))

(assert (= (and b!7596 res!6253) b!7594))

(assert (= (and b!7594 c!878) b!7600))

(assert (= (and b!7594 (not c!878)) b!7595))

(assert (= (and b!7594 res!6255) b!7599))

(assert (= (and b!7599 res!6256) b!7601))

(assert (= (and b!7601 res!6252) b!7597))

(declare-fun m!13763 () Bool)

(assert (=> start!1463 m!13763))

(declare-fun m!13765 () Bool)

(assert (=> start!1463 m!13765))

(declare-fun m!13767 () Bool)

(assert (=> start!1463 m!13767))

(declare-fun m!13769 () Bool)

(assert (=> b!7599 m!13769))

(declare-fun m!13771 () Bool)

(assert (=> b!7598 m!13771))

(declare-fun m!13773 () Bool)

(assert (=> b!7600 m!13773))

(declare-fun m!13775 () Bool)

(assert (=> b!7601 m!13775))

(check-sat (not start!1463) (not b!7599) (not b!7598) (not b!7601) (not b!7600))
(check-sat)
