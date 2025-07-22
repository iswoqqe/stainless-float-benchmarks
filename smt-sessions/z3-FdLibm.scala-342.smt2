; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1977 () Bool)

(assert start!1977)

(declare-fun res!8009 () Bool)

(declare-fun e!5752 () Bool)

(assert (=> start!1977 (=> (not res!8009) (not e!5752))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1977 (= res!8009 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1977 e!5752))

(assert (=> start!1977 true))

(declare-fun b!9972 () Bool)

(declare-fun e!5750 () Bool)

(assert (=> b!9972 (= e!5752 e!5750)))

(declare-fun res!8011 () Bool)

(assert (=> b!9972 (=> (not res!8011) (not e!5750))))

(declare-fun lt!5180 () (_ BitVec 32))

(assert (=> b!9972 (= res!8011 (and (bvsle #b11111111111111111111111111101001 lt!5180) (bvsle lt!5180 #b00000000000000000000001111101000)))))

(declare-fun lt!5177 () (_ BitVec 32))

(assert (=> b!9972 (= lt!5180 (bvsub (bvashr lt!5177 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9972 (= lt!5177 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9973 () Bool)

(declare-fun e!5751 () Bool)

(assert (=> b!9973 (= e!5750 e!5751)))

(declare-fun res!8010 () Bool)

(assert (=> b!9973 (=> (not res!8010) (not e!5751))))

(declare-fun lt!5183 () (_ BitVec 32))

(assert (=> b!9973 (= res!8010 (and (bvsle #b00000000000000000000000000011000 lt!5183) (bvsle lt!5183 #b00000000000000000000001111110000) (= (bvsrem lt!5183 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5179 () (_ BitVec 32))

(assert (=> b!9973 (= lt!5183 (ite (bvslt lt!5179 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5179))))

(assert (=> b!9973 (= lt!5179 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5180 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9974 () Bool)

(declare-fun lt!5181 () (_ FloatingPoint 11 53))

(assert (=> b!9974 (= e!5751 (and (not (fp.isNaN lt!5181)) (fp.gt lt!5181 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5181 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5176 () (_ FloatingPoint 11 53))

(declare-fun lt!5182 () (_ FloatingPoint 11 53))

(declare-fun lt!5178 () (_ FloatingPoint 11 53))

(declare-fun lt!5184 () (_ FloatingPoint 11 53))

(assert (=> b!9974 (= lt!5181 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5178 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5176) #b00000000000000000000000000000000 (ite (fp.gt lt!5176 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5176 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5176)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5184) #b00000000000000000000000000000000 (ite (fp.gt lt!5184 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5184 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5184)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5182) #b00000000000000000000000000000000 (ite (fp.gt lt!5182 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5182 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5182)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5178) #b00000000000000000000000000000000 (ite (fp.gt lt!5178 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5178 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5178)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9974 (= lt!5178 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5182 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5176) #b00000000000000000000000000000000 (ite (fp.gt lt!5176 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5176 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5176)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5184) #b00000000000000000000000000000000 (ite (fp.gt lt!5184 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5184 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5184)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5182) #b00000000000000000000000000000000 (ite (fp.gt lt!5182 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5182 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5182)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9974 (= lt!5182 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5184 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5176) #b00000000000000000000000000000000 (ite (fp.gt lt!5176 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5176 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5176)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5184) #b00000000000000000000000000000000 (ite (fp.gt lt!5184 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5184 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5184)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9974 (= lt!5184 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5176 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5176) #b00000000000000000000000000000000 (ite (fp.gt lt!5176 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5176 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5176)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9974 (= lt!5176 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5177 (bvshl lt!5183 #b00000000000000000000000000010100))))))

(assert (= (and start!1977 res!8009) b!9972))

(assert (= (and b!9972 res!8011) b!9973))

(assert (= (and b!9973 res!8010) b!9974))

(declare-fun m!14331 () Bool)

(assert (=> b!9972 m!14331))

(declare-fun m!14333 () Bool)

(assert (=> b!9974 m!14333))

(declare-fun m!14335 () Bool)

(assert (=> b!9974 m!14335))

(declare-fun m!14337 () Bool)

(assert (=> b!9974 m!14337))

(declare-fun m!14339 () Bool)

(assert (=> b!9974 m!14339))

(declare-fun m!14341 () Bool)

(assert (=> b!9974 m!14341))

(declare-fun m!14343 () Bool)

(assert (=> b!9974 m!14343))

(declare-fun m!14345 () Bool)

(assert (=> b!9974 m!14345))

(declare-fun m!14347 () Bool)

(assert (=> b!9974 m!14347))

(declare-fun m!14349 () Bool)

(assert (=> b!9974 m!14349))

(declare-fun m!14351 () Bool)

(assert (=> b!9974 m!14351))

(assert (=> b!9974 m!14343))

(assert (=> b!9974 m!14351))

(declare-fun m!14353 () Bool)

(assert (=> b!9974 m!14353))

(check-sat (not b!9972) (not b!9974))
(check-sat)
(get-model)

(declare-fun d!4155 () Bool)

(declare-fun c!1190 () Bool)

(assert (=> d!4155 (= c!1190 (fp.isNaN x!143))))

(declare-fun e!5755 () (_ BitVec 64))

(assert (=> d!4155 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5755 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9979 () Bool)

(assert (=> b!9979 (= e!5755 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9980 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9980 (= e!5755 (choose!3 x!143 x!143 false))))

(assert (= (and d!4155 c!1190) b!9979))

(assert (= (and d!4155 (not c!1190)) b!9980))

(declare-fun m!14355 () Bool)

(assert (=> b!9980 m!14355))

(assert (=> b!9972 d!4155))

(declare-fun d!4157 () Bool)

(declare-fun c!1193 () Bool)

(assert (=> d!4157 (= c!1193 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5758 () (_ BitVec 64))

(assert (=> d!4157 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5177 (bvshl lt!5183 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5758 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5177 (bvshl lt!5183 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9985 () Bool)

(assert (=> b!9985 (= e!5758 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9986 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9986 (= e!5758 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5177 (bvshl lt!5183 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4157 c!1193) b!9985))

(assert (= (and d!4157 (not c!1193)) b!9986))

(assert (=> b!9986 m!14343))

(assert (=> b!9986 m!14343))

(declare-fun m!14357 () Bool)

(assert (=> b!9986 m!14357))

(assert (=> b!9974 d!4157))

(declare-fun d!4159 () Bool)

(declare-fun c!1196 () Bool)

(assert (=> d!4159 (= c!1196 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5761 () (_ BitVec 64))

(assert (=> d!4159 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5761 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9991 () Bool)

(assert (=> b!9991 (= e!5761 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9992 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9992 (= e!5761 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4159 c!1196) b!9991))

(assert (= (and d!4159 (not c!1196)) b!9992))

(assert (=> b!9992 m!14351))

(declare-fun m!14359 () Bool)

(assert (=> b!9992 m!14359))

(assert (=> b!9974 d!4159))

(declare-fun d!4161 () Bool)

(declare-fun c!1199 () Bool)

(assert (=> d!4161 (= c!1199 (fp.isNaN x!143))))

(declare-fun e!5764 () (_ BitVec 64))

(assert (=> d!4161 (= (__LO!0 x!143) ((_ extract 31 0) e!5764))))

(declare-fun b!9997 () Bool)

(assert (=> b!9997 (= e!5764 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9998 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9998 (= e!5764 (choose!1 x!143 x!143 false))))

(assert (= (and d!4161 c!1199) b!9997))

(assert (= (and d!4161 (not c!1199)) b!9998))

(declare-fun m!14361 () Bool)

(assert (=> b!9998 m!14361))

(assert (=> b!9974 d!4161))

(check-sat (not b!9980) (not b!9998) (not b!9986) (not b!9992))
(check-sat)
