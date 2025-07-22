; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2093 () Bool)

(assert start!2093)

(declare-fun res!9037 () Bool)

(declare-fun e!5977 () Bool)

(assert (=> start!2093 (=> (not res!9037) (not e!5977))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2093 (= res!9037 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2093 e!5977))

(assert (=> start!2093 true))

(declare-fun b!11054 () Bool)

(declare-fun e!5975 () Bool)

(assert (=> b!11054 (= e!5977 e!5975)))

(declare-fun res!9039 () Bool)

(assert (=> b!11054 (=> (not res!9039) (not e!5975))))

(declare-fun lt!5366 () (_ BitVec 32))

(assert (=> b!11054 (= res!9039 (and (bvsle #b11111111111111111111111111101001 lt!5366) (bvsle lt!5366 #b00000000000000000000001111101000)))))

(declare-fun lt!5360 () (_ BitVec 32))

(assert (=> b!11054 (= lt!5366 (bvsub (bvashr lt!5360 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11054 (= lt!5360 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11055 () Bool)

(declare-fun e!5976 () Bool)

(assert (=> b!11055 (= e!5975 e!5976)))

(declare-fun res!9038 () Bool)

(assert (=> b!11055 (=> (not res!9038) (not e!5976))))

(declare-fun lt!5359 () (_ BitVec 32))

(assert (=> b!11055 (= res!9038 (and (bvsle #b00000000000000000000000000011000 lt!5359) (bvsle lt!5359 #b00000000000000000000001111110000) (= (bvsrem lt!5359 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5364 () (_ BitVec 32))

(assert (=> b!11055 (= lt!5359 (ite (bvslt lt!5364 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5364))))

(assert (=> b!11055 (= lt!5364 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5366 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11056 () Bool)

(declare-fun lt!5362 () (_ FloatingPoint 11 53))

(assert (=> b!11056 (= e!5976 (and (not (fp.isNaN lt!5362)) (fp.gt lt!5362 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5362 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5363 () (_ FloatingPoint 11 53))

(declare-fun lt!5365 () (_ FloatingPoint 11 53))

(declare-fun lt!5361 () (_ FloatingPoint 11 53))

(assert (=> b!11056 (= lt!5362 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5365 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5363) #b00000000000000000000000000000000 (ite (fp.gt lt!5363 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5363 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5363)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5361) #b00000000000000000000000000000000 (ite (fp.gt lt!5361 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5361 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5361)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5365) #b00000000000000000000000000000000 (ite (fp.gt lt!5365 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5365 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5365)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11056 (= lt!5365 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5361 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5363) #b00000000000000000000000000000000 (ite (fp.gt lt!5363 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5363 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5363)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5361) #b00000000000000000000000000000000 (ite (fp.gt lt!5361 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5361 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5361)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11056 (= lt!5361 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5363 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5363) #b00000000000000000000000000000000 (ite (fp.gt lt!5363 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5363 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5363)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11056 (= lt!5363 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5360 (bvshl lt!5359 #b00000000000000000000000000010100))))))

(assert (= (and start!2093 res!9037) b!11054))

(assert (= (and b!11054 res!9039) b!11055))

(assert (= (and b!11055 res!9038) b!11056))

(declare-fun m!18843 () Bool)

(assert (=> b!11054 m!18843))

(declare-fun m!18845 () Bool)

(assert (=> b!11056 m!18845))

(declare-fun m!18847 () Bool)

(assert (=> b!11056 m!18847))

(declare-fun m!18849 () Bool)

(assert (=> b!11056 m!18849))

(declare-fun m!18851 () Bool)

(assert (=> b!11056 m!18851))

(declare-fun m!18853 () Bool)

(assert (=> b!11056 m!18853))

(declare-fun m!18855 () Bool)

(assert (=> b!11056 m!18855))

(declare-fun m!18857 () Bool)

(assert (=> b!11056 m!18857))

(declare-fun m!18859 () Bool)

(assert (=> b!11056 m!18859))

(declare-fun m!18861 () Bool)

(assert (=> b!11056 m!18861))

(assert (=> b!11056 m!18855))

(assert (=> b!11056 m!18847))

(push 1)

(assert (not b!11056))

(assert (not b!11054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6383 () Bool)

(declare-fun c!1217 () Bool)

(assert (=> d!6383 (= c!1217 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5980 () (_ BitVec 64))

(assert (=> d!6383 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5360 (bvshl lt!5359 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5980 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5360 (bvshl lt!5359 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!11061 () Bool)

(assert (=> b!11061 (= e!5980 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11062 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11062 (= e!5980 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5360 (bvshl lt!5359 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6383 c!1217) b!11061))

(assert (= (and d!6383 (not c!1217)) b!11062))

(assert (=> b!11062 m!18847))

(assert (=> b!11062 m!18847))

(declare-fun m!18863 () Bool)

(assert (=> b!11062 m!18863))

(assert (=> b!11056 d!6383))

(declare-fun d!6385 () Bool)

(declare-fun c!1220 () Bool)

(assert (=> d!6385 (= c!1220 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5983 () (_ BitVec 64))

(assert (=> d!6385 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5983 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!11067 () Bool)

(assert (=> b!11067 (= e!5983 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11068 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11068 (= e!5983 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6385 c!1220) b!11067))

(assert (= (and d!6385 (not c!1220)) b!11068))

(assert (=> b!11068 m!18855))

(declare-fun m!18865 () Bool)

(assert (=> b!11068 m!18865))

(assert (=> b!11056 d!6385))

(declare-fun d!6387 () Bool)

(declare-fun c!1223 () Bool)

(assert (=> d!6387 (= c!1223 (fp.isNaN x!143))))

(declare-fun e!5986 () (_ BitVec 64))

(assert (=> d!6387 (= (__LO!0 x!143) ((_ extract 31 0) e!5986))))

(declare-fun b!11073 () Bool)

(assert (=> b!11073 (= e!5986 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11074 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11074 (= e!5986 (choose!1 x!143 x!143 false))))

(assert (= (and d!6387 c!1223) b!11073))

(assert (= (and d!6387 (not c!1223)) b!11074))

(declare-fun m!18867 () Bool)

(assert (=> b!11074 m!18867))

(assert (=> b!11056 d!6387))

(declare-fun d!6389 () Bool)

(declare-fun c!1226 () Bool)

(assert (=> d!6389 (= c!1226 (fp.isNaN x!143))))

(declare-fun e!5989 () (_ BitVec 64))

(assert (=> d!6389 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5989 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!11079 () Bool)

(assert (=> b!11079 (= e!5989 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11080 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11080 (= e!5989 (choose!3 x!143 x!143 false))))

(assert (= (and d!6389 c!1226) b!11079))

(assert (= (and d!6389 (not c!1226)) b!11080))

(declare-fun m!18869 () Bool)

(assert (=> b!11080 m!18869))

(assert (=> b!11054 d!6389))

(push 1)

(assert (not b!11080))

(assert (not b!11068))

(assert (not b!11074))

(assert (not b!11062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

