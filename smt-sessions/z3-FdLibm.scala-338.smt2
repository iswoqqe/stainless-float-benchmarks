; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1979 () Bool)

(assert start!1979)

(declare-fun res!8312 () Bool)

(declare-fun e!5761 () Bool)

(assert (=> start!1979 (=> (not res!8312) (not e!5761))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1979 (= res!8312 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1979 e!5761))

(assert (=> start!1979 true))

(declare-fun b!10256 () Bool)

(declare-fun e!5762 () Bool)

(assert (=> b!10256 (= e!5761 e!5762)))

(declare-fun res!8311 () Bool)

(assert (=> b!10256 (=> (not res!8311) (not e!5762))))

(declare-fun lt!5161 () (_ BitVec 32))

(assert (=> b!10256 (= res!8311 (and (bvsle #b11111111111111111111111111101001 lt!5161) (bvsle lt!5161 #b00000000000000000000001111101000)))))

(declare-fun lt!5163 () (_ BitVec 32))

(assert (=> b!10256 (= lt!5161 (bvsub (bvashr lt!5163 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10256 (= lt!5163 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10257 () Bool)

(declare-fun e!5763 () Bool)

(assert (=> b!10257 (= e!5762 e!5763)))

(declare-fun res!8313 () Bool)

(assert (=> b!10257 (=> (not res!8313) (not e!5763))))

(declare-fun lt!5160 () (_ BitVec 32))

(assert (=> b!10257 (= res!8313 (and (bvsle #b00000000000000000000000000011000 lt!5160) (bvsle lt!5160 #b00000000000000000000001111110000) (= (bvsrem lt!5160 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5162 () (_ BitVec 32))

(assert (=> b!10257 (= lt!5160 (ite (bvslt lt!5162 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5162))))

(assert (=> b!10257 (= lt!5162 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5161 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10258 () Bool)

(assert (=> b!10258 (= e!5763 false)))

(declare-fun lt!5159 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10258 (= lt!5159 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5163 (bvshl lt!5160 #b00000000000000000000000000010100))))))

(assert (= (and start!1979 res!8312) b!10256))

(assert (= (and b!10256 res!8311) b!10257))

(assert (= (and b!10257 res!8313) b!10258))

(declare-fun m!16075 () Bool)

(assert (=> b!10256 m!16075))

(declare-fun m!16077 () Bool)

(assert (=> b!10258 m!16077))

(assert (=> b!10258 m!16077))

(declare-fun m!16079 () Bool)

(assert (=> b!10258 m!16079))

(assert (=> b!10258 m!16079))

(declare-fun m!16081 () Bool)

(assert (=> b!10258 m!16081))

(check-sat (not b!10258) (not b!10256))
(check-sat)
