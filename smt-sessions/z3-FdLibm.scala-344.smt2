; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2015 () Bool)

(assert start!2015)

(declare-fun res!8365 () Bool)

(declare-fun e!5853 () Bool)

(assert (=> start!2015 (=> (not res!8365) (not e!5853))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2015 (= res!8365 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2015 e!5853))

(assert (=> start!2015 true))

(declare-fun b!10382 () Bool)

(declare-fun e!5852 () Bool)

(assert (=> b!10382 (= e!5853 e!5852)))

(declare-fun res!8367 () Bool)

(assert (=> b!10382 (=> (not res!8367) (not e!5852))))

(declare-fun lt!5282 () (_ BitVec 32))

(assert (=> b!10382 (= res!8367 (and (bvsle #b11111111111111111111111111101001 lt!5282) (bvsle lt!5282 #b00000000000000000000001111101000)))))

(declare-fun lt!5283 () (_ BitVec 32))

(assert (=> b!10382 (= lt!5282 (bvsub (bvashr lt!5283 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10382 (= lt!5283 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10383 () Bool)

(declare-fun e!5851 () Bool)

(assert (=> b!10383 (= e!5852 e!5851)))

(declare-fun res!8366 () Bool)

(assert (=> b!10383 (=> (not res!8366) (not e!5851))))

(declare-fun lt!5285 () (_ BitVec 32))

(assert (=> b!10383 (= res!8366 (and (bvsle #b00000000000000000000000000011000 lt!5285) (bvsle lt!5285 #b00000000000000000000001111110000) (= (bvsrem lt!5285 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5286 () (_ BitVec 32))

(assert (=> b!10383 (= lt!5285 (ite (bvslt lt!5286 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5286))))

(assert (=> b!10383 (= lt!5286 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5282 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10384 () Bool)

(assert (=> b!10384 (= e!5851 false)))

(declare-fun lt!5284 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10384 (= lt!5284 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5283 (bvshl lt!5285 #b00000000000000000000000000010100))))))

(assert (= (and start!2015 res!8365) b!10382))

(assert (= (and b!10382 res!8367) b!10383))

(assert (= (and b!10383 res!8366) b!10384))

(declare-fun m!16195 () Bool)

(assert (=> b!10382 m!16195))

(declare-fun m!16197 () Bool)

(assert (=> b!10384 m!16197))

(assert (=> b!10384 m!16197))

(declare-fun m!16199 () Bool)

(assert (=> b!10384 m!16199))

(assert (=> b!10384 m!16199))

(declare-fun m!16201 () Bool)

(assert (=> b!10384 m!16201))

(check-sat (not b!10382) (not b!10384))
(check-sat)
