; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2003 () Bool)

(assert start!2003)

(declare-fun res!8348 () Bool)

(declare-fun e!5823 () Bool)

(assert (=> start!2003 (=> (not res!8348) (not e!5823))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2003 (= res!8348 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2003 e!5823))

(assert (=> start!2003 true))

(declare-fun b!10340 () Bool)

(declare-fun e!5821 () Bool)

(assert (=> b!10340 (= e!5823 e!5821)))

(declare-fun res!8347 () Bool)

(assert (=> b!10340 (=> (not res!8347) (not e!5821))))

(declare-fun lt!5254 () (_ BitVec 32))

(assert (=> b!10340 (= res!8347 (and (bvsle #b11111111111111111111111111101001 lt!5254) (bvsle lt!5254 #b00000000000000000000001111101000)))))

(declare-fun lt!5255 () (_ BitVec 32))

(assert (=> b!10340 (= lt!5254 (bvsub (bvashr lt!5255 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10340 (= lt!5255 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10341 () Bool)

(declare-fun e!5822 () Bool)

(assert (=> b!10341 (= e!5821 e!5822)))

(declare-fun res!8349 () Bool)

(assert (=> b!10341 (=> (not res!8349) (not e!5822))))

(declare-fun lt!5250 () (_ BitVec 32))

(assert (=> b!10341 (= res!8349 (and (bvsle #b00000000000000000000000000011000 lt!5250) (bvsle lt!5250 #b00000000000000000000001111110000) (= (bvsrem lt!5250 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5251 () (_ BitVec 32))

(assert (=> b!10341 (= lt!5250 (ite (bvslt lt!5251 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5251))))

(assert (=> b!10341 (= lt!5251 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5254 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10342 () Bool)

(declare-fun lt!5253 () (_ FloatingPoint 11 53))

(assert (=> b!10342 (= e!5822 (and (not (fp.isNaN lt!5253)) (fp.gt lt!5253 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5253 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5249 () (_ FloatingPoint 11 53))

(declare-fun lt!5252 () (_ FloatingPoint 11 53))

(declare-fun lt!5256 () (_ FloatingPoint 11 53))

(declare-fun lt!5248 () (_ FloatingPoint 11 53))

(assert (=> b!10342 (= lt!5253 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5248 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5252) #b00000000000000000000000000000000 (ite (fp.gt lt!5252 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5252 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5252)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5249) #b00000000000000000000000000000000 (ite (fp.gt lt!5249 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5249 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5249)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5256) #b00000000000000000000000000000000 (ite (fp.gt lt!5256 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5256 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5256)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5248) #b00000000000000000000000000000000 (ite (fp.gt lt!5248 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5248 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5248)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10342 (= lt!5248 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5256 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5252) #b00000000000000000000000000000000 (ite (fp.gt lt!5252 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5252 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5252)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5249) #b00000000000000000000000000000000 (ite (fp.gt lt!5249 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5249 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5249)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5256) #b00000000000000000000000000000000 (ite (fp.gt lt!5256 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5256 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5256)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10342 (= lt!5256 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5249 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5252) #b00000000000000000000000000000000 (ite (fp.gt lt!5252 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5252 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5252)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5249) #b00000000000000000000000000000000 (ite (fp.gt lt!5249 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5249 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5249)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10342 (= lt!5249 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5252 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5252) #b00000000000000000000000000000000 (ite (fp.gt lt!5252 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5252 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5252)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10342 (= lt!5252 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5255 (bvshl lt!5250 #b00000000000000000000000000010100))))))

(assert (= (and start!2003 res!8348) b!10340))

(assert (= (and b!10340 res!8347) b!10341))

(assert (= (and b!10341 res!8349) b!10342))

(declare-fun m!16155 () Bool)

(assert (=> b!10340 m!16155))

(declare-fun m!16157 () Bool)

(assert (=> b!10342 m!16157))

(declare-fun m!16159 () Bool)

(assert (=> b!10342 m!16159))

(declare-fun m!16161 () Bool)

(assert (=> b!10342 m!16161))

(declare-fun m!16163 () Bool)

(assert (=> b!10342 m!16163))

(declare-fun m!16165 () Bool)

(assert (=> b!10342 m!16165))

(declare-fun m!16167 () Bool)

(assert (=> b!10342 m!16167))

(declare-fun m!16169 () Bool)

(assert (=> b!10342 m!16169))

(declare-fun m!16171 () Bool)

(assert (=> b!10342 m!16171))

(assert (=> b!10342 m!16159))

(assert (=> b!10342 m!16171))

(declare-fun m!16173 () Bool)

(assert (=> b!10342 m!16173))

(declare-fun m!16175 () Bool)

(assert (=> b!10342 m!16175))

(declare-fun m!16177 () Bool)

(assert (=> b!10342 m!16177))

(check-sat (not b!10342) (not b!10340))
(check-sat)
(get-model)

(declare-fun d!4861 () Bool)

(declare-fun c!1205 () Bool)

(assert (=> d!4861 (= c!1205 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5826 () (_ BitVec 64))

(assert (=> d!4861 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5255 (bvshl lt!5250 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5826 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5255 (bvshl lt!5250 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10347 () Bool)

(assert (=> b!10347 (= e!5826 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10348 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10348 (= e!5826 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5255 (bvshl lt!5250 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4861 c!1205) b!10347))

(assert (= (and d!4861 (not c!1205)) b!10348))

(assert (=> b!10348 m!16159))

(assert (=> b!10348 m!16159))

(declare-fun m!16179 () Bool)

(assert (=> b!10348 m!16179))

(assert (=> b!10342 d!4861))

(declare-fun d!4863 () Bool)

(declare-fun c!1208 () Bool)

(assert (=> d!4863 (= c!1208 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5829 () (_ BitVec 64))

(assert (=> d!4863 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5829 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10353 () Bool)

(assert (=> b!10353 (= e!5829 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10354 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10354 (= e!5829 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4863 c!1208) b!10353))

(assert (= (and d!4863 (not c!1208)) b!10354))

(assert (=> b!10354 m!16171))

(declare-fun m!16181 () Bool)

(assert (=> b!10354 m!16181))

(assert (=> b!10342 d!4863))

(declare-fun d!4865 () Bool)

(declare-fun c!1211 () Bool)

(assert (=> d!4865 (= c!1211 (fp.isNaN x!143))))

(declare-fun e!5832 () (_ BitVec 64))

(assert (=> d!4865 (= (__LO!0 x!143) ((_ extract 31 0) e!5832))))

(declare-fun b!10359 () Bool)

(assert (=> b!10359 (= e!5832 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10360 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10360 (= e!5832 (choose!1 x!143 x!143 false))))

(assert (= (and d!4865 c!1211) b!10359))

(assert (= (and d!4865 (not c!1211)) b!10360))

(declare-fun m!16183 () Bool)

(assert (=> b!10360 m!16183))

(assert (=> b!10342 d!4865))

(declare-fun d!4867 () Bool)

(declare-fun c!1214 () Bool)

(assert (=> d!4867 (= c!1214 (fp.isNaN x!143))))

(declare-fun e!5835 () (_ BitVec 64))

(assert (=> d!4867 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5835 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10365 () Bool)

(assert (=> b!10365 (= e!5835 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10366 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10366 (= e!5835 (choose!3 x!143 x!143 false))))

(assert (= (and d!4867 c!1214) b!10365))

(assert (= (and d!4867 (not c!1214)) b!10366))

(declare-fun m!16185 () Bool)

(assert (=> b!10366 m!16185))

(assert (=> b!10340 d!4867))

(check-sat (not b!10348) (not b!10366) (not b!10354) (not b!10360))
(check-sat)
