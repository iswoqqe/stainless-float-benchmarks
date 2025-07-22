; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1923 () Bool)

(assert start!1923)

(declare-fun res!7947 () Bool)

(declare-fun e!5627 () Bool)

(assert (=> start!1923 (=> (not res!7947) (not e!5627))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1923 (= res!7947 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1923 e!5627))

(assert (=> start!1923 true))

(declare-fun b!9789 () Bool)

(declare-fun e!5628 () Bool)

(assert (=> b!9789 (= e!5627 e!5628)))

(declare-fun res!7946 () Bool)

(assert (=> b!9789 (=> (not res!7946) (not e!5628))))

(declare-fun lt!5028 () (_ BitVec 32))

(assert (=> b!9789 (= res!7946 (and (bvsle #b11111111111111111111111111101001 lt!5028) (bvsle lt!5028 #b00000000000000000000001111101000)))))

(declare-fun lt!5023 () (_ BitVec 32))

(assert (=> b!9789 (= lt!5028 (bvsub (bvashr lt!5023 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9789 (= lt!5023 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9790 () Bool)

(declare-fun e!5629 () Bool)

(assert (=> b!9790 (= e!5628 e!5629)))

(declare-fun res!7948 () Bool)

(assert (=> b!9790 (=> (not res!7948) (not e!5629))))

(declare-fun lt!5022 () (_ BitVec 32))

(assert (=> b!9790 (= res!7948 (and (bvsle #b00000000000000000000000000011000 lt!5022) (bvsle lt!5022 #b00000000000000000000001111110000) (= (bvsrem lt!5022 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5025 () (_ BitVec 32))

(assert (=> b!9790 (= lt!5022 (ite (bvslt lt!5025 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5025))))

(assert (=> b!9790 (= lt!5025 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5028 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun lt!5024 () (_ FloatingPoint 11 53))

(declare-fun b!9791 () Bool)

(declare-fun lt!5027 () (_ FloatingPoint 11 53))

(declare-fun lt!5026 () (_ FloatingPoint 11 53))

(assert (=> b!9791 (= e!5629 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5026 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5024) #b00000000000000000000000000000000 (ite (fp.gt lt!5024 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5024 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5024)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5027) #b00000000000000000000000000000000 (ite (fp.gt lt!5027 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5027 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5027)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5026) #b00000000000000000000000000000000 (ite (fp.gt lt!5026 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5026 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5026)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9791 (= lt!5026 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5027 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5024) #b00000000000000000000000000000000 (ite (fp.gt lt!5024 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5024 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5024)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5027) #b00000000000000000000000000000000 (ite (fp.gt lt!5027 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5027 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5027)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9791 (= lt!5027 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5024 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5024) #b00000000000000000000000000000000 (ite (fp.gt lt!5024 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5024 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5024)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9791 (= lt!5024 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5023 (bvshl lt!5022 #b00000000000000000000000000010100))))))

(assert (= (and start!1923 res!7947) b!9789))

(assert (= (and b!9789 res!7946) b!9790))

(assert (= (and b!9790 res!7948) b!9791))

(declare-fun m!14167 () Bool)

(assert (=> b!9789 m!14167))

(declare-fun m!14169 () Bool)

(assert (=> b!9791 m!14169))

(declare-fun m!14171 () Bool)

(assert (=> b!9791 m!14171))

(declare-fun m!14173 () Bool)

(assert (=> b!9791 m!14173))

(declare-fun m!14175 () Bool)

(assert (=> b!9791 m!14175))

(declare-fun m!14177 () Bool)

(assert (=> b!9791 m!14177))

(declare-fun m!14179 () Bool)

(assert (=> b!9791 m!14179))

(declare-fun m!14181 () Bool)

(assert (=> b!9791 m!14181))

(declare-fun m!14183 () Bool)

(assert (=> b!9791 m!14183))

(assert (=> b!9791 m!14177))

(declare-fun m!14185 () Bool)

(assert (=> b!9791 m!14185))

(assert (=> b!9791 m!14183))

(check-sat (not b!9791) (not b!9789))
(check-sat)
(get-model)

(declare-fun d!4115 () Bool)

(declare-fun c!1130 () Bool)

(assert (=> d!4115 (= c!1130 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5632 () (_ BitVec 64))

(assert (=> d!4115 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5023 (bvshl lt!5022 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5632 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5023 (bvshl lt!5022 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9796 () Bool)

(assert (=> b!9796 (= e!5632 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9797 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9797 (= e!5632 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5023 (bvshl lt!5022 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4115 c!1130) b!9796))

(assert (= (and d!4115 (not c!1130)) b!9797))

(assert (=> b!9797 m!14177))

(assert (=> b!9797 m!14177))

(declare-fun m!14187 () Bool)

(assert (=> b!9797 m!14187))

(assert (=> b!9791 d!4115))

(declare-fun d!4117 () Bool)

(declare-fun c!1133 () Bool)

(assert (=> d!4117 (= c!1133 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5635 () (_ BitVec 64))

(assert (=> d!4117 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5635 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9802 () Bool)

(assert (=> b!9802 (= e!5635 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9803 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9803 (= e!5635 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4117 c!1133) b!9802))

(assert (= (and d!4117 (not c!1133)) b!9803))

(assert (=> b!9803 m!14183))

(declare-fun m!14189 () Bool)

(assert (=> b!9803 m!14189))

(assert (=> b!9791 d!4117))

(declare-fun d!4119 () Bool)

(declare-fun c!1136 () Bool)

(assert (=> d!4119 (= c!1136 (fp.isNaN x!143))))

(declare-fun e!5638 () (_ BitVec 64))

(assert (=> d!4119 (= (__LO!0 x!143) ((_ extract 31 0) e!5638))))

(declare-fun b!9808 () Bool)

(assert (=> b!9808 (= e!5638 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9809 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9809 (= e!5638 (choose!1 x!143 x!143 false))))

(assert (= (and d!4119 c!1136) b!9808))

(assert (= (and d!4119 (not c!1136)) b!9809))

(declare-fun m!14191 () Bool)

(assert (=> b!9809 m!14191))

(assert (=> b!9791 d!4119))

(declare-fun d!4121 () Bool)

(declare-fun c!1139 () Bool)

(assert (=> d!4121 (= c!1139 (fp.isNaN x!143))))

(declare-fun e!5641 () (_ BitVec 64))

(assert (=> d!4121 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5641 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9814 () Bool)

(assert (=> b!9814 (= e!5641 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9815 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9815 (= e!5641 (choose!3 x!143 x!143 false))))

(assert (= (and d!4121 c!1139) b!9814))

(assert (= (and d!4121 (not c!1139)) b!9815))

(declare-fun m!14193 () Bool)

(assert (=> b!9815 m!14193))

(assert (=> b!9789 d!4121))

(check-sat (not b!9809) (not b!9815) (not b!9797) (not b!9803))
(check-sat)
