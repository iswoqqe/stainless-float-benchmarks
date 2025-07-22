; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1967 () Bool)

(assert start!1967)

(declare-fun res!8002 () Bool)

(declare-fun e!5731 () Bool)

(assert (=> start!1967 (=> (not res!8002) (not e!5731))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1967 (= res!8002 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1967 e!5731))

(assert (=> start!1967 true))

(declare-fun b!9939 () Bool)

(declare-fun e!5729 () Bool)

(assert (=> b!9939 (= e!5731 e!5729)))

(declare-fun res!8000 () Bool)

(assert (=> b!9939 (=> (not res!8000) (not e!5729))))

(declare-fun lt!5153 () (_ BitVec 32))

(assert (=> b!9939 (= res!8000 (and (bvsle #b11111111111111111111111111101001 lt!5153) (bvsle lt!5153 #b00000000000000000000001111101000)))))

(declare-fun lt!5157 () (_ BitVec 32))

(assert (=> b!9939 (= lt!5153 (bvsub (bvashr lt!5157 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9939 (= lt!5157 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9940 () Bool)

(declare-fun e!5730 () Bool)

(assert (=> b!9940 (= e!5729 e!5730)))

(declare-fun res!8001 () Bool)

(assert (=> b!9940 (=> (not res!8001) (not e!5730))))

(declare-fun lt!5150 () (_ BitVec 32))

(assert (=> b!9940 (= res!8001 (and (bvsle #b00000000000000000000000000011000 lt!5150) (bvsle lt!5150 #b00000000000000000000001111110000) (= (bvsrem lt!5150 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5149 () (_ BitVec 32))

(assert (=> b!9940 (= lt!5150 (ite (bvslt lt!5149 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5149))))

(assert (=> b!9940 (= lt!5149 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5153 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9941 () Bool)

(declare-fun lt!5154 () (_ FloatingPoint 11 53))

(assert (=> b!9941 (= e!5730 (and (not (fp.isNaN lt!5154)) (not (fp.gt lt!5154 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5155 () (_ FloatingPoint 11 53))

(declare-fun lt!5156 () (_ FloatingPoint 11 53))

(declare-fun lt!5151 () (_ FloatingPoint 11 53))

(declare-fun lt!5152 () (_ FloatingPoint 11 53))

(assert (=> b!9941 (= lt!5154 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5155 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5156) #b00000000000000000000000000000000 (ite (fp.gt lt!5156 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5156 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5156)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5151) #b00000000000000000000000000000000 (ite (fp.gt lt!5151 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5151 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5151)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5152) #b00000000000000000000000000000000 (ite (fp.gt lt!5152 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5152 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5152)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5155) #b00000000000000000000000000000000 (ite (fp.gt lt!5155 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5155 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5155)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9941 (= lt!5155 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5152 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5156) #b00000000000000000000000000000000 (ite (fp.gt lt!5156 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5156 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5156)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5151) #b00000000000000000000000000000000 (ite (fp.gt lt!5151 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5151 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5151)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5152) #b00000000000000000000000000000000 (ite (fp.gt lt!5152 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5152 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5152)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9941 (= lt!5152 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5151 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5156) #b00000000000000000000000000000000 (ite (fp.gt lt!5156 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5156 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5156)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5151) #b00000000000000000000000000000000 (ite (fp.gt lt!5151 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5151 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5151)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9941 (= lt!5151 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5156 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5156) #b00000000000000000000000000000000 (ite (fp.gt lt!5156 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5156 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5156)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9941 (= lt!5156 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5157 (bvshl lt!5150 #b00000000000000000000000000010100))))))

(assert (= (and start!1967 res!8002) b!9939))

(assert (= (and b!9939 res!8000) b!9940))

(assert (= (and b!9940 res!8001) b!9941))

(declare-fun m!14299 () Bool)

(assert (=> b!9939 m!14299))

(declare-fun m!14301 () Bool)

(assert (=> b!9941 m!14301))

(declare-fun m!14303 () Bool)

(assert (=> b!9941 m!14303))

(declare-fun m!14305 () Bool)

(assert (=> b!9941 m!14305))

(declare-fun m!14307 () Bool)

(assert (=> b!9941 m!14307))

(declare-fun m!14309 () Bool)

(assert (=> b!9941 m!14309))

(declare-fun m!14311 () Bool)

(assert (=> b!9941 m!14311))

(declare-fun m!14313 () Bool)

(assert (=> b!9941 m!14313))

(declare-fun m!14315 () Bool)

(assert (=> b!9941 m!14315))

(declare-fun m!14317 () Bool)

(assert (=> b!9941 m!14317))

(declare-fun m!14319 () Bool)

(assert (=> b!9941 m!14319))

(assert (=> b!9941 m!14307))

(assert (=> b!9941 m!14319))

(declare-fun m!14321 () Bool)

(assert (=> b!9941 m!14321))

(check-sat (not b!9939) (not b!9941))
(check-sat)
(get-model)

(declare-fun d!4147 () Bool)

(declare-fun c!1178 () Bool)

(assert (=> d!4147 (= c!1178 (fp.isNaN x!143))))

(declare-fun e!5734 () (_ BitVec 64))

(assert (=> d!4147 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5734 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9946 () Bool)

(assert (=> b!9946 (= e!5734 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9947 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9947 (= e!5734 (choose!3 x!143 x!143 false))))

(assert (= (and d!4147 c!1178) b!9946))

(assert (= (and d!4147 (not c!1178)) b!9947))

(declare-fun m!14323 () Bool)

(assert (=> b!9947 m!14323))

(assert (=> b!9939 d!4147))

(declare-fun d!4149 () Bool)

(declare-fun c!1181 () Bool)

(assert (=> d!4149 (= c!1181 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5737 () (_ BitVec 64))

(assert (=> d!4149 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5157 (bvshl lt!5150 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5737 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5157 (bvshl lt!5150 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9952 () Bool)

(assert (=> b!9952 (= e!5737 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9953 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9953 (= e!5737 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5157 (bvshl lt!5150 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4149 c!1181) b!9952))

(assert (= (and d!4149 (not c!1181)) b!9953))

(assert (=> b!9953 m!14307))

(assert (=> b!9953 m!14307))

(declare-fun m!14325 () Bool)

(assert (=> b!9953 m!14325))

(assert (=> b!9941 d!4149))

(declare-fun d!4151 () Bool)

(declare-fun c!1184 () Bool)

(assert (=> d!4151 (= c!1184 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5740 () (_ BitVec 64))

(assert (=> d!4151 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5740 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9958 () Bool)

(assert (=> b!9958 (= e!5740 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9959 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9959 (= e!5740 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4151 c!1184) b!9958))

(assert (= (and d!4151 (not c!1184)) b!9959))

(assert (=> b!9959 m!14319))

(declare-fun m!14327 () Bool)

(assert (=> b!9959 m!14327))

(assert (=> b!9941 d!4151))

(declare-fun d!4153 () Bool)

(declare-fun c!1187 () Bool)

(assert (=> d!4153 (= c!1187 (fp.isNaN x!143))))

(declare-fun e!5743 () (_ BitVec 64))

(assert (=> d!4153 (= (__LO!0 x!143) ((_ extract 31 0) e!5743))))

(declare-fun b!9964 () Bool)

(assert (=> b!9964 (= e!5743 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9965 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9965 (= e!5743 (choose!1 x!143 x!143 false))))

(assert (= (and d!4153 c!1187) b!9964))

(assert (= (and d!4153 (not c!1187)) b!9965))

(declare-fun m!14329 () Bool)

(assert (=> b!9965 m!14329))

(assert (=> b!9941 d!4153))

(check-sat (not b!9953) (not b!9959) (not b!9947) (not b!9965))
(check-sat)
