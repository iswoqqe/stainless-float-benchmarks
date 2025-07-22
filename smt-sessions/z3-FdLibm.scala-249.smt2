; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1439 () Bool)

(assert start!1439)

(declare-fun b!7250 () Bool)

(declare-fun res!5933 () Bool)

(declare-fun e!3912 () Bool)

(assert (=> b!7250 (=> (not res!5933) (not e!3912))))

(declare-datatypes ((array!597 0))(
  ( (array!598 (arr!267 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!267 (_ BitVec 32))) )
))
(declare-fun xx!50 () array!597)

(declare-fun xxInv!0 (array!597) Bool)

(assert (=> b!7250 (= res!5933 (xxInv!0 xx!50))))

(declare-fun b!7251 () Bool)

(declare-fun res!5934 () Bool)

(declare-fun e!3910 () Bool)

(assert (=> b!7251 (=> (not res!5934) (not e!3910))))

(declare-fun f!79 () array!597)

(declare-fun fInv!0 (array!597) Bool)

(assert (=> b!7251 (= res!5934 (fInv!0 f!79))))

(declare-fun b!7252 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7252 (= e!3910 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000010) #b10000000000000000000000000000000)))))))

(declare-fun b!7253 () Bool)

(declare-fun e!3911 () Bool)

(assert (=> b!7253 (= e!3911 e!3910)))

(declare-fun res!5936 () Bool)

(assert (=> b!7253 (=> (not res!5936) (not e!3910))))

(assert (=> b!7253 (= res!5936 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!498 0))(
  ( (Unit!499) )
))
(declare-datatypes ((tuple3!128 0))(
  ( (tuple3!129 (_1!183 Unit!498) (_2!183 (_ BitVec 32)) (_3!164 array!597)) )
))
(declare-fun lt!3716 () tuple3!128)

(declare-fun e!3908 () tuple3!128)

(assert (=> b!7253 (= lt!3716 e!3908)))

(declare-fun c!866 () Bool)

(declare-fun lt!3715 () (_ BitVec 32))

(assert (=> b!7253 (= c!866 (bvsle lt!3715 (bvadd (bvsub (size!267 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7253 (= lt!3715 #b00000000000000000000000000000000)))

(declare-fun lt!3714 () array!597)

(assert (=> b!7253 (= lt!3714 (array!598 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun b!7254 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!597 (_ BitVec 32) array!597) tuple3!128)

(assert (=> b!7254 (= e!3908 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3715 lt!3714))))

(declare-fun res!5931 () Bool)

(assert (=> start!1439 (=> (not res!5931) (not e!3912))))

(assert (=> start!1439 (= res!5931 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1439 e!3912))

(declare-fun array_inv!217 (array!597) Bool)

(assert (=> start!1439 (array_inv!217 f!79)))

(declare-fun q!51 () array!597)

(assert (=> start!1439 (array_inv!217 q!51)))

(assert (=> start!1439 true))

(assert (=> start!1439 (array_inv!217 xx!50)))

(declare-fun b!7255 () Bool)

(declare-fun res!5932 () Bool)

(assert (=> b!7255 (=> (not res!5932) (not e!3910))))

(declare-fun qInv!0 (array!597) Bool)

(assert (=> b!7255 (= res!5932 (qInv!0 q!51))))

(declare-fun b!7256 () Bool)

(assert (=> b!7256 (= e!3912 e!3911)))

(declare-fun res!5935 () Bool)

(assert (=> b!7256 (=> (not res!5935) (not e!3911))))

(declare-fun lt!3717 () (_ BitVec 32))

(assert (=> b!7256 (= res!5935 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3717 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3717) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7256 (= lt!3717 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7257 () Bool)

(declare-fun Unit!500 () Unit!498)

(assert (=> b!7257 (= e!3908 (tuple3!129 Unit!500 lt!3715 lt!3714))))

(assert (= (and start!1439 res!5931) b!7250))

(assert (= (and b!7250 res!5933) b!7256))

(assert (= (and b!7256 res!5935) b!7253))

(assert (= (and b!7253 c!866) b!7254))

(assert (= (and b!7253 (not c!866)) b!7257))

(assert (= (and b!7253 res!5936) b!7251))

(assert (= (and b!7251 res!5934) b!7255))

(assert (= (and b!7255 res!5932) b!7252))

(declare-fun m!11953 () Bool)

(assert (=> b!7251 m!11953))

(declare-fun m!11955 () Bool)

(assert (=> b!7255 m!11955))

(declare-fun m!11957 () Bool)

(assert (=> b!7254 m!11957))

(declare-fun m!11959 () Bool)

(assert (=> start!1439 m!11959))

(declare-fun m!11961 () Bool)

(assert (=> start!1439 m!11961))

(declare-fun m!11963 () Bool)

(assert (=> start!1439 m!11963))

(declare-fun m!11965 () Bool)

(assert (=> b!7250 m!11965))

(check-sat (not start!1439) (not b!7251) (not b!7254) (not b!7250) (not b!7255))
(check-sat)
