; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1959 () Bool)

(assert start!1959)

(declare-fun res!8294 () Bool)

(declare-fun e!5721 () Bool)

(assert (=> start!1959 (=> (not res!8294) (not e!5721))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1959 (= res!8294 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1959 e!5721))

(assert (=> start!1959 true))

(declare-fun b!10190 () Bool)

(declare-fun e!5719 () Bool)

(assert (=> b!10190 (= e!5721 e!5719)))

(declare-fun res!8293 () Bool)

(assert (=> b!10190 (=> (not res!8293) (not e!5719))))

(declare-fun lt!5120 () (_ BitVec 32))

(assert (=> b!10190 (= res!8293 (and (bvsle #b11111111111111111111111111101001 lt!5120) (bvsle lt!5120 #b00000000000000000000001111101000)))))

(declare-fun lt!5123 () (_ BitVec 32))

(assert (=> b!10190 (= lt!5120 (bvsub (bvashr lt!5123 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10190 (= lt!5123 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10191 () Bool)

(declare-fun e!5720 () Bool)

(assert (=> b!10191 (= e!5719 e!5720)))

(declare-fun res!8295 () Bool)

(assert (=> b!10191 (=> (not res!8295) (not e!5720))))

(declare-fun lt!5118 () (_ BitVec 32))

(assert (=> b!10191 (= res!8295 (and (bvsle #b00000000000000000000000000011000 lt!5118) (bvsle lt!5118 #b00000000000000000000001111110000) (= (bvsrem lt!5118 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5117 () (_ BitVec 32))

(assert (=> b!10191 (= lt!5118 (ite (bvslt lt!5117 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5117))))

(assert (=> b!10191 (= lt!5117 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5120 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10192 () Bool)

(declare-fun lt!5124 () (_ FloatingPoint 11 53))

(assert (=> b!10192 (= e!5720 (and (not (fp.isNaN lt!5124)) (not (fp.gt lt!5124 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5119 () (_ FloatingPoint 11 53))

(declare-fun lt!5122 () (_ FloatingPoint 11 53))

(declare-fun lt!5121 () (_ FloatingPoint 11 53))

(assert (=> b!10192 (= lt!5124 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5122 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5121) #b00000000000000000000000000000000 (ite (fp.gt lt!5121 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5121 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5121)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5119) #b00000000000000000000000000000000 (ite (fp.gt lt!5119 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5119 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5119)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5122) #b00000000000000000000000000000000 (ite (fp.gt lt!5122 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5122 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5122)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10192 (= lt!5122 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5119 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5121) #b00000000000000000000000000000000 (ite (fp.gt lt!5121 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5121 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5121)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5119) #b00000000000000000000000000000000 (ite (fp.gt lt!5119 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5119 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5119)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10192 (= lt!5119 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5121 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5121) #b00000000000000000000000000000000 (ite (fp.gt lt!5121 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5121 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5121)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10192 (= lt!5121 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5123 (bvshl lt!5118 #b00000000000000000000000000010100))))))

(assert (= (and start!1959 res!8294) b!10190))

(assert (= (and b!10190 res!8293) b!10191))

(assert (= (and b!10191 res!8295) b!10192))

(declare-fun m!16019 () Bool)

(assert (=> b!10190 m!16019))

(declare-fun m!16021 () Bool)

(assert (=> b!10192 m!16021))

(declare-fun m!16023 () Bool)

(assert (=> b!10192 m!16023))

(declare-fun m!16025 () Bool)

(assert (=> b!10192 m!16025))

(declare-fun m!16027 () Bool)

(assert (=> b!10192 m!16027))

(declare-fun m!16029 () Bool)

(assert (=> b!10192 m!16029))

(declare-fun m!16031 () Bool)

(assert (=> b!10192 m!16031))

(assert (=> b!10192 m!16031))

(declare-fun m!16033 () Bool)

(assert (=> b!10192 m!16033))

(assert (=> b!10192 m!16029))

(declare-fun m!16035 () Bool)

(assert (=> b!10192 m!16035))

(declare-fun m!16037 () Bool)

(assert (=> b!10192 m!16037))

(check-sat (not b!10190) (not b!10192))
(check-sat)
(get-model)

(declare-fun d!4829 () Bool)

(declare-fun c!1157 () Bool)

(assert (=> d!4829 (= c!1157 (fp.isNaN x!143))))

(declare-fun e!5724 () (_ BitVec 64))

(assert (=> d!4829 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5724 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10197 () Bool)

(assert (=> b!10197 (= e!5724 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10198 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10198 (= e!5724 (choose!3 x!143 x!143 false))))

(assert (= (and d!4829 c!1157) b!10197))

(assert (= (and d!4829 (not c!1157)) b!10198))

(declare-fun m!16039 () Bool)

(assert (=> b!10198 m!16039))

(assert (=> b!10190 d!4829))

(declare-fun d!4831 () Bool)

(declare-fun c!1160 () Bool)

(assert (=> d!4831 (= c!1160 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5727 () (_ BitVec 64))

(assert (=> d!4831 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5123 (bvshl lt!5118 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5727 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5123 (bvshl lt!5118 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10203 () Bool)

(assert (=> b!10203 (= e!5727 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10204 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10204 (= e!5727 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5123 (bvshl lt!5118 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4831 c!1160) b!10203))

(assert (= (and d!4831 (not c!1160)) b!10204))

(assert (=> b!10204 m!16031))

(assert (=> b!10204 m!16031))

(declare-fun m!16041 () Bool)

(assert (=> b!10204 m!16041))

(assert (=> b!10192 d!4831))

(declare-fun d!4833 () Bool)

(declare-fun c!1163 () Bool)

(assert (=> d!4833 (= c!1163 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5730 () (_ BitVec 64))

(assert (=> d!4833 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5730 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10209 () Bool)

(assert (=> b!10209 (= e!5730 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10210 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10210 (= e!5730 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4833 c!1163) b!10209))

(assert (= (and d!4833 (not c!1163)) b!10210))

(assert (=> b!10210 m!16029))

(declare-fun m!16043 () Bool)

(assert (=> b!10210 m!16043))

(assert (=> b!10192 d!4833))

(declare-fun d!4835 () Bool)

(declare-fun c!1166 () Bool)

(assert (=> d!4835 (= c!1166 (fp.isNaN x!143))))

(declare-fun e!5733 () (_ BitVec 64))

(assert (=> d!4835 (= (__LO!0 x!143) ((_ extract 31 0) e!5733))))

(declare-fun b!10215 () Bool)

(assert (=> b!10215 (= e!5733 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10216 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10216 (= e!5733 (choose!1 x!143 x!143 false))))

(assert (= (and d!4835 c!1166) b!10215))

(assert (= (and d!4835 (not c!1166)) b!10216))

(declare-fun m!16045 () Bool)

(assert (=> b!10216 m!16045))

(assert (=> b!10192 d!4835))

(check-sat (not b!10210) (not b!10204) (not b!10198) (not b!10216))
(check-sat)
