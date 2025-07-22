; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1899 () Bool)

(assert start!1899)

(declare-fun res!7912 () Bool)

(declare-fun e!5567 () Bool)

(assert (=> start!1899 (=> (not res!7912) (not e!5567))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1899 (= res!7912 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1899 e!5567))

(assert (=> start!1899 true))

(declare-fun b!9705 () Bool)

(declare-fun e!5568 () Bool)

(assert (=> b!9705 (= e!5567 e!5568)))

(declare-fun res!7911 () Bool)

(assert (=> b!9705 (=> (not res!7911) (not e!5568))))

(declare-fun lt!4952 () (_ BitVec 32))

(assert (=> b!9705 (= res!7911 (and (bvsle #b11111111111111111111111111101001 lt!4952) (bvsle lt!4952 #b00000000000000000000001111101000)))))

(declare-fun lt!4950 () (_ BitVec 32))

(assert (=> b!9705 (= lt!4952 (bvsub (bvashr lt!4950 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9705 (= lt!4950 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9706 () Bool)

(declare-fun e!5569 () Bool)

(assert (=> b!9706 (= e!5568 e!5569)))

(declare-fun res!7910 () Bool)

(assert (=> b!9706 (=> (not res!7910) (not e!5569))))

(declare-fun lt!4955 () (_ BitVec 32))

(assert (=> b!9706 (= res!7910 (and (bvsle #b00000000000000000000000000011000 lt!4955) (bvsle lt!4955 #b00000000000000000000001111110000) (= (bvsrem lt!4955 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4951 () (_ BitVec 32))

(assert (=> b!9706 (= lt!4955 (ite (bvslt lt!4951 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4951))))

(assert (=> b!9706 (= lt!4951 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4952 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9707 () Bool)

(declare-fun lt!4953 () (_ FloatingPoint 11 53))

(assert (=> b!9707 (= e!5569 (and (not (fp.isNaN lt!4953)) (not (fp.gt lt!4953 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!4956 () (_ FloatingPoint 11 53))

(declare-fun lt!4954 () (_ FloatingPoint 11 53))

(assert (=> b!9707 (= lt!4953 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4956 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4954) #b00000000000000000000000000000000 (ite (fp.gt lt!4954 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4954 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4954)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4956) #b00000000000000000000000000000000 (ite (fp.gt lt!4956 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4956 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4956)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9707 (= lt!4956 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4954 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4954) #b00000000000000000000000000000000 (ite (fp.gt lt!4954 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4954 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4954)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9707 (= lt!4954 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4950 (bvshl lt!4955 #b00000000000000000000000000010100))))))

(assert (= (and start!1899 res!7912) b!9705))

(assert (= (and b!9705 res!7911) b!9706))

(assert (= (and b!9706 res!7910) b!9707))

(declare-fun m!14103 () Bool)

(assert (=> b!9705 m!14103))

(declare-fun m!14105 () Bool)

(assert (=> b!9707 m!14105))

(declare-fun m!14107 () Bool)

(assert (=> b!9707 m!14107))

(declare-fun m!14109 () Bool)

(assert (=> b!9707 m!14109))

(declare-fun m!14111 () Bool)

(assert (=> b!9707 m!14111))

(declare-fun m!14113 () Bool)

(assert (=> b!9707 m!14113))

(declare-fun m!14115 () Bool)

(assert (=> b!9707 m!14115))

(assert (=> b!9707 m!14107))

(assert (=> b!9707 m!14109))

(declare-fun m!14117 () Bool)

(assert (=> b!9707 m!14117))

(check-sat (not b!9707) (not b!9705))
(check-sat)
(get-model)

(declare-fun d!4099 () Bool)

(declare-fun c!1106 () Bool)

(assert (=> d!4099 (= c!1106 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5572 () (_ BitVec 64))

(assert (=> d!4099 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4950 (bvshl lt!4955 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5572 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4950 (bvshl lt!4955 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9712 () Bool)

(assert (=> b!9712 (= e!5572 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9713 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9713 (= e!5572 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4950 (bvshl lt!4955 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4099 c!1106) b!9712))

(assert (= (and d!4099 (not c!1106)) b!9713))

(assert (=> b!9713 m!14109))

(assert (=> b!9713 m!14109))

(declare-fun m!14119 () Bool)

(assert (=> b!9713 m!14119))

(assert (=> b!9707 d!4099))

(declare-fun d!4101 () Bool)

(declare-fun c!1109 () Bool)

(assert (=> d!4101 (= c!1109 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5575 () (_ BitVec 64))

(assert (=> d!4101 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5575 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9718 () Bool)

(assert (=> b!9718 (= e!5575 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9719 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9719 (= e!5575 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4101 c!1109) b!9718))

(assert (= (and d!4101 (not c!1109)) b!9719))

(assert (=> b!9719 m!14107))

(declare-fun m!14121 () Bool)

(assert (=> b!9719 m!14121))

(assert (=> b!9707 d!4101))

(declare-fun d!4103 () Bool)

(declare-fun c!1112 () Bool)

(assert (=> d!4103 (= c!1112 (fp.isNaN x!143))))

(declare-fun e!5578 () (_ BitVec 64))

(assert (=> d!4103 (= (__LO!0 x!143) ((_ extract 31 0) e!5578))))

(declare-fun b!9724 () Bool)

(assert (=> b!9724 (= e!5578 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9725 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9725 (= e!5578 (choose!1 x!143 x!143 false))))

(assert (= (and d!4103 c!1112) b!9724))

(assert (= (and d!4103 (not c!1112)) b!9725))

(declare-fun m!14123 () Bool)

(assert (=> b!9725 m!14123))

(assert (=> b!9707 d!4103))

(declare-fun d!4105 () Bool)

(declare-fun c!1115 () Bool)

(assert (=> d!4105 (= c!1115 (fp.isNaN x!143))))

(declare-fun e!5581 () (_ BitVec 64))

(assert (=> d!4105 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5581 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9730 () Bool)

(assert (=> b!9730 (= e!5581 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9731 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9731 (= e!5581 (choose!3 x!143 x!143 false))))

(assert (= (and d!4105 c!1115) b!9730))

(assert (= (and d!4105 (not c!1115)) b!9731))

(declare-fun m!14125 () Bool)

(assert (=> b!9731 m!14125))

(assert (=> b!9705 d!4105))

(check-sat (not b!9731) (not b!9713) (not b!9719) (not b!9725))
(check-sat)
