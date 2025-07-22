; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1441 () Bool)

(assert start!1441)

(declare-fun res!5949 () Bool)

(declare-fun e!3928 () Bool)

(assert (=> start!1441 (=> (not res!5949) (not e!3928))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1441 (= res!5949 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1441 e!3928))

(declare-datatypes ((array!599 0))(
  ( (array!600 (arr!268 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!268 (_ BitVec 32))) )
))
(declare-fun f!79 () array!599)

(declare-fun array_inv!218 (array!599) Bool)

(assert (=> start!1441 (array_inv!218 f!79)))

(declare-fun q!51 () array!599)

(assert (=> start!1441 (array_inv!218 q!51)))

(assert (=> start!1441 true))

(declare-fun xx!50 () array!599)

(assert (=> start!1441 (array_inv!218 xx!50)))

(declare-fun b!7274 () Bool)

(declare-fun res!5952 () Bool)

(assert (=> b!7274 (=> (not res!5952) (not e!3928))))

(declare-fun xxInv!0 (array!599) Bool)

(assert (=> b!7274 (= res!5952 (xxInv!0 xx!50))))

(declare-fun b!7275 () Bool)

(declare-fun res!5951 () Bool)

(declare-fun e!3931 () Bool)

(assert (=> b!7275 (=> (not res!5951) (not e!3931))))

(declare-fun fInv!0 (array!599) Bool)

(assert (=> b!7275 (= res!5951 (fInv!0 f!79))))

(declare-fun b!7276 () Bool)

(declare-fun e!3932 () Bool)

(assert (=> b!7276 (= e!3932 e!3931)))

(declare-fun res!5953 () Bool)

(assert (=> b!7276 (=> (not res!5953) (not e!3931))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7276 (= res!5953 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!501 0))(
  ( (Unit!502) )
))
(declare-datatypes ((tuple3!130 0))(
  ( (tuple3!131 (_1!184 Unit!501) (_2!184 (_ BitVec 32)) (_3!165 array!599)) )
))
(declare-fun lt!3728 () tuple3!130)

(declare-fun e!3934 () tuple3!130)

(assert (=> b!7276 (= lt!3728 e!3934)))

(declare-fun c!869 () Bool)

(declare-fun lt!3726 () (_ BitVec 32))

(assert (=> b!7276 (= c!869 (bvsle lt!3726 (bvadd (bvsub (size!268 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7276 (= lt!3726 #b00000000000000000000000000000000)))

(declare-fun lt!3729 () array!599)

(assert (=> b!7276 (= lt!3729 (array!600 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7277 () Bool)

(assert (=> b!7277 (= e!3931 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!7278 () Bool)

(declare-fun res!5954 () Bool)

(assert (=> b!7278 (=> (not res!5954) (not e!3931))))

(declare-fun qInv!0 (array!599) Bool)

(assert (=> b!7278 (= res!5954 (qInv!0 q!51))))

(declare-fun b!7279 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!599 (_ BitVec 32) array!599) tuple3!130)

(assert (=> b!7279 (= e!3934 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3726 lt!3729))))

(declare-fun b!7280 () Bool)

(assert (=> b!7280 (= e!3928 e!3932)))

(declare-fun res!5950 () Bool)

(assert (=> b!7280 (=> (not res!5950) (not e!3932))))

(declare-fun lt!3727 () (_ BitVec 32))

(assert (=> b!7280 (= res!5950 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3727 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3727) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7280 (= lt!3727 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7281 () Bool)

(declare-fun Unit!503 () Unit!501)

(assert (=> b!7281 (= e!3934 (tuple3!131 Unit!503 lt!3726 lt!3729))))

(assert (= (and start!1441 res!5949) b!7274))

(assert (= (and b!7274 res!5952) b!7280))

(assert (= (and b!7280 res!5950) b!7276))

(assert (= (and b!7276 c!869) b!7279))

(assert (= (and b!7276 (not c!869)) b!7281))

(assert (= (and b!7276 res!5953) b!7275))

(assert (= (and b!7275 res!5951) b!7278))

(assert (= (and b!7278 res!5954) b!7277))

(declare-fun m!11967 () Bool)

(assert (=> b!7279 m!11967))

(declare-fun m!11969 () Bool)

(assert (=> b!7275 m!11969))

(declare-fun m!11971 () Bool)

(assert (=> b!7274 m!11971))

(declare-fun m!11973 () Bool)

(assert (=> b!7278 m!11973))

(declare-fun m!11975 () Bool)

(assert (=> start!1441 m!11975))

(declare-fun m!11977 () Bool)

(assert (=> start!1441 m!11977))

(declare-fun m!11979 () Bool)

(assert (=> start!1441 m!11979))

(check-sat (not b!7279) (not b!7278) (not b!7274) (not b!7275) (not start!1441))
(check-sat)
