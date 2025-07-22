; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1437 () Bool)

(assert start!1437)

(declare-fun b!7226 () Bool)

(declare-fun res!5916 () Bool)

(declare-fun e!3886 () Bool)

(assert (=> b!7226 (=> (not res!5916) (not e!3886))))

(declare-datatypes ((array!595 0))(
  ( (array!596 (arr!266 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!266 (_ BitVec 32))) )
))
(declare-fun f!79 () array!595)

(declare-fun fInv!0 (array!595) Bool)

(assert (=> b!7226 (= res!5916 (fInv!0 f!79))))

(declare-fun res!5913 () Bool)

(declare-fun e!3891 () Bool)

(assert (=> start!1437 (=> (not res!5913) (not e!3891))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1437 (= res!5913 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1437 e!3891))

(declare-fun array_inv!216 (array!595) Bool)

(assert (=> start!1437 (array_inv!216 f!79)))

(declare-fun q!51 () array!595)

(assert (=> start!1437 (array_inv!216 q!51)))

(assert (=> start!1437 true))

(declare-fun xx!50 () array!595)

(assert (=> start!1437 (array_inv!216 xx!50)))

(declare-fun b!7227 () Bool)

(declare-fun res!5915 () Bool)

(assert (=> b!7227 (=> (not res!5915) (not e!3891))))

(declare-fun xxInv!0 (array!595) Bool)

(assert (=> b!7227 (= res!5915 (xxInv!0 xx!50))))

(declare-fun b!7228 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7228 (= e!3886 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(declare-fun b!7229 () Bool)

(declare-fun res!5918 () Bool)

(assert (=> b!7229 (=> (not res!5918) (not e!3886))))

(declare-fun qInv!0 (array!595) Bool)

(assert (=> b!7229 (= res!5918 (qInv!0 q!51))))

(declare-fun b!7230 () Bool)

(declare-fun e!3888 () Bool)

(assert (=> b!7230 (= e!3891 e!3888)))

(declare-fun res!5914 () Bool)

(assert (=> b!7230 (=> (not res!5914) (not e!3888))))

(declare-fun lt!3704 () (_ BitVec 32))

(assert (=> b!7230 (= res!5914 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3704 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3704) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7230 (= lt!3704 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun lt!3705 () array!595)

(declare-fun lt!3703 () (_ BitVec 32))

(declare-fun b!7231 () Bool)

(declare-datatypes ((Unit!495 0))(
  ( (Unit!496) )
))
(declare-datatypes ((tuple3!126 0))(
  ( (tuple3!127 (_1!182 Unit!495) (_2!182 (_ BitVec 32)) (_3!163 array!595)) )
))
(declare-fun e!3887 () tuple3!126)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!595 (_ BitVec 32) array!595) tuple3!126)

(assert (=> b!7231 (= e!3887 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3703 lt!3705))))

(declare-fun b!7232 () Bool)

(assert (=> b!7232 (= e!3888 e!3886)))

(declare-fun res!5917 () Bool)

(assert (=> b!7232 (=> (not res!5917) (not e!3886))))

(assert (=> b!7232 (= res!5917 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3702 () tuple3!126)

(assert (=> b!7232 (= lt!3702 e!3887)))

(declare-fun c!863 () Bool)

(assert (=> b!7232 (= c!863 (bvsle lt!3703 (bvadd (bvsub (size!266 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7232 (= lt!3703 #b00000000000000000000000000000000)))

(assert (=> b!7232 (= lt!3705 (array!596 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7233 () Bool)

(declare-fun Unit!497 () Unit!495)

(assert (=> b!7233 (= e!3887 (tuple3!127 Unit!497 lt!3703 lt!3705))))

(assert (= (and start!1437 res!5913) b!7227))

(assert (= (and b!7227 res!5915) b!7230))

(assert (= (and b!7230 res!5914) b!7232))

(assert (= (and b!7232 c!863) b!7231))

(assert (= (and b!7232 (not c!863)) b!7233))

(assert (= (and b!7232 res!5917) b!7226))

(assert (= (and b!7226 res!5916) b!7229))

(assert (= (and b!7229 res!5918) b!7228))

(declare-fun m!11939 () Bool)

(assert (=> b!7227 m!11939))

(declare-fun m!11941 () Bool)

(assert (=> b!7229 m!11941))

(declare-fun m!11943 () Bool)

(assert (=> start!1437 m!11943))

(declare-fun m!11945 () Bool)

(assert (=> start!1437 m!11945))

(declare-fun m!11947 () Bool)

(assert (=> start!1437 m!11947))

(declare-fun m!11949 () Bool)

(assert (=> b!7231 m!11949))

(declare-fun m!11951 () Bool)

(assert (=> b!7226 m!11951))

(check-sat (not b!7231) (not start!1437) (not b!7229) (not b!7227) (not b!7226))
(check-sat)
