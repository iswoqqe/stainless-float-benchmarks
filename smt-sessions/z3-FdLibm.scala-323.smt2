; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1851 () Bool)

(assert start!1851)

(declare-fun res!7840 () Bool)

(declare-fun e!5449 () Bool)

(assert (=> start!1851 (=> (not res!7840) (not e!5449))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1851 (= res!7840 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1851 e!5449))

(assert (=> start!1851 true))

(declare-fun b!9537 () Bool)

(declare-fun e!5448 () Bool)

(assert (=> b!9537 (= e!5449 e!5448)))

(declare-fun res!7839 () Bool)

(assert (=> b!9537 (=> (not res!7839) (not e!5448))))

(declare-fun lt!4818 () (_ BitVec 32))

(assert (=> b!9537 (= res!7839 (and (bvsle #b11111111111111111111111111101001 lt!4818) (bvsle lt!4818 #b00000000000000000000001111101000)))))

(declare-fun lt!4817 () (_ BitVec 32))

(assert (=> b!9537 (= lt!4818 (bvsub (bvashr lt!4817 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9537 (= lt!4817 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9538 () Bool)

(declare-fun e!5447 () Bool)

(assert (=> b!9538 (= e!5448 e!5447)))

(declare-fun res!7838 () Bool)

(assert (=> b!9538 (=> (not res!7838) (not e!5447))))

(declare-fun lt!4820 () (_ BitVec 32))

(assert (=> b!9538 (= res!7838 (and (bvsle #b00000000000000000000000000011000 lt!4820) (bvsle lt!4820 #b00000000000000000000001111110000) (= (bvsrem lt!4820 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4819 () (_ BitVec 32))

(assert (=> b!9538 (= lt!4820 (ite (bvslt lt!4819 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4819))))

(assert (=> b!9538 (= lt!4819 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4818 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9539 () Bool)

(assert (=> b!9539 (= e!5447 false)))

(declare-fun lt!4821 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9539 (= lt!4821 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4817 (bvshl lt!4820 #b00000000000000000000000000010100))))))

(assert (= (and start!1851 res!7840) b!9537))

(assert (= (and b!9537 res!7839) b!9538))

(assert (= (and b!9538 res!7838) b!9539))

(declare-fun m!13987 () Bool)

(assert (=> b!9537 m!13987))

(declare-fun m!13989 () Bool)

(assert (=> b!9539 m!13989))

(assert (=> b!9539 m!13989))

(declare-fun m!13991 () Bool)

(assert (=> b!9539 m!13991))

(assert (=> b!9539 m!13991))

(declare-fun m!13993 () Bool)

(assert (=> b!9539 m!13993))

(check-sat (not b!9539) (not b!9537))
(check-sat)
