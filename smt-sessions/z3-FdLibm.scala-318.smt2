; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1843 () Bool)

(assert start!1843)

(declare-fun res!8133 () Bool)

(declare-fun e!5437 () Bool)

(assert (=> start!1843 (=> (not res!8133) (not e!5437))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1843 (= res!8133 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1843 e!5437))

(assert (=> start!1843 true))

(declare-fun b!9788 () Bool)

(declare-fun e!5439 () Bool)

(assert (=> b!9788 (= e!5437 e!5439)))

(declare-fun res!8131 () Bool)

(assert (=> b!9788 (=> (not res!8131) (not e!5439))))

(declare-fun lt!4816 () (_ BitVec 32))

(assert (=> b!9788 (= res!8131 (and (bvsle #b11111111111111111111111111101001 lt!4816) (bvsle lt!4816 #b00000000000000000000001111101000)))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9788 (= lt!4816 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun b!9789 () Bool)

(declare-fun e!5438 () Bool)

(assert (=> b!9789 (= e!5439 e!5438)))

(declare-fun res!8132 () Bool)

(assert (=> b!9789 (=> (not res!8132) (not e!5438))))

(declare-fun lt!4817 () (_ BitVec 32))

(assert (=> b!9789 (= res!8132 (and (bvsle #b00000000000000000000000000011000 lt!4817) (bvsle lt!4817 #b00000000000000000000001111110000) (= (bvsrem lt!4817 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4815 () (_ BitVec 32))

(assert (=> b!9789 (= lt!4817 (ite (bvslt lt!4815 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4815))))

(assert (=> b!9789 (= lt!4815 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4816 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9790 () Bool)

(assert (=> b!9790 (= e!5438 false)))

(declare-fun lt!4818 () (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9790 (= lt!4818 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)))))

(assert (= (and start!1843 res!8133) b!9788))

(assert (= (and b!9788 res!8131) b!9789))

(assert (= (and b!9789 res!8132) b!9790))

(declare-fun m!15751 () Bool)

(assert (=> b!9788 m!15751))

(declare-fun m!15753 () Bool)

(assert (=> b!9790 m!15753))

(assert (=> b!9790 m!15753))

(declare-fun m!15755 () Bool)

(assert (=> b!9790 m!15755))

(check-sat (not b!9788) (not b!9790))
(check-sat)
