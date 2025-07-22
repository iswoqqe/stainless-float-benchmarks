; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1433 () Bool)

(assert start!1433)

(declare-fun b!7178 () Bool)

(declare-fun res!5877 () Bool)

(declare-fun e!3846 () Bool)

(assert (=> b!7178 (=> (not res!5877) (not e!3846))))

(declare-datatypes ((array!591 0))(
  ( (array!592 (arr!264 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!264 (_ BitVec 32))) )
))
(declare-fun xx!50 () array!591)

(declare-fun xxInv!0 (array!591) Bool)

(assert (=> b!7178 (= res!5877 (xxInv!0 xx!50))))

(declare-fun b!7179 () Bool)

(declare-datatypes ((Unit!489 0))(
  ( (Unit!490) )
))
(declare-datatypes ((tuple3!122 0))(
  ( (tuple3!123 (_1!180 Unit!489) (_2!180 (_ BitVec 32)) (_3!161 array!591)) )
))
(declare-fun e!3850 () tuple3!122)

(declare-fun lt!3678 () (_ BitVec 32))

(declare-fun lt!3679 () array!591)

(declare-fun Unit!491 () Unit!489)

(assert (=> b!7179 (= e!3850 (tuple3!123 Unit!491 lt!3678 lt!3679))))

(declare-fun b!7180 () Bool)

(declare-fun res!5879 () Bool)

(declare-fun e!3844 () Bool)

(assert (=> b!7180 (=> (not res!5879) (not e!3844))))

(declare-fun f!79 () array!591)

(declare-fun fInv!0 (array!591) Bool)

(assert (=> b!7180 (= res!5879 (fInv!0 f!79))))

(declare-fun res!5882 () Bool)

(assert (=> start!1433 (=> (not res!5882) (not e!3846))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1433 (= res!5882 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1433 e!3846))

(declare-fun array_inv!214 (array!591) Bool)

(assert (=> start!1433 (array_inv!214 f!79)))

(declare-fun q!51 () array!591)

(assert (=> start!1433 (array_inv!214 q!51)))

(assert (=> start!1433 true))

(assert (=> start!1433 (array_inv!214 xx!50)))

(declare-fun b!7181 () Bool)

(declare-fun e!3847 () Bool)

(assert (=> b!7181 (= e!3847 e!3844)))

(declare-fun res!5880 () Bool)

(assert (=> b!7181 (=> (not res!5880) (not e!3844))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7181 (= res!5880 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3680 () tuple3!122)

(assert (=> b!7181 (= lt!3680 e!3850)))

(declare-fun c!857 () Bool)

(assert (=> b!7181 (= c!857 (bvsle lt!3678 (bvadd (bvsub (size!264 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7181 (= lt!3678 #b00000000000000000000000000000000)))

(assert (=> b!7181 (= lt!3679 (array!592 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7182 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!591 (_ BitVec 32) array!591) tuple3!122)

(assert (=> b!7182 (= e!3850 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3678 lt!3679))))

(declare-fun b!7183 () Bool)

(assert (=> b!7183 (= e!3844 (and (bvsle i!190 jz!36) (bvslt (bvsub (bvadd jz!36 #b00000000000000000000000000000001) i!190) #b00000000000000000000000000000000)))))

(declare-fun b!7184 () Bool)

(declare-fun res!5881 () Bool)

(assert (=> b!7184 (=> (not res!5881) (not e!3844))))

(declare-fun qInv!0 (array!591) Bool)

(assert (=> b!7184 (= res!5881 (qInv!0 q!51))))

(declare-fun b!7185 () Bool)

(assert (=> b!7185 (= e!3846 e!3847)))

(declare-fun res!5878 () Bool)

(assert (=> b!7185 (=> (not res!5878) (not e!3847))))

(declare-fun lt!3681 () (_ BitVec 32))

(assert (=> b!7185 (= res!5878 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3681 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3681) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7185 (= lt!3681 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1433 res!5882) b!7178))

(assert (= (and b!7178 res!5877) b!7185))

(assert (= (and b!7185 res!5878) b!7181))

(assert (= (and b!7181 c!857) b!7182))

(assert (= (and b!7181 (not c!857)) b!7179))

(assert (= (and b!7181 res!5880) b!7180))

(assert (= (and b!7180 res!5879) b!7184))

(assert (= (and b!7184 res!5881) b!7183))

(declare-fun m!11911 () Bool)

(assert (=> start!1433 m!11911))

(declare-fun m!11913 () Bool)

(assert (=> start!1433 m!11913))

(declare-fun m!11915 () Bool)

(assert (=> start!1433 m!11915))

(declare-fun m!11917 () Bool)

(assert (=> b!7184 m!11917))

(declare-fun m!11919 () Bool)

(assert (=> b!7182 m!11919))

(declare-fun m!11921 () Bool)

(assert (=> b!7178 m!11921))

(declare-fun m!11923 () Bool)

(assert (=> b!7180 m!11923))

(check-sat (not b!7180) (not b!7178) (not start!1433) (not b!7184) (not b!7182))
(check-sat)
