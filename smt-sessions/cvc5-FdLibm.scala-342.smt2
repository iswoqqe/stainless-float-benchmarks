; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2127 () Bool)

(assert start!2127)

(declare-fun res!9082 () Bool)

(declare-fun e!6057 () Bool)

(assert (=> start!2127 (=> (not res!9082) (not e!6057))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2127 (= res!9082 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2127 e!6057))

(assert (=> start!2127 true))

(declare-fun b!11171 () Bool)

(declare-fun e!6056 () Bool)

(assert (=> b!11171 (= e!6057 e!6056)))

(declare-fun res!9084 () Bool)

(assert (=> b!11171 (=> (not res!9084) (not e!6056))))

(declare-fun lt!5468 () (_ BitVec 32))

(assert (=> b!11171 (= res!9084 (and (bvsle #b11111111111111111111111111101001 lt!5468) (bvsle lt!5468 #b00000000000000000000001111101000)))))

(declare-fun lt!5474 () (_ BitVec 32))

(assert (=> b!11171 (= lt!5468 (bvsub (bvashr lt!5474 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11171 (= lt!5474 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11172 () Bool)

(declare-fun e!6058 () Bool)

(assert (=> b!11172 (= e!6056 e!6058)))

(declare-fun res!9083 () Bool)

(assert (=> b!11172 (=> (not res!9083) (not e!6058))))

(declare-fun lt!5467 () (_ BitVec 32))

(assert (=> b!11172 (= res!9083 (and (bvsle #b00000000000000000000000000011000 lt!5467) (bvsle lt!5467 #b00000000000000000000001111110000) (= (bvsrem lt!5467 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5470 () (_ BitVec 32))

(assert (=> b!11172 (= lt!5467 (ite (bvslt lt!5470 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5470))))

(assert (=> b!11172 (= lt!5470 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5468 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11173 () Bool)

(declare-fun lt!5469 () (_ FloatingPoint 11 53))

(assert (=> b!11173 (= e!6058 (and (not (fp.isNaN lt!5469)) (fp.gt lt!5469 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5469 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5471 () (_ FloatingPoint 11 53))

(declare-fun lt!5473 () (_ FloatingPoint 11 53))

(declare-fun lt!5466 () (_ FloatingPoint 11 53))

(declare-fun lt!5472 () (_ FloatingPoint 11 53))

(assert (=> b!11173 (= lt!5469 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5466 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5472) #b00000000000000000000000000000000 (ite (fp.gt lt!5472 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5472 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5472)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5473) #b00000000000000000000000000000000 (ite (fp.gt lt!5473 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5473 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5473)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5471) #b00000000000000000000000000000000 (ite (fp.gt lt!5471 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5471 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5471)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5466) #b00000000000000000000000000000000 (ite (fp.gt lt!5466 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5466 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5466)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11173 (= lt!5466 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5471 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5472) #b00000000000000000000000000000000 (ite (fp.gt lt!5472 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5472 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5472)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5473) #b00000000000000000000000000000000 (ite (fp.gt lt!5473 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5473 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5473)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5471) #b00000000000000000000000000000000 (ite (fp.gt lt!5471 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5471 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5471)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11173 (= lt!5471 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5473 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5472) #b00000000000000000000000000000000 (ite (fp.gt lt!5472 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5472 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5472)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5473) #b00000000000000000000000000000000 (ite (fp.gt lt!5473 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5473 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5473)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11173 (= lt!5473 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5472 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5472) #b00000000000000000000000000000000 (ite (fp.gt lt!5472 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5472 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5472)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11173 (= lt!5472 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5474 (bvshl lt!5467 #b00000000000000000000000000010100))))))

(assert (= (and start!2127 res!9082) b!11171))

(assert (= (and b!11171 res!9084) b!11172))

(assert (= (and b!11172 res!9083) b!11173))

(declare-fun m!18951 () Bool)

(assert (=> b!11171 m!18951))

(declare-fun m!18953 () Bool)

(assert (=> b!11173 m!18953))

(declare-fun m!18955 () Bool)

(assert (=> b!11173 m!18955))

(declare-fun m!18957 () Bool)

(assert (=> b!11173 m!18957))

(declare-fun m!18959 () Bool)

(assert (=> b!11173 m!18959))

(declare-fun m!18961 () Bool)

(assert (=> b!11173 m!18961))

(declare-fun m!18963 () Bool)

(assert (=> b!11173 m!18963))

(declare-fun m!18965 () Bool)

(assert (=> b!11173 m!18965))

(declare-fun m!18967 () Bool)

(assert (=> b!11173 m!18967))

(declare-fun m!18969 () Bool)

(assert (=> b!11173 m!18969))

(assert (=> b!11173 m!18963))

(declare-fun m!18971 () Bool)

(assert (=> b!11173 m!18971))

(assert (=> b!11173 m!18965))

(declare-fun m!18973 () Bool)

(assert (=> b!11173 m!18973))

(push 1)

(assert (not b!11173))

(assert (not b!11171))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6412 () Bool)

(declare-fun c!1253 () Bool)

(assert (=> d!6412 (= c!1253 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!6061 () (_ BitVec 64))

(assert (=> d!6412 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5474 (bvshl lt!5467 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!6061 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5474 (bvshl lt!5467 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!11178 () Bool)

(assert (=> b!11178 (= e!6061 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11179 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11179 (= e!6061 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5474 (bvshl lt!5467 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6412 c!1253) b!11178))

(assert (= (and d!6412 (not c!1253)) b!11179))

(assert (=> b!11179 m!18965))

(assert (=> b!11179 m!18965))

(declare-fun m!18975 () Bool)

(assert (=> b!11179 m!18975))

(assert (=> b!11173 d!6412))

(declare-fun d!6414 () Bool)

(declare-fun c!1256 () Bool)

(assert (=> d!6414 (= c!1256 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!6064 () (_ BitVec 64))

(assert (=> d!6414 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!6064 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!11184 () Bool)

(assert (=> b!11184 (= e!6064 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11185 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11185 (= e!6064 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6414 c!1256) b!11184))

(assert (= (and d!6414 (not c!1256)) b!11185))

(assert (=> b!11185 m!18963))

(declare-fun m!18977 () Bool)

(assert (=> b!11185 m!18977))

(assert (=> b!11173 d!6414))

(declare-fun d!6416 () Bool)

(declare-fun c!1259 () Bool)

(assert (=> d!6416 (= c!1259 (fp.isNaN x!143))))

(declare-fun e!6067 () (_ BitVec 64))

(assert (=> d!6416 (= (__LO!0 x!143) ((_ extract 31 0) e!6067))))

(declare-fun b!11190 () Bool)

(assert (=> b!11190 (= e!6067 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11191 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11191 (= e!6067 (choose!1 x!143 x!143 false))))

(assert (= (and d!6416 c!1259) b!11190))

(assert (= (and d!6416 (not c!1259)) b!11191))

(declare-fun m!18979 () Bool)

(assert (=> b!11191 m!18979))

(assert (=> b!11173 d!6416))

(declare-fun d!6418 () Bool)

(declare-fun c!1262 () Bool)

(assert (=> d!6418 (= c!1262 (fp.isNaN x!143))))

(declare-fun e!6070 () (_ BitVec 64))

(assert (=> d!6418 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!6070 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!11196 () Bool)

(assert (=> b!11196 (= e!6070 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11197 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11197 (= e!6070 (choose!3 x!143 x!143 false))))

(assert (= (and d!6418 c!1262) b!11196))

(assert (= (and d!6418 (not c!1262)) b!11197))

(declare-fun m!18981 () Bool)

(assert (=> b!11197 m!18981))

(assert (=> b!11171 d!6418))

(push 1)

(assert (not b!11197))

(assert (not b!11179))

(assert (not b!11185))

(assert (not b!11191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

