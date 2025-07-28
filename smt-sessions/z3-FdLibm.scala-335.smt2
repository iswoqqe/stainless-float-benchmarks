; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1949 () Bool)

(assert start!1949)

(declare-fun res!8284 () Bool)

(declare-fun e!5699 () Bool)

(assert (=> start!1949 (=> (not res!8284) (not e!5699))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1949 (= res!8284 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1949 e!5699))

(assert (=> start!1949 true))

(declare-fun b!10157 () Bool)

(declare-fun e!5698 () Bool)

(assert (=> b!10157 (= e!5699 e!5698)))

(declare-fun res!8286 () Bool)

(assert (=> b!10157 (=> (not res!8286) (not e!5698))))

(declare-fun lt!5095 () (_ BitVec 32))

(assert (=> b!10157 (= res!8286 (and (bvsle #b11111111111111111111111111101001 lt!5095) (bvsle lt!5095 #b00000000000000000000001111101000)))))

(declare-fun lt!5094 () (_ BitVec 32))

(assert (=> b!10157 (= lt!5095 (bvsub (bvashr lt!5094 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10157 (= lt!5094 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10158 () Bool)

(declare-fun e!5700 () Bool)

(assert (=> b!10158 (= e!5698 e!5700)))

(declare-fun res!8285 () Bool)

(assert (=> b!10158 (=> (not res!8285) (not e!5700))))

(declare-fun lt!5100 () (_ BitVec 32))

(assert (=> b!10158 (= res!8285 (and (bvsle #b00000000000000000000000000011000 lt!5100) (bvsle lt!5100 #b00000000000000000000001111110000) (= (bvsrem lt!5100 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5098 () (_ BitVec 32))

(assert (=> b!10158 (= lt!5100 (ite (bvslt lt!5098 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5098))))

(assert (=> b!10158 (= lt!5098 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5095 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun lt!5099 () (_ FloatingPoint 11 53))

(declare-fun b!10159 () Bool)

(declare-fun lt!5096 () (_ FloatingPoint 11 53))

(declare-fun lt!5097 () (_ FloatingPoint 11 53))

(assert (=> b!10159 (= e!5700 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5099 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5097) #b00000000000000000000000000000000 (ite (fp.gt lt!5097 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5097 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5097)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5096) #b00000000000000000000000000000000 (ite (fp.gt lt!5096 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5096 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5096)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5099) #b00000000000000000000000000000000 (ite (fp.gt lt!5099 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5099 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5099)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!10159 (= lt!5099 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5096 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5097) #b00000000000000000000000000000000 (ite (fp.gt lt!5097 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5097 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5097)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5096) #b00000000000000000000000000000000 (ite (fp.gt lt!5096 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5096 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5096)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10159 (= lt!5096 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5097 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5097) #b00000000000000000000000000000000 (ite (fp.gt lt!5097 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5097 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5097)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10159 (= lt!5097 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5094 (bvshl lt!5100 #b00000000000000000000000000010100))))))

(assert (= (and start!1949 res!8284) b!10157))

(assert (= (and b!10157 res!8286) b!10158))

(assert (= (and b!10158 res!8285) b!10159))

(declare-fun m!15991 () Bool)

(assert (=> b!10157 m!15991))

(declare-fun m!15993 () Bool)

(assert (=> b!10159 m!15993))

(declare-fun m!15995 () Bool)

(assert (=> b!10159 m!15995))

(declare-fun m!15997 () Bool)

(assert (=> b!10159 m!15997))

(declare-fun m!15999 () Bool)

(assert (=> b!10159 m!15999))

(declare-fun m!16001 () Bool)

(assert (=> b!10159 m!16001))

(declare-fun m!16003 () Bool)

(assert (=> b!10159 m!16003))

(declare-fun m!16005 () Bool)

(assert (=> b!10159 m!16005))

(assert (=> b!10159 m!16003))

(declare-fun m!16007 () Bool)

(assert (=> b!10159 m!16007))

(assert (=> b!10159 m!16001))

(declare-fun m!16009 () Bool)

(assert (=> b!10159 m!16009))

(check-sat (not b!10157) (not b!10159))
(check-sat)
(get-model)

(declare-fun d!4821 () Bool)

(declare-fun c!1145 () Bool)

(assert (=> d!4821 (= c!1145 (fp.isNaN x!143))))

(declare-fun e!5703 () (_ BitVec 64))

(assert (=> d!4821 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5703 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10164 () Bool)

(assert (=> b!10164 (= e!5703 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10165 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10165 (= e!5703 (choose!3 x!143 x!143 false))))

(assert (= (and d!4821 c!1145) b!10164))

(assert (= (and d!4821 (not c!1145)) b!10165))

(declare-fun m!16011 () Bool)

(assert (=> b!10165 m!16011))

(assert (=> b!10157 d!4821))

(declare-fun d!4823 () Bool)

(declare-fun c!1148 () Bool)

(assert (=> d!4823 (= c!1148 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5706 () (_ BitVec 64))

(assert (=> d!4823 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5094 (bvshl lt!5100 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5706 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5094 (bvshl lt!5100 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10170 () Bool)

(assert (=> b!10170 (= e!5706 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10171 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10171 (= e!5706 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5094 (bvshl lt!5100 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4823 c!1148) b!10170))

(assert (= (and d!4823 (not c!1148)) b!10171))

(assert (=> b!10171 m!16003))

(assert (=> b!10171 m!16003))

(declare-fun m!16013 () Bool)

(assert (=> b!10171 m!16013))

(assert (=> b!10159 d!4823))

(declare-fun d!4825 () Bool)

(declare-fun c!1151 () Bool)

(assert (=> d!4825 (= c!1151 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5709 () (_ BitVec 64))

(assert (=> d!4825 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5709 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10176 () Bool)

(assert (=> b!10176 (= e!5709 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10177 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10177 (= e!5709 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4825 c!1151) b!10176))

(assert (= (and d!4825 (not c!1151)) b!10177))

(assert (=> b!10177 m!16001))

(declare-fun m!16015 () Bool)

(assert (=> b!10177 m!16015))

(assert (=> b!10159 d!4825))

(declare-fun d!4827 () Bool)

(declare-fun c!1154 () Bool)

(assert (=> d!4827 (= c!1154 (fp.isNaN x!143))))

(declare-fun e!5712 () (_ BitVec 64))

(assert (=> d!4827 (= (__LO!0 x!143) ((_ extract 31 0) e!5712))))

(declare-fun b!10182 () Bool)

(assert (=> b!10182 (= e!5712 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10183 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10183 (= e!5712 (choose!1 x!143 x!143 false))))

(assert (= (and d!4827 c!1154) b!10182))

(assert (= (and d!4827 (not c!1154)) b!10183))

(declare-fun m!16017 () Bool)

(assert (=> b!10183 m!16017))

(assert (=> b!10159 d!4827))

(check-sat (not b!10171) (not b!10165) (not b!10183) (not b!10177))
(check-sat)
