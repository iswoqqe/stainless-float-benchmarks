; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1947 () Bool)

(assert start!1947)

(declare-fun res!8275 () Bool)

(declare-fun e!5689 () Bool)

(assert (=> start!1947 (=> (not res!8275) (not e!5689))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1947 (= res!8275 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1947 e!5689))

(assert (=> start!1947 true))

(declare-fun b!10148 () Bool)

(declare-fun e!5691 () Bool)

(assert (=> b!10148 (= e!5689 e!5691)))

(declare-fun res!8277 () Bool)

(assert (=> b!10148 (=> (not res!8277) (not e!5691))))

(declare-fun lt!5079 () (_ BitVec 32))

(assert (=> b!10148 (= res!8277 (and (bvsle #b11111111111111111111111111101001 lt!5079) (bvsle lt!5079 #b00000000000000000000001111101000)))))

(declare-fun lt!5078 () (_ BitVec 32))

(assert (=> b!10148 (= lt!5079 (bvsub (bvashr lt!5078 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10148 (= lt!5078 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10149 () Bool)

(declare-fun e!5690 () Bool)

(assert (=> b!10149 (= e!5691 e!5690)))

(declare-fun res!8276 () Bool)

(assert (=> b!10149 (=> (not res!8276) (not e!5690))))

(declare-fun lt!5076 () (_ BitVec 32))

(assert (=> b!10149 (= res!8276 (and (bvsle #b00000000000000000000000000011000 lt!5076) (bvsle lt!5076 #b00000000000000000000001111110000) (= (bvsrem lt!5076 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5075 () (_ BitVec 32))

(assert (=> b!10149 (= lt!5076 (ite (bvslt lt!5075 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5075))))

(assert (=> b!10149 (= lt!5075 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5079 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10150 () Bool)

(assert (=> b!10150 (= e!5690 false)))

(declare-fun lt!5077 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10150 (= lt!5077 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5078 (bvshl lt!5076 #b00000000000000000000000000010100))))))

(assert (= (and start!1947 res!8275) b!10148))

(assert (= (and b!10148 res!8277) b!10149))

(assert (= (and b!10149 res!8276) b!10150))

(declare-fun m!15983 () Bool)

(assert (=> b!10148 m!15983))

(declare-fun m!15985 () Bool)

(assert (=> b!10150 m!15985))

(assert (=> b!10150 m!15985))

(declare-fun m!15987 () Bool)

(assert (=> b!10150 m!15987))

(assert (=> b!10150 m!15987))

(declare-fun m!15989 () Bool)

(assert (=> b!10150 m!15989))

(check-sat (not b!10148) (not b!10150))
(check-sat)
