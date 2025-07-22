; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1987 () Bool)

(assert start!1987)

(declare-fun res!8019 () Bool)

(declare-fun e!5773 () Bool)

(assert (=> start!1987 (=> (not res!8019) (not e!5773))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1987 (= res!8019 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1987 e!5773))

(assert (=> start!1987 true))

(declare-fun b!10005 () Bool)

(declare-fun e!5772 () Bool)

(assert (=> b!10005 (= e!5773 e!5772)))

(declare-fun res!8020 () Bool)

(assert (=> b!10005 (=> (not res!8020) (not e!5772))))

(declare-fun lt!5197 () (_ BitVec 32))

(assert (=> b!10005 (= res!8020 (and (bvsle #b11111111111111111111111111101001 lt!5197) (bvsle lt!5197 #b00000000000000000000001111101000)))))

(declare-fun lt!5196 () (_ BitVec 32))

(assert (=> b!10005 (= lt!5197 (bvsub (bvashr lt!5196 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10005 (= lt!5196 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10006 () Bool)

(declare-fun e!5771 () Bool)

(assert (=> b!10006 (= e!5772 e!5771)))

(declare-fun res!8018 () Bool)

(assert (=> b!10006 (=> (not res!8018) (not e!5771))))

(declare-fun lt!5195 () (_ BitVec 32))

(assert (=> b!10006 (= res!8018 (and (bvsle #b00000000000000000000000000011000 lt!5195) (bvsle lt!5195 #b00000000000000000000001111110000) (= (bvsrem lt!5195 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5199 () (_ BitVec 32))

(assert (=> b!10006 (= lt!5195 (ite (bvslt lt!5199 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5199))))

(assert (=> b!10006 (= lt!5199 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5197 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10007 () Bool)

(assert (=> b!10007 (= e!5771 false)))

(declare-fun lt!5198 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10007 (= lt!5198 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5196 (bvshl lt!5195 #b00000000000000000000000000010100))))))

(assert (= (and start!1987 res!8019) b!10005))

(assert (= (and b!10005 res!8020) b!10006))

(assert (= (and b!10006 res!8018) b!10007))

(declare-fun m!14363 () Bool)

(assert (=> b!10005 m!14363))

(declare-fun m!14365 () Bool)

(assert (=> b!10007 m!14365))

(assert (=> b!10007 m!14365))

(declare-fun m!14367 () Bool)

(assert (=> b!10007 m!14367))

(assert (=> b!10007 m!14367))

(declare-fun m!14369 () Bool)

(assert (=> b!10007 m!14369))

(check-sat (not b!10007) (not b!10005))
(check-sat)
