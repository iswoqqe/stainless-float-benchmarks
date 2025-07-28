; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1925 () Bool)

(assert start!1925)

(declare-fun res!8249 () Bool)

(declare-fun e!5640 () Bool)

(assert (=> start!1925 (=> (not res!8249) (not e!5640))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1925 (= res!8249 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1925 e!5640))

(assert (=> start!1925 true))

(declare-fun b!10073 () Bool)

(declare-fun e!5639 () Bool)

(assert (=> b!10073 (= e!5640 e!5639)))

(declare-fun res!8250 () Bool)

(assert (=> b!10073 (=> (not res!8250) (not e!5639))))

(declare-fun lt!5028 () (_ BitVec 32))

(assert (=> b!10073 (= res!8250 (and (bvsle #b11111111111111111111111111101001 lt!5028) (bvsle lt!5028 #b00000000000000000000001111101000)))))

(declare-fun lt!5022 () (_ BitVec 32))

(assert (=> b!10073 (= lt!5028 (bvsub (bvashr lt!5022 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10073 (= lt!5022 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10074 () Bool)

(declare-fun e!5638 () Bool)

(assert (=> b!10074 (= e!5639 e!5638)))

(declare-fun res!8248 () Bool)

(assert (=> b!10074 (=> (not res!8248) (not e!5638))))

(declare-fun lt!5024 () (_ BitVec 32))

(assert (=> b!10074 (= res!8248 (and (bvsle #b00000000000000000000000000011000 lt!5024) (bvsle lt!5024 #b00000000000000000000001111110000) (= (bvsrem lt!5024 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5027 () (_ BitVec 32))

(assert (=> b!10074 (= lt!5024 (ite (bvslt lt!5027 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5027))))

(assert (=> b!10074 (= lt!5027 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5028 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10075 () Bool)

(declare-fun lt!5026 () (_ FloatingPoint 11 53))

(assert (=> b!10075 (= e!5638 (and (not (fp.isNaN lt!5026)) (not (fp.gt lt!5026 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5025 () (_ FloatingPoint 11 53))

(declare-fun lt!5023 () (_ FloatingPoint 11 53))

(assert (=> b!10075 (= lt!5026 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5025 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5023) #b00000000000000000000000000000000 (ite (fp.gt lt!5023 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5023 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5023)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5025) #b00000000000000000000000000000000 (ite (fp.gt lt!5025 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5025 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5025)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10075 (= lt!5025 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5023 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5023) #b00000000000000000000000000000000 (ite (fp.gt lt!5023 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5023 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5023)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10075 (= lt!5023 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5022 (bvshl lt!5024 #b00000000000000000000000000010100))))))

(assert (= (and start!1925 res!8249) b!10073))

(assert (= (and b!10073 res!8250) b!10074))

(assert (= (and b!10074 res!8248) b!10075))

(declare-fun m!15927 () Bool)

(assert (=> b!10073 m!15927))

(declare-fun m!15929 () Bool)

(assert (=> b!10075 m!15929))

(declare-fun m!15931 () Bool)

(assert (=> b!10075 m!15931))

(declare-fun m!15933 () Bool)

(assert (=> b!10075 m!15933))

(declare-fun m!15935 () Bool)

(assert (=> b!10075 m!15935))

(declare-fun m!15937 () Bool)

(assert (=> b!10075 m!15937))

(declare-fun m!15939 () Bool)

(assert (=> b!10075 m!15939))

(assert (=> b!10075 m!15931))

(assert (=> b!10075 m!15939))

(declare-fun m!15941 () Bool)

(assert (=> b!10075 m!15941))

(check-sat (not b!10073) (not b!10075))
(check-sat)
(get-model)

(declare-fun d!4805 () Bool)

(declare-fun c!1121 () Bool)

(assert (=> d!4805 (= c!1121 (fp.isNaN x!143))))

(declare-fun e!5643 () (_ BitVec 64))

(assert (=> d!4805 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5643 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10080 () Bool)

(assert (=> b!10080 (= e!5643 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10081 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10081 (= e!5643 (choose!3 x!143 x!143 false))))

(assert (= (and d!4805 c!1121) b!10080))

(assert (= (and d!4805 (not c!1121)) b!10081))

(declare-fun m!15943 () Bool)

(assert (=> b!10081 m!15943))

(assert (=> b!10073 d!4805))

(declare-fun d!4807 () Bool)

(declare-fun c!1124 () Bool)

(assert (=> d!4807 (= c!1124 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5646 () (_ BitVec 64))

(assert (=> d!4807 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5022 (bvshl lt!5024 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5646 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5022 (bvshl lt!5024 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10086 () Bool)

(assert (=> b!10086 (= e!5646 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10087 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10087 (= e!5646 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5022 (bvshl lt!5024 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4807 c!1124) b!10086))

(assert (= (and d!4807 (not c!1124)) b!10087))

(assert (=> b!10087 m!15931))

(assert (=> b!10087 m!15931))

(declare-fun m!15945 () Bool)

(assert (=> b!10087 m!15945))

(assert (=> b!10075 d!4807))

(declare-fun d!4809 () Bool)

(declare-fun c!1127 () Bool)

(assert (=> d!4809 (= c!1127 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5649 () (_ BitVec 64))

(assert (=> d!4809 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5649 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10092 () Bool)

(assert (=> b!10092 (= e!5649 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10093 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10093 (= e!5649 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4809 c!1127) b!10092))

(assert (= (and d!4809 (not c!1127)) b!10093))

(assert (=> b!10093 m!15939))

(declare-fun m!15947 () Bool)

(assert (=> b!10093 m!15947))

(assert (=> b!10075 d!4809))

(declare-fun d!4811 () Bool)

(declare-fun c!1130 () Bool)

(assert (=> d!4811 (= c!1130 (fp.isNaN x!143))))

(declare-fun e!5652 () (_ BitVec 64))

(assert (=> d!4811 (= (__LO!0 x!143) ((_ extract 31 0) e!5652))))

(declare-fun b!10098 () Bool)

(assert (=> b!10098 (= e!5652 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10099 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10099 (= e!5652 (choose!1 x!143 x!143 false))))

(assert (= (and d!4811 c!1130) b!10098))

(assert (= (and d!4811 (not c!1130)) b!10099))

(declare-fun m!15949 () Bool)

(assert (=> b!10099 m!15949))

(assert (=> b!10075 d!4811))

(check-sat (not b!10093) (not b!10087) (not b!10081) (not b!10099))
(check-sat)
