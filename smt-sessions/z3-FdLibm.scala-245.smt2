; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1431 () Bool)

(assert start!1431)

(declare-fun b!7154 () Bool)

(declare-datatypes ((array!589 0))(
  ( (array!590 (arr!263 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!263 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!486 0))(
  ( (Unit!487) )
))
(declare-datatypes ((tuple3!120 0))(
  ( (tuple3!121 (_1!179 Unit!486) (_2!179 (_ BitVec 32)) (_3!160 array!589)) )
))
(declare-fun e!3825 () tuple3!120)

(declare-fun lt!3667 () (_ BitVec 32))

(declare-fun lt!3668 () array!589)

(declare-fun Unit!488 () Unit!486)

(assert (=> b!7154 (= e!3825 (tuple3!121 Unit!488 lt!3667 lt!3668))))

(declare-fun b!7155 () Bool)

(declare-fun e!3826 () Bool)

(declare-fun e!3829 () Bool)

(assert (=> b!7155 (= e!3826 e!3829)))

(declare-fun res!5863 () Bool)

(assert (=> b!7155 (=> (not res!5863) (not e!3829))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7155 (= res!5863 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3666 () tuple3!120)

(assert (=> b!7155 (= lt!3666 e!3825)))

(declare-fun c!854 () Bool)

(declare-fun xx!50 () array!589)

(assert (=> b!7155 (= c!854 (bvsle lt!3667 (bvadd (bvsub (size!263 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7155 (= lt!3667 #b00000000000000000000000000000000)))

(assert (=> b!7155 (= lt!3668 (array!590 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7156 () Bool)

(declare-fun e!3824 () Bool)

(assert (=> b!7156 (= e!3824 e!3826)))

(declare-fun res!5860 () Bool)

(assert (=> b!7156 (=> (not res!5860) (not e!3826))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3669 () (_ BitVec 32))

(assert (=> b!7156 (= res!5860 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3669 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3669) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7156 (= lt!3669 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7157 () Bool)

(declare-fun res!5864 () Bool)

(assert (=> b!7157 (=> (not res!5864) (not e!3824))))

(declare-fun xxInv!0 (array!589) Bool)

(assert (=> b!7157 (= res!5864 (xxInv!0 xx!50))))

(declare-fun b!7158 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!589 (_ BitVec 32) array!589) tuple3!120)

(assert (=> b!7158 (= e!3825 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3667 lt!3668))))

(declare-fun b!7159 () Bool)

(assert (=> b!7159 (= e!3829 (and (bvsle i!190 jz!36) (let ((lhs!76 (bvadd jz!36 #b00000000000000000000000000000001))) (and (not (= (bvand lhs!76 #b10000000000000000000000000000000) (bvand i!190 #b10000000000000000000000000000000))) (not (= (bvand lhs!76 #b10000000000000000000000000000000) (bvand (bvsub lhs!76 i!190) #b10000000000000000000000000000000)))))))))

(declare-fun res!5862 () Bool)

(assert (=> start!1431 (=> (not res!5862) (not e!3824))))

(assert (=> start!1431 (= res!5862 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1431 e!3824))

(declare-fun f!79 () array!589)

(declare-fun array_inv!213 (array!589) Bool)

(assert (=> start!1431 (array_inv!213 f!79)))

(declare-fun q!51 () array!589)

(assert (=> start!1431 (array_inv!213 q!51)))

(assert (=> start!1431 true))

(assert (=> start!1431 (array_inv!213 xx!50)))

(declare-fun b!7160 () Bool)

(declare-fun res!5861 () Bool)

(assert (=> b!7160 (=> (not res!5861) (not e!3829))))

(declare-fun qInv!0 (array!589) Bool)

(assert (=> b!7160 (= res!5861 (qInv!0 q!51))))

(declare-fun b!7161 () Bool)

(declare-fun res!5859 () Bool)

(assert (=> b!7161 (=> (not res!5859) (not e!3829))))

(declare-fun fInv!0 (array!589) Bool)

(assert (=> b!7161 (= res!5859 (fInv!0 f!79))))

(assert (= (and start!1431 res!5862) b!7157))

(assert (= (and b!7157 res!5864) b!7156))

(assert (= (and b!7156 res!5860) b!7155))

(assert (= (and b!7155 c!854) b!7158))

(assert (= (and b!7155 (not c!854)) b!7154))

(assert (= (and b!7155 res!5863) b!7161))

(assert (= (and b!7161 res!5859) b!7160))

(assert (= (and b!7160 res!5861) b!7159))

(declare-fun m!11897 () Bool)

(assert (=> b!7158 m!11897))

(declare-fun m!11899 () Bool)

(assert (=> b!7160 m!11899))

(declare-fun m!11901 () Bool)

(assert (=> b!7157 m!11901))

(declare-fun m!11903 () Bool)

(assert (=> start!1431 m!11903))

(declare-fun m!11905 () Bool)

(assert (=> start!1431 m!11905))

(declare-fun m!11907 () Bool)

(assert (=> start!1431 m!11907))

(declare-fun m!11909 () Bool)

(assert (=> b!7161 m!11909))

(check-sat (not b!7161) (not start!1431) (not b!7157) (not b!7160) (not b!7158))
(check-sat)
