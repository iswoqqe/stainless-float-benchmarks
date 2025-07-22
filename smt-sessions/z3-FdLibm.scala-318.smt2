; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1817 () Bool)

(assert start!1817)

(declare-fun res!7795 () Bool)

(declare-fun e!5367 () Bool)

(assert (=> start!1817 (=> (not res!7795) (not e!5367))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1817 (= res!7795 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1817 e!5367))

(assert (=> start!1817 true))

(declare-fun b!9420 () Bool)

(declare-fun e!5368 () Bool)

(assert (=> b!9420 (= e!5367 e!5368)))

(declare-fun res!7793 () Bool)

(assert (=> b!9420 (=> (not res!7793) (not e!5368))))

(declare-fun lt!4746 () (_ BitVec 32))

(assert (=> b!9420 (= res!7793 (and (bvsle #b11111111111111111111111111101001 lt!4746) (bvsle lt!4746 #b00000000000000000000001111101000)))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9420 (= lt!4746 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun b!9421 () Bool)

(declare-fun e!5366 () Bool)

(assert (=> b!9421 (= e!5368 e!5366)))

(declare-fun res!7794 () Bool)

(assert (=> b!9421 (=> (not res!7794) (not e!5366))))

(declare-fun lt!4743 () (_ BitVec 32))

(assert (=> b!9421 (= res!7794 (and (bvsle #b00000000000000000000000000011000 lt!4743) (bvsle lt!4743 #b00000000000000000000001111110000) (= (bvsrem lt!4743 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4744 () (_ BitVec 32))

(assert (=> b!9421 (= lt!4743 (ite (bvslt lt!4744 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4744))))

(assert (=> b!9421 (= lt!4744 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4746 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9422 () Bool)

(assert (=> b!9422 (= e!5366 false)))

(declare-fun lt!4745 () (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9422 (= lt!4745 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)))))

(assert (= (and start!1817 res!7795) b!9420))

(assert (= (and b!9420 res!7793) b!9421))

(assert (= (and b!9421 res!7794) b!9422))

(declare-fun m!13927 () Bool)

(assert (=> b!9420 m!13927))

(declare-fun m!13929 () Bool)

(assert (=> b!9422 m!13929))

(assert (=> b!9422 m!13929))

(declare-fun m!13931 () Bool)

(assert (=> b!9422 m!13931))

(check-sat (not b!9422) (not b!9420))
(check-sat)
