; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1989 () Bool)

(assert start!1989)

(declare-fun res!8027 () Bool)

(declare-fun e!5781 () Bool)

(assert (=> start!1989 (=> (not res!8027) (not e!5781))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1989 (= res!8027 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1989 e!5781))

(assert (=> start!1989 true))

(declare-fun b!10014 () Bool)

(declare-fun e!5780 () Bool)

(assert (=> b!10014 (= e!5781 e!5780)))

(declare-fun res!8029 () Bool)

(assert (=> b!10014 (=> (not res!8029) (not e!5780))))

(declare-fun lt!5210 () (_ BitVec 32))

(assert (=> b!10014 (= res!8029 (and (bvsle #b11111111111111111111111111101001 lt!5210) (bvsle lt!5210 #b00000000000000000000001111101000)))))

(declare-fun lt!5212 () (_ BitVec 32))

(assert (=> b!10014 (= lt!5210 (bvsub (bvashr lt!5212 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10014 (= lt!5212 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10015 () Bool)

(declare-fun e!5782 () Bool)

(assert (=> b!10015 (= e!5780 e!5782)))

(declare-fun res!8028 () Bool)

(assert (=> b!10015 (=> (not res!8028) (not e!5782))))

(declare-fun lt!5214 () (_ BitVec 32))

(assert (=> b!10015 (= res!8028 (and (bvsle #b00000000000000000000000000011000 lt!5214) (bvsle lt!5214 #b00000000000000000000001111110000) (= (bvsrem lt!5214 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5213 () (_ BitVec 32))

(assert (=> b!10015 (= lt!5214 (ite (bvslt lt!5213 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5213))))

(assert (=> b!10015 (= lt!5213 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5210 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10016 () Bool)

(assert (=> b!10016 (= e!5782 false)))

(declare-fun lt!5211 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10016 (= lt!5211 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5212 (bvshl lt!5214 #b00000000000000000000000000010100))))))

(assert (= (and start!1989 res!8027) b!10014))

(assert (= (and b!10014 res!8029) b!10015))

(assert (= (and b!10015 res!8028) b!10016))

(declare-fun m!14371 () Bool)

(assert (=> b!10014 m!14371))

(declare-fun m!14373 () Bool)

(assert (=> b!10016 m!14373))

(assert (=> b!10016 m!14373))

(declare-fun m!14375 () Bool)

(assert (=> b!10016 m!14375))

(assert (=> b!10016 m!14375))

(declare-fun m!14377 () Bool)

(assert (=> b!10016 m!14377))

(check-sat (not b!10016) (not b!10014))
(check-sat)
