; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1981 () Bool)

(assert start!1981)

(declare-fun res!8322 () Bool)

(declare-fun e!5770 () Bool)

(assert (=> start!1981 (=> (not res!8322) (not e!5770))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1981 (= res!8322 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1981 e!5770))

(assert (=> start!1981 true))

(declare-fun b!10265 () Bool)

(declare-fun e!5771 () Bool)

(assert (=> b!10265 (= e!5770 e!5771)))

(declare-fun res!8320 () Bool)

(assert (=> b!10265 (=> (not res!8320) (not e!5771))))

(declare-fun lt!5178 () (_ BitVec 32))

(assert (=> b!10265 (= res!8320 (and (bvsle #b11111111111111111111111111101001 lt!5178) (bvsle lt!5178 #b00000000000000000000001111101000)))))

(declare-fun lt!5174 () (_ BitVec 32))

(assert (=> b!10265 (= lt!5178 (bvsub (bvashr lt!5174 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10265 (= lt!5174 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10266 () Bool)

(declare-fun e!5772 () Bool)

(assert (=> b!10266 (= e!5771 e!5772)))

(declare-fun res!8321 () Bool)

(assert (=> b!10266 (=> (not res!8321) (not e!5772))))

(declare-fun lt!5175 () (_ BitVec 32))

(assert (=> b!10266 (= res!8321 (and (bvsle #b00000000000000000000000000011000 lt!5175) (bvsle lt!5175 #b00000000000000000000001111110000) (= (bvsrem lt!5175 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5176 () (_ BitVec 32))

(assert (=> b!10266 (= lt!5175 (ite (bvslt lt!5176 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5176))))

(assert (=> b!10266 (= lt!5176 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5178 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10267 () Bool)

(assert (=> b!10267 (= e!5772 false)))

(declare-fun lt!5177 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10267 (= lt!5177 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5174 (bvshl lt!5175 #b00000000000000000000000000010100))))))

(assert (= (and start!1981 res!8322) b!10265))

(assert (= (and b!10265 res!8320) b!10266))

(assert (= (and b!10266 res!8321) b!10267))

(declare-fun m!16083 () Bool)

(assert (=> b!10265 m!16083))

(declare-fun m!16085 () Bool)

(assert (=> b!10267 m!16085))

(assert (=> b!10267 m!16085))

(declare-fun m!16087 () Bool)

(assert (=> b!10267 m!16087))

(assert (=> b!10267 m!16087))

(declare-fun m!16089 () Bool)

(assert (=> b!10267 m!16089))

(check-sat (not b!10265) (not b!10267))
(check-sat)
