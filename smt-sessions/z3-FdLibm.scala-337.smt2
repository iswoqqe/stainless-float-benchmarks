; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1969 () Bool)

(assert start!1969)

(declare-fun res!8302 () Bool)

(declare-fun e!5741 () Bool)

(assert (=> start!1969 (=> (not res!8302) (not e!5741))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1969 (= res!8302 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1969 e!5741))

(assert (=> start!1969 true))

(declare-fun b!10223 () Bool)

(declare-fun e!5740 () Bool)

(assert (=> b!10223 (= e!5741 e!5740)))

(declare-fun res!8304 () Bool)

(assert (=> b!10223 (=> (not res!8304) (not e!5740))))

(declare-fun lt!5141 () (_ BitVec 32))

(assert (=> b!10223 (= res!8304 (and (bvsle #b11111111111111111111111111101001 lt!5141) (bvsle lt!5141 #b00000000000000000000001111101000)))))

(declare-fun lt!5148 () (_ BitVec 32))

(assert (=> b!10223 (= lt!5141 (bvsub (bvashr lt!5148 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10223 (= lt!5148 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10224 () Bool)

(declare-fun e!5742 () Bool)

(assert (=> b!10224 (= e!5740 e!5742)))

(declare-fun res!8303 () Bool)

(assert (=> b!10224 (=> (not res!8303) (not e!5742))))

(declare-fun lt!5144 () (_ BitVec 32))

(assert (=> b!10224 (= res!8303 (and (bvsle #b00000000000000000000000000011000 lt!5144) (bvsle lt!5144 #b00000000000000000000001111110000) (= (bvsrem lt!5144 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5145 () (_ BitVec 32))

(assert (=> b!10224 (= lt!5144 (ite (bvslt lt!5145 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5145))))

(assert (=> b!10224 (= lt!5145 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5141 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10225 () Bool)

(declare-fun lt!5147 () (_ FloatingPoint 11 53))

(assert (=> b!10225 (= e!5742 (and (not (fp.isNaN lt!5147)) (fp.gt lt!5147 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5147 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5142 () (_ FloatingPoint 11 53))

(declare-fun lt!5146 () (_ FloatingPoint 11 53))

(declare-fun lt!5143 () (_ FloatingPoint 11 53))

(assert (=> b!10225 (= lt!5147 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5143 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5142) #b00000000000000000000000000000000 (ite (fp.gt lt!5142 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5142 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5142)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5146) #b00000000000000000000000000000000 (ite (fp.gt lt!5146 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5146 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5146)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5143) #b00000000000000000000000000000000 (ite (fp.gt lt!5143 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5143 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5143)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10225 (= lt!5143 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5146 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5142) #b00000000000000000000000000000000 (ite (fp.gt lt!5142 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5142 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5142)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5146) #b00000000000000000000000000000000 (ite (fp.gt lt!5146 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5146 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5146)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10225 (= lt!5146 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5142 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5142) #b00000000000000000000000000000000 (ite (fp.gt lt!5142 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5142 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5142)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10225 (= lt!5142 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5148 (bvshl lt!5144 #b00000000000000000000000000010100))))))

(assert (= (and start!1969 res!8302) b!10223))

(assert (= (and b!10223 res!8304) b!10224))

(assert (= (and b!10224 res!8303) b!10225))

(declare-fun m!16047 () Bool)

(assert (=> b!10223 m!16047))

(declare-fun m!16049 () Bool)

(assert (=> b!10225 m!16049))

(declare-fun m!16051 () Bool)

(assert (=> b!10225 m!16051))

(declare-fun m!16053 () Bool)

(assert (=> b!10225 m!16053))

(declare-fun m!16055 () Bool)

(assert (=> b!10225 m!16055))

(declare-fun m!16057 () Bool)

(assert (=> b!10225 m!16057))

(declare-fun m!16059 () Bool)

(assert (=> b!10225 m!16059))

(declare-fun m!16061 () Bool)

(assert (=> b!10225 m!16061))

(declare-fun m!16063 () Bool)

(assert (=> b!10225 m!16063))

(declare-fun m!16065 () Bool)

(assert (=> b!10225 m!16065))

(assert (=> b!10225 m!16063))

(assert (=> b!10225 m!16053))

(check-sat (not b!10225) (not b!10223))
(check-sat)
(get-model)

(declare-fun d!4837 () Bool)

(declare-fun c!1169 () Bool)

(assert (=> d!4837 (= c!1169 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5745 () (_ BitVec 64))

(assert (=> d!4837 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5148 (bvshl lt!5144 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5745 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5148 (bvshl lt!5144 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10230 () Bool)

(assert (=> b!10230 (= e!5745 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10231 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10231 (= e!5745 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5148 (bvshl lt!5144 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4837 c!1169) b!10230))

(assert (= (and d!4837 (not c!1169)) b!10231))

(assert (=> b!10231 m!16053))

(assert (=> b!10231 m!16053))

(declare-fun m!16067 () Bool)

(assert (=> b!10231 m!16067))

(assert (=> b!10225 d!4837))

(declare-fun d!4839 () Bool)

(declare-fun c!1172 () Bool)

(assert (=> d!4839 (= c!1172 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5748 () (_ BitVec 64))

(assert (=> d!4839 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5748 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10236 () Bool)

(assert (=> b!10236 (= e!5748 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10237 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10237 (= e!5748 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4839 c!1172) b!10236))

(assert (= (and d!4839 (not c!1172)) b!10237))

(assert (=> b!10237 m!16063))

(declare-fun m!16069 () Bool)

(assert (=> b!10237 m!16069))

(assert (=> b!10225 d!4839))

(declare-fun d!4841 () Bool)

(declare-fun c!1175 () Bool)

(assert (=> d!4841 (= c!1175 (fp.isNaN x!143))))

(declare-fun e!5751 () (_ BitVec 64))

(assert (=> d!4841 (= (__LO!0 x!143) ((_ extract 31 0) e!5751))))

(declare-fun b!10242 () Bool)

(assert (=> b!10242 (= e!5751 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10243 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10243 (= e!5751 (choose!1 x!143 x!143 false))))

(assert (= (and d!4841 c!1175) b!10242))

(assert (= (and d!4841 (not c!1175)) b!10243))

(declare-fun m!16071 () Bool)

(assert (=> b!10243 m!16071))

(assert (=> b!10225 d!4841))

(declare-fun d!4843 () Bool)

(declare-fun c!1178 () Bool)

(assert (=> d!4843 (= c!1178 (fp.isNaN x!143))))

(declare-fun e!5754 () (_ BitVec 64))

(assert (=> d!4843 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5754 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10248 () Bool)

(assert (=> b!10248 (= e!5754 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10249 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10249 (= e!5754 (choose!3 x!143 x!143 false))))

(assert (= (and d!4843 c!1178) b!10248))

(assert (= (and d!4843 (not c!1178)) b!10249))

(declare-fun m!16073 () Bool)

(assert (=> b!10249 m!16073))

(assert (=> b!10223 d!4843))

(check-sat (not b!10237) (not b!10249) (not b!10231) (not b!10243))
(check-sat)
