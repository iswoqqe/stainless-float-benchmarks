; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1983 () Bool)

(assert start!1983)

(declare-fun res!8329 () Bool)

(declare-fun e!5781 () Bool)

(assert (=> start!1983 (=> (not res!8329) (not e!5781))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1983 (= res!8329 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1983 e!5781))

(assert (=> start!1983 true))

(declare-fun b!10274 () Bool)

(declare-fun e!5779 () Bool)

(assert (=> b!10274 (= e!5781 e!5779)))

(declare-fun res!8331 () Bool)

(assert (=> b!10274 (=> (not res!8331) (not e!5779))))

(declare-fun lt!5200 () (_ BitVec 32))

(assert (=> b!10274 (= res!8331 (and (bvsle #b11111111111111111111111111101001 lt!5200) (bvsle lt!5200 #b00000000000000000000001111101000)))))

(declare-fun lt!5196 () (_ BitVec 32))

(assert (=> b!10274 (= lt!5200 (bvsub (bvashr lt!5196 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10274 (= lt!5196 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10275 () Bool)

(declare-fun e!5780 () Bool)

(assert (=> b!10275 (= e!5779 e!5780)))

(declare-fun res!8330 () Bool)

(assert (=> b!10275 (=> (not res!8330) (not e!5780))))

(declare-fun lt!5201 () (_ BitVec 32))

(assert (=> b!10275 (= res!8330 (and (bvsle #b00000000000000000000000000011000 lt!5201) (bvsle lt!5201 #b00000000000000000000001111110000) (= (bvsrem lt!5201 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5202 () (_ BitVec 32))

(assert (=> b!10275 (= lt!5201 (ite (bvslt lt!5202 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5202))))

(assert (=> b!10275 (= lt!5202 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5200 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10276 () Bool)

(declare-fun lt!5195 () (_ FloatingPoint 11 53))

(declare-fun lt!5199 () (_ FloatingPoint 11 53))

(declare-fun lt!5197 () (_ FloatingPoint 11 53))

(declare-fun lt!5198 () (_ FloatingPoint 11 53))

(assert (=> b!10276 (= e!5780 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5197 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5199) #b00000000000000000000000000000000 (ite (fp.gt lt!5199 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5199 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5199)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5195) #b00000000000000000000000000000000 (ite (fp.gt lt!5195 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5195 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5195)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5198) #b00000000000000000000000000000000 (ite (fp.gt lt!5198 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5198 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5198)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5197) #b00000000000000000000000000000000 (ite (fp.gt lt!5197 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5197 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5197)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!10276 (= lt!5197 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5198 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5199) #b00000000000000000000000000000000 (ite (fp.gt lt!5199 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5199 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5199)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5195) #b00000000000000000000000000000000 (ite (fp.gt lt!5195 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5195 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5195)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5198) #b00000000000000000000000000000000 (ite (fp.gt lt!5198 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5198 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5198)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10276 (= lt!5198 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5195 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5199) #b00000000000000000000000000000000 (ite (fp.gt lt!5199 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5199 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5199)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5195) #b00000000000000000000000000000000 (ite (fp.gt lt!5195 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5195 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5195)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10276 (= lt!5195 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5199 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5199) #b00000000000000000000000000000000 (ite (fp.gt lt!5199 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5199 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5199)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10276 (= lt!5199 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5196 (bvshl lt!5201 #b00000000000000000000000000010100))))))

(assert (= (and start!1983 res!8329) b!10274))

(assert (= (and b!10274 res!8331) b!10275))

(assert (= (and b!10275 res!8330) b!10276))

(declare-fun m!16091 () Bool)

(assert (=> b!10274 m!16091))

(declare-fun m!16093 () Bool)

(assert (=> b!10276 m!16093))

(declare-fun m!16095 () Bool)

(assert (=> b!10276 m!16095))

(declare-fun m!16097 () Bool)

(assert (=> b!10276 m!16097))

(declare-fun m!16099 () Bool)

(assert (=> b!10276 m!16099))

(declare-fun m!16101 () Bool)

(assert (=> b!10276 m!16101))

(declare-fun m!16103 () Bool)

(assert (=> b!10276 m!16103))

(declare-fun m!16105 () Bool)

(assert (=> b!10276 m!16105))

(declare-fun m!16107 () Bool)

(assert (=> b!10276 m!16107))

(declare-fun m!16109 () Bool)

(assert (=> b!10276 m!16109))

(declare-fun m!16111 () Bool)

(assert (=> b!10276 m!16111))

(assert (=> b!10276 m!16101))

(assert (=> b!10276 m!16103))

(declare-fun m!16113 () Bool)

(assert (=> b!10276 m!16113))

(check-sat (not b!10274) (not b!10276))
(check-sat)
(get-model)

(declare-fun d!4845 () Bool)

(declare-fun c!1181 () Bool)

(assert (=> d!4845 (= c!1181 (fp.isNaN x!143))))

(declare-fun e!5784 () (_ BitVec 64))

(assert (=> d!4845 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5784 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10281 () Bool)

(assert (=> b!10281 (= e!5784 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10282 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10282 (= e!5784 (choose!3 x!143 x!143 false))))

(assert (= (and d!4845 c!1181) b!10281))

(assert (= (and d!4845 (not c!1181)) b!10282))

(declare-fun m!16115 () Bool)

(assert (=> b!10282 m!16115))

(assert (=> b!10274 d!4845))

(declare-fun d!4847 () Bool)

(declare-fun c!1184 () Bool)

(assert (=> d!4847 (= c!1184 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5787 () (_ BitVec 64))

(assert (=> d!4847 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5196 (bvshl lt!5201 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5787 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5196 (bvshl lt!5201 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10287 () Bool)

(assert (=> b!10287 (= e!5787 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10288 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10288 (= e!5787 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5196 (bvshl lt!5201 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4847 c!1184) b!10287))

(assert (= (and d!4847 (not c!1184)) b!10288))

(assert (=> b!10288 m!16103))

(assert (=> b!10288 m!16103))

(declare-fun m!16117 () Bool)

(assert (=> b!10288 m!16117))

(assert (=> b!10276 d!4847))

(declare-fun d!4849 () Bool)

(declare-fun c!1187 () Bool)

(assert (=> d!4849 (= c!1187 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5790 () (_ BitVec 64))

(assert (=> d!4849 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5790 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10293 () Bool)

(assert (=> b!10293 (= e!5790 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10294 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10294 (= e!5790 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4849 c!1187) b!10293))

(assert (= (and d!4849 (not c!1187)) b!10294))

(assert (=> b!10294 m!16101))

(declare-fun m!16119 () Bool)

(assert (=> b!10294 m!16119))

(assert (=> b!10276 d!4849))

(declare-fun d!4851 () Bool)

(declare-fun c!1190 () Bool)

(assert (=> d!4851 (= c!1190 (fp.isNaN x!143))))

(declare-fun e!5793 () (_ BitVec 64))

(assert (=> d!4851 (= (__LO!0 x!143) ((_ extract 31 0) e!5793))))

(declare-fun b!10299 () Bool)

(assert (=> b!10299 (= e!5793 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10300 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10300 (= e!5793 (choose!1 x!143 x!143 false))))

(assert (= (and d!4851 c!1190) b!10299))

(assert (= (and d!4851 (not c!1190)) b!10300))

(declare-fun m!16121 () Bool)

(assert (=> b!10300 m!16121))

(assert (=> b!10276 d!4851))

(check-sat (not b!10282) (not b!10300) (not b!10294) (not b!10288))
(check-sat)
