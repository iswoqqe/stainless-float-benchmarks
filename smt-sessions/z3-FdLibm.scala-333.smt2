; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1945 () Bool)

(assert start!1945)

(declare-fun res!8268 () Bool)

(declare-fun e!5682 () Bool)

(assert (=> start!1945 (=> (not res!8268) (not e!5682))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1945 (= res!8268 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1945 e!5682))

(assert (=> start!1945 true))

(declare-fun b!10139 () Bool)

(declare-fun e!5680 () Bool)

(assert (=> b!10139 (= e!5682 e!5680)))

(declare-fun res!8266 () Bool)

(assert (=> b!10139 (=> (not res!8266) (not e!5680))))

(declare-fun lt!5060 () (_ BitVec 32))

(assert (=> b!10139 (= res!8266 (and (bvsle #b11111111111111111111111111101001 lt!5060) (bvsle lt!5060 #b00000000000000000000001111101000)))))

(declare-fun lt!5062 () (_ BitVec 32))

(assert (=> b!10139 (= lt!5060 (bvsub (bvashr lt!5062 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10139 (= lt!5062 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10140 () Bool)

(declare-fun e!5681 () Bool)

(assert (=> b!10140 (= e!5680 e!5681)))

(declare-fun res!8267 () Bool)

(assert (=> b!10140 (=> (not res!8267) (not e!5681))))

(declare-fun lt!5063 () (_ BitVec 32))

(assert (=> b!10140 (= res!8267 (and (bvsle #b00000000000000000000000000011000 lt!5063) (bvsle lt!5063 #b00000000000000000000001111110000) (= (bvsrem lt!5063 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5061 () (_ BitVec 32))

(assert (=> b!10140 (= lt!5063 (ite (bvslt lt!5061 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5061))))

(assert (=> b!10140 (= lt!5061 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5060 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10141 () Bool)

(assert (=> b!10141 (= e!5681 false)))

(declare-fun lt!5064 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10141 (= lt!5064 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5062 (bvshl lt!5063 #b00000000000000000000000000010100))))))

(assert (= (and start!1945 res!8268) b!10139))

(assert (= (and b!10139 res!8266) b!10140))

(assert (= (and b!10140 res!8267) b!10141))

(declare-fun m!15975 () Bool)

(assert (=> b!10139 m!15975))

(declare-fun m!15977 () Bool)

(assert (=> b!10141 m!15977))

(assert (=> b!10141 m!15977))

(declare-fun m!15979 () Bool)

(assert (=> b!10141 m!15979))

(assert (=> b!10141 m!15979))

(declare-fun m!15981 () Bool)

(assert (=> b!10141 m!15981))

(check-sat (not b!10139) (not b!10141))
(check-sat)
