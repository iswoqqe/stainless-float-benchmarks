; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1429 () Bool)

(assert start!1429)

(declare-fun b!7130 () Bool)

(declare-fun res!5843 () Bool)

(declare-fun e!3805 () Bool)

(assert (=> b!7130 (=> (not res!5843) (not e!3805))))

(declare-datatypes ((array!587 0))(
  ( (array!588 (arr!262 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!262 (_ BitVec 32))) )
))
(declare-fun xx!50 () array!587)

(declare-fun xxInv!0 (array!587) Bool)

(assert (=> b!7130 (= res!5843 (xxInv!0 xx!50))))

(declare-fun b!7132 () Bool)

(declare-fun e!3802 () Bool)

(assert (=> b!7132 (= e!3805 e!3802)))

(declare-fun res!5845 () Bool)

(assert (=> b!7132 (=> (not res!5845) (not e!3802))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3657 () (_ BitVec 32))

(assert (=> b!7132 (= res!5845 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3657 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3657) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7132 (= lt!3657 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7133 () Bool)

(declare-fun e!3807 () Bool)

(assert (=> b!7133 (= e!3802 e!3807)))

(declare-fun res!5844 () Bool)

(assert (=> b!7133 (=> (not res!5844) (not e!3807))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7133 (= res!5844 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!483 0))(
  ( (Unit!484) )
))
(declare-datatypes ((tuple3!118 0))(
  ( (tuple3!119 (_1!178 Unit!483) (_2!178 (_ BitVec 32)) (_3!159 array!587)) )
))
(declare-fun lt!3654 () tuple3!118)

(declare-fun e!3808 () tuple3!118)

(assert (=> b!7133 (= lt!3654 e!3808)))

(declare-fun c!851 () Bool)

(declare-fun lt!3656 () (_ BitVec 32))

(assert (=> b!7133 (= c!851 (bvsle lt!3656 (bvadd (bvsub (size!262 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7133 (= lt!3656 #b00000000000000000000000000000000)))

(declare-fun lt!3655 () array!587)

(assert (=> b!7133 (= lt!3655 (array!588 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7134 () Bool)

(declare-fun res!5841 () Bool)

(assert (=> b!7134 (=> (not res!5841) (not e!3807))))

(declare-fun q!51 () array!587)

(declare-fun qInv!0 (array!587) Bool)

(assert (=> b!7134 (= res!5841 (qInv!0 q!51))))

(declare-fun b!7135 () Bool)

(declare-fun res!5842 () Bool)

(assert (=> b!7135 (=> (not res!5842) (not e!3807))))

(declare-fun f!79 () array!587)

(declare-fun fInv!0 (array!587) Bool)

(assert (=> b!7135 (= res!5842 (fInv!0 f!79))))

(declare-fun b!7136 () Bool)

(declare-fun Unit!485 () Unit!483)

(assert (=> b!7136 (= e!3808 (tuple3!119 Unit!485 lt!3656 lt!3655))))

(declare-fun b!7137 () Bool)

(assert (=> b!7137 (= e!3807 (and (bvsle i!190 jz!36) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!7131 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!587 (_ BitVec 32) array!587) tuple3!118)

(assert (=> b!7131 (= e!3808 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3656 lt!3655))))

(declare-fun res!5846 () Bool)

(assert (=> start!1429 (=> (not res!5846) (not e!3805))))

(assert (=> start!1429 (= res!5846 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1429 e!3805))

(declare-fun array_inv!212 (array!587) Bool)

(assert (=> start!1429 (array_inv!212 f!79)))

(assert (=> start!1429 (array_inv!212 q!51)))

(assert (=> start!1429 true))

(assert (=> start!1429 (array_inv!212 xx!50)))

(assert (= (and start!1429 res!5846) b!7130))

(assert (= (and b!7130 res!5843) b!7132))

(assert (= (and b!7132 res!5845) b!7133))

(assert (= (and b!7133 c!851) b!7131))

(assert (= (and b!7133 (not c!851)) b!7136))

(assert (= (and b!7133 res!5844) b!7135))

(assert (= (and b!7135 res!5842) b!7134))

(assert (= (and b!7134 res!5841) b!7137))

(declare-fun m!11883 () Bool)

(assert (=> b!7130 m!11883))

(declare-fun m!11885 () Bool)

(assert (=> b!7134 m!11885))

(declare-fun m!11887 () Bool)

(assert (=> b!7135 m!11887))

(declare-fun m!11889 () Bool)

(assert (=> start!1429 m!11889))

(declare-fun m!11891 () Bool)

(assert (=> start!1429 m!11891))

(declare-fun m!11893 () Bool)

(assert (=> start!1429 m!11893))

(declare-fun m!11895 () Bool)

(assert (=> b!7131 m!11895))

(check-sat (not start!1429) (not b!7130) (not b!7135) (not b!7134) (not b!7131))
(check-sat)
