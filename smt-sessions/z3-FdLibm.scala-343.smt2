; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2013 () Bool)

(assert start!2013)

(declare-fun res!8357 () Bool)

(declare-fun e!5844 () Bool)

(assert (=> start!2013 (=> (not res!8357) (not e!5844))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2013 (= res!8357 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2013 e!5844))

(assert (=> start!2013 true))

(declare-fun b!10373 () Bool)

(declare-fun e!5843 () Bool)

(assert (=> b!10373 (= e!5844 e!5843)))

(declare-fun res!8358 () Bool)

(assert (=> b!10373 (=> (not res!8358) (not e!5843))))

(declare-fun lt!5270 () (_ BitVec 32))

(assert (=> b!10373 (= res!8358 (and (bvsle #b11111111111111111111111111101001 lt!5270) (bvsle lt!5270 #b00000000000000000000001111101000)))))

(declare-fun lt!5271 () (_ BitVec 32))

(assert (=> b!10373 (= lt!5270 (bvsub (bvashr lt!5271 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10373 (= lt!5271 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10374 () Bool)

(declare-fun e!5842 () Bool)

(assert (=> b!10374 (= e!5843 e!5842)))

(declare-fun res!8356 () Bool)

(assert (=> b!10374 (=> (not res!8356) (not e!5842))))

(declare-fun lt!5267 () (_ BitVec 32))

(assert (=> b!10374 (= res!8356 (and (bvsle #b00000000000000000000000000011000 lt!5267) (bvsle lt!5267 #b00000000000000000000001111110000) (= (bvsrem lt!5267 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5268 () (_ BitVec 32))

(assert (=> b!10374 (= lt!5267 (ite (bvslt lt!5268 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5268))))

(assert (=> b!10374 (= lt!5268 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5270 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10375 () Bool)

(assert (=> b!10375 (= e!5842 false)))

(declare-fun lt!5269 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10375 (= lt!5269 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5271 (bvshl lt!5267 #b00000000000000000000000000010100))))))

(assert (= (and start!2013 res!8357) b!10373))

(assert (= (and b!10373 res!8358) b!10374))

(assert (= (and b!10374 res!8356) b!10375))

(declare-fun m!16187 () Bool)

(assert (=> b!10373 m!16187))

(declare-fun m!16189 () Bool)

(assert (=> b!10375 m!16189))

(assert (=> b!10375 m!16189))

(declare-fun m!16191 () Bool)

(assert (=> b!10375 m!16191))

(assert (=> b!10375 m!16191))

(declare-fun m!16193 () Bool)

(assert (=> b!10375 m!16193))

(check-sat (not b!10375) (not b!10373))
(check-sat)
