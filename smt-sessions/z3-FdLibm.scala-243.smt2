; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1427 () Bool)

(assert start!1427)

(declare-fun b!7109 () Bool)

(declare-fun e!3786 () Bool)

(declare-fun e!3787 () Bool)

(assert (=> b!7109 (= e!3786 e!3787)))

(declare-fun res!5828 () Bool)

(assert (=> b!7109 (=> (not res!5828) (not e!3787))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3645 () (_ BitVec 32))

(assert (=> b!7109 (= res!5828 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3645 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3645) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7109 (= lt!3645 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun lt!3642 () (_ BitVec 32))

(declare-datatypes ((array!585 0))(
  ( (array!586 (arr!261 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!261 (_ BitVec 32))) )
))
(declare-fun lt!3643 () array!585)

(declare-fun b!7110 () Bool)

(declare-fun jz!36 () (_ BitVec 32))

(declare-datatypes ((Unit!480 0))(
  ( (Unit!481) )
))
(declare-datatypes ((tuple3!116 0))(
  ( (tuple3!117 (_1!177 Unit!480) (_2!177 (_ BitVec 32)) (_3!158 array!585)) )
))
(declare-fun e!3785 () tuple3!116)

(declare-fun xx!50 () array!585)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!585 (_ BitVec 32) array!585) tuple3!116)

(assert (=> b!7110 (= e!3785 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3642 lt!3643))))

(declare-fun b!7111 () Bool)

(declare-fun res!5826 () Bool)

(assert (=> b!7111 (=> (not res!5826) (not e!3786))))

(declare-fun xxInv!0 (array!585) Bool)

(assert (=> b!7111 (= res!5826 (xxInv!0 xx!50))))

(declare-fun res!5827 () Bool)

(assert (=> start!1427 (=> (not res!5827) (not e!3786))))

(assert (=> start!1427 (= res!5827 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1427 e!3786))

(assert (=> start!1427 true))

(declare-fun array_inv!211 (array!585) Bool)

(assert (=> start!1427 (array_inv!211 xx!50)))

(declare-fun b!7112 () Bool)

(declare-fun Unit!482 () Unit!480)

(assert (=> b!7112 (= e!3785 (tuple3!117 Unit!482 lt!3642 lt!3643))))

(declare-fun b!7113 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7113 (= e!3787 (and (bvsle #b00000000000000000000000000000000 i!190) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!3644 () tuple3!116)

(assert (=> b!7113 (= lt!3644 e!3785)))

(declare-fun c!848 () Bool)

(assert (=> b!7113 (= c!848 (bvsle lt!3642 (bvadd (bvsub (size!261 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7113 (= lt!3642 #b00000000000000000000000000000000)))

(assert (=> b!7113 (= lt!3643 (array!586 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(assert (= (and start!1427 res!5827) b!7111))

(assert (= (and b!7111 res!5826) b!7109))

(assert (= (and b!7109 res!5828) b!7113))

(assert (= (and b!7113 c!848) b!7110))

(assert (= (and b!7113 (not c!848)) b!7112))

(declare-fun m!11877 () Bool)

(assert (=> b!7110 m!11877))

(declare-fun m!11879 () Bool)

(assert (=> b!7111 m!11879))

(declare-fun m!11881 () Bool)

(assert (=> start!1427 m!11881))

(check-sat (not b!7111) (not start!1427) (not b!7110))
(check-sat)
