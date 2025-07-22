; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1957 () Bool)

(assert start!1957)

(declare-fun res!7993 () Bool)

(declare-fun e!5710 () Bool)

(assert (=> start!1957 (=> (not res!7993) (not e!5710))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1957 (= res!7993 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1957 e!5710))

(assert (=> start!1957 true))

(declare-fun b!9906 () Bool)

(declare-fun e!5709 () Bool)

(assert (=> b!9906 (= e!5710 e!5709)))

(declare-fun res!7991 () Bool)

(assert (=> b!9906 (=> (not res!7991) (not e!5709))))

(declare-fun lt!5129 () (_ BitVec 32))

(assert (=> b!9906 (= res!7991 (and (bvsle #b11111111111111111111111111101001 lt!5129) (bvsle lt!5129 #b00000000000000000000001111101000)))))

(declare-fun lt!5127 () (_ BitVec 32))

(assert (=> b!9906 (= lt!5129 (bvsub (bvashr lt!5127 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9906 (= lt!5127 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9907 () Bool)

(declare-fun e!5708 () Bool)

(assert (=> b!9907 (= e!5709 e!5708)))

(declare-fun res!7992 () Bool)

(assert (=> b!9907 (=> (not res!7992) (not e!5708))))

(declare-fun lt!5124 () (_ BitVec 32))

(assert (=> b!9907 (= res!7992 (and (bvsle #b00000000000000000000000000011000 lt!5124) (bvsle lt!5124 #b00000000000000000000001111110000) (= (bvsrem lt!5124 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5126 () (_ BitVec 32))

(assert (=> b!9907 (= lt!5124 (ite (bvslt lt!5126 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5126))))

(assert (=> b!9907 (= lt!5126 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5129 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun lt!5128 () (_ FloatingPoint 11 53))

(declare-fun b!9908 () Bool)

(declare-fun lt!5125 () (_ FloatingPoint 11 53))

(declare-fun lt!5123 () (_ FloatingPoint 11 53))

(declare-fun lt!5130 () (_ FloatingPoint 11 53))

(assert (=> b!9908 (= e!5708 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5123 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5128) #b00000000000000000000000000000000 (ite (fp.gt lt!5128 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5128 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5128)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5130) #b00000000000000000000000000000000 (ite (fp.gt lt!5130 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5130 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5130)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5125) #b00000000000000000000000000000000 (ite (fp.gt lt!5125 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5125 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5125)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5123) #b00000000000000000000000000000000 (ite (fp.gt lt!5123 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5123 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5123)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9908 (= lt!5123 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5125 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5128) #b00000000000000000000000000000000 (ite (fp.gt lt!5128 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5128 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5128)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5130) #b00000000000000000000000000000000 (ite (fp.gt lt!5130 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5130 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5130)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5125) #b00000000000000000000000000000000 (ite (fp.gt lt!5125 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5125 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5125)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9908 (= lt!5125 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5130 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5128) #b00000000000000000000000000000000 (ite (fp.gt lt!5128 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5128 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5128)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5130) #b00000000000000000000000000000000 (ite (fp.gt lt!5130 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5130 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5130)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9908 (= lt!5130 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5128 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5128) #b00000000000000000000000000000000 (ite (fp.gt lt!5128 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5128 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5128)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9908 (= lt!5128 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5127 (bvshl lt!5124 #b00000000000000000000000000010100))))))

(assert (= (and start!1957 res!7993) b!9906))

(assert (= (and b!9906 res!7991) b!9907))

(assert (= (and b!9907 res!7992) b!9908))

(declare-fun m!14267 () Bool)

(assert (=> b!9906 m!14267))

(declare-fun m!14269 () Bool)

(assert (=> b!9908 m!14269))

(declare-fun m!14271 () Bool)

(assert (=> b!9908 m!14271))

(declare-fun m!14273 () Bool)

(assert (=> b!9908 m!14273))

(declare-fun m!14275 () Bool)

(assert (=> b!9908 m!14275))

(declare-fun m!14277 () Bool)

(assert (=> b!9908 m!14277))

(declare-fun m!14279 () Bool)

(assert (=> b!9908 m!14279))

(declare-fun m!14281 () Bool)

(assert (=> b!9908 m!14281))

(declare-fun m!14283 () Bool)

(assert (=> b!9908 m!14283))

(declare-fun m!14285 () Bool)

(assert (=> b!9908 m!14285))

(declare-fun m!14287 () Bool)

(assert (=> b!9908 m!14287))

(declare-fun m!14289 () Bool)

(assert (=> b!9908 m!14289))

(assert (=> b!9908 m!14287))

(assert (=> b!9908 m!14277))

(check-sat (not b!9908) (not b!9906))
(check-sat)
(get-model)

(declare-fun d!4139 () Bool)

(declare-fun c!1166 () Bool)

(assert (=> d!4139 (= c!1166 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5713 () (_ BitVec 64))

(assert (=> d!4139 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5127 (bvshl lt!5124 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5713 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5127 (bvshl lt!5124 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9913 () Bool)

(assert (=> b!9913 (= e!5713 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9914 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9914 (= e!5713 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5127 (bvshl lt!5124 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4139 c!1166) b!9913))

(assert (= (and d!4139 (not c!1166)) b!9914))

(assert (=> b!9914 m!14277))

(assert (=> b!9914 m!14277))

(declare-fun m!14291 () Bool)

(assert (=> b!9914 m!14291))

(assert (=> b!9908 d!4139))

(declare-fun d!4141 () Bool)

(declare-fun c!1169 () Bool)

(assert (=> d!4141 (= c!1169 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5716 () (_ BitVec 64))

(assert (=> d!4141 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5716 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9919 () Bool)

(assert (=> b!9919 (= e!5716 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9920 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9920 (= e!5716 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4141 c!1169) b!9919))

(assert (= (and d!4141 (not c!1169)) b!9920))

(assert (=> b!9920 m!14287))

(declare-fun m!14293 () Bool)

(assert (=> b!9920 m!14293))

(assert (=> b!9908 d!4141))

(declare-fun d!4143 () Bool)

(declare-fun c!1172 () Bool)

(assert (=> d!4143 (= c!1172 (fp.isNaN x!143))))

(declare-fun e!5719 () (_ BitVec 64))

(assert (=> d!4143 (= (__LO!0 x!143) ((_ extract 31 0) e!5719))))

(declare-fun b!9925 () Bool)

(assert (=> b!9925 (= e!5719 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9926 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9926 (= e!5719 (choose!1 x!143 x!143 false))))

(assert (= (and d!4143 c!1172) b!9925))

(assert (= (and d!4143 (not c!1172)) b!9926))

(declare-fun m!14295 () Bool)

(assert (=> b!9926 m!14295))

(assert (=> b!9908 d!4143))

(declare-fun d!4145 () Bool)

(declare-fun c!1175 () Bool)

(assert (=> d!4145 (= c!1175 (fp.isNaN x!143))))

(declare-fun e!5722 () (_ BitVec 64))

(assert (=> d!4145 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5722 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9931 () Bool)

(assert (=> b!9931 (= e!5722 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9932 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9932 (= e!5722 (choose!3 x!143 x!143 false))))

(assert (= (and d!4145 c!1175) b!9931))

(assert (= (and d!4145 (not c!1175)) b!9932))

(declare-fun m!14297 () Bool)

(assert (=> b!9932 m!14297))

(assert (=> b!9906 d!4145))

(check-sat (not b!9926) (not b!9932) (not b!9914) (not b!9920))
(check-sat)
