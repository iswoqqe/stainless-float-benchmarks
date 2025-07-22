; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1909 () Bool)

(assert start!1909)

(declare-fun res!7921 () Bool)

(declare-fun e!5590 () Bool)

(assert (=> start!1909 (=> (not res!7921) (not e!5590))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1909 (= res!7921 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1909 e!5590))

(assert (=> start!1909 true))

(declare-fun b!9738 () Bool)

(declare-fun e!5589 () Bool)

(assert (=> b!9738 (= e!5590 e!5589)))

(declare-fun res!7919 () Bool)

(assert (=> b!9738 (=> (not res!7919) (not e!5589))))

(declare-fun lt!4974 () (_ BitVec 32))

(assert (=> b!9738 (= res!7919 (and (bvsle #b11111111111111111111111111101001 lt!4974) (bvsle lt!4974 #b00000000000000000000001111101000)))))

(declare-fun lt!4973 () (_ BitVec 32))

(assert (=> b!9738 (= lt!4974 (bvsub (bvashr lt!4973 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9738 (= lt!4973 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9739 () Bool)

(declare-fun e!5588 () Bool)

(assert (=> b!9739 (= e!5589 e!5588)))

(declare-fun res!7920 () Bool)

(assert (=> b!9739 (=> (not res!7920) (not e!5588))))

(declare-fun lt!4975 () (_ BitVec 32))

(assert (=> b!9739 (= res!7920 (and (bvsle #b00000000000000000000000000011000 lt!4975) (bvsle lt!4975 #b00000000000000000000001111110000) (= (bvsrem lt!4975 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4971 () (_ BitVec 32))

(assert (=> b!9739 (= lt!4975 (ite (bvslt lt!4971 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4971))))

(assert (=> b!9739 (= lt!4971 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4974 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9740 () Bool)

(declare-fun lt!4972 () (_ FloatingPoint 11 53))

(assert (=> b!9740 (= e!5588 (and (not (fp.isNaN lt!4972)) (fp.gt lt!4972 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!4972 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!4977 () (_ FloatingPoint 11 53))

(declare-fun lt!4976 () (_ FloatingPoint 11 53))

(assert (=> b!9740 (= lt!4972 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4977 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4976) #b00000000000000000000000000000000 (ite (fp.gt lt!4976 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4976 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4976)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4977) #b00000000000000000000000000000000 (ite (fp.gt lt!4977 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4977 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4977)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9740 (= lt!4977 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4976 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4976) #b00000000000000000000000000000000 (ite (fp.gt lt!4976 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4976 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4976)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9740 (= lt!4976 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4973 (bvshl lt!4975 #b00000000000000000000000000010100))))))

(assert (= (and start!1909 res!7921) b!9738))

(assert (= (and b!9738 res!7919) b!9739))

(assert (= (and b!9739 res!7920) b!9740))

(declare-fun m!14127 () Bool)

(assert (=> b!9738 m!14127))

(declare-fun m!14129 () Bool)

(assert (=> b!9740 m!14129))

(declare-fun m!14131 () Bool)

(assert (=> b!9740 m!14131))

(declare-fun m!14133 () Bool)

(assert (=> b!9740 m!14133))

(declare-fun m!14135 () Bool)

(assert (=> b!9740 m!14135))

(declare-fun m!14137 () Bool)

(assert (=> b!9740 m!14137))

(assert (=> b!9740 m!14129))

(assert (=> b!9740 m!14137))

(declare-fun m!14139 () Bool)

(assert (=> b!9740 m!14139))

(declare-fun m!14141 () Bool)

(assert (=> b!9740 m!14141))

(check-sat (not b!9740) (not b!9738))
(check-sat)
(get-model)

(declare-fun d!4107 () Bool)

(declare-fun c!1118 () Bool)

(assert (=> d!4107 (= c!1118 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5593 () (_ BitVec 64))

(assert (=> d!4107 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4973 (bvshl lt!4975 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5593 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4973 (bvshl lt!4975 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9745 () Bool)

(assert (=> b!9745 (= e!5593 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9746 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9746 (= e!5593 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4973 (bvshl lt!4975 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4107 c!1118) b!9745))

(assert (= (and d!4107 (not c!1118)) b!9746))

(assert (=> b!9746 m!14129))

(assert (=> b!9746 m!14129))

(declare-fun m!14143 () Bool)

(assert (=> b!9746 m!14143))

(assert (=> b!9740 d!4107))

(declare-fun d!4109 () Bool)

(declare-fun c!1121 () Bool)

(assert (=> d!4109 (= c!1121 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5596 () (_ BitVec 64))

(assert (=> d!4109 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5596 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9751 () Bool)

(assert (=> b!9751 (= e!5596 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9752 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9752 (= e!5596 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4109 c!1121) b!9751))

(assert (= (and d!4109 (not c!1121)) b!9752))

(assert (=> b!9752 m!14137))

(declare-fun m!14145 () Bool)

(assert (=> b!9752 m!14145))

(assert (=> b!9740 d!4109))

(declare-fun d!4111 () Bool)

(declare-fun c!1124 () Bool)

(assert (=> d!4111 (= c!1124 (fp.isNaN x!143))))

(declare-fun e!5599 () (_ BitVec 64))

(assert (=> d!4111 (= (__LO!0 x!143) ((_ extract 31 0) e!5599))))

(declare-fun b!9757 () Bool)

(assert (=> b!9757 (= e!5599 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9758 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9758 (= e!5599 (choose!1 x!143 x!143 false))))

(assert (= (and d!4111 c!1124) b!9757))

(assert (= (and d!4111 (not c!1124)) b!9758))

(declare-fun m!14147 () Bool)

(assert (=> b!9758 m!14147))

(assert (=> b!9740 d!4111))

(declare-fun d!4113 () Bool)

(declare-fun c!1127 () Bool)

(assert (=> d!4113 (= c!1127 (fp.isNaN x!143))))

(declare-fun e!5602 () (_ BitVec 64))

(assert (=> d!4113 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5602 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9763 () Bool)

(assert (=> b!9763 (= e!5602 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9764 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9764 (= e!5602 (choose!3 x!143 x!143 false))))

(assert (= (and d!4113 c!1127) b!9763))

(assert (= (and d!4113 (not c!1127)) b!9764))

(declare-fun m!14149 () Bool)

(assert (=> b!9764 m!14149))

(assert (=> b!9738 d!4113))

(check-sat (not b!9752) (not b!9764) (not b!9758) (not b!9746))
(check-sat)
