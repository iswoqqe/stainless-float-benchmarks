; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1943 () Bool)

(assert start!1943)

(declare-fun res!7964 () Bool)

(declare-fun e!5670 () Bool)

(assert (=> start!1943 (=> (not res!7964) (not e!5670))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1943 (= res!7964 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1943 e!5670))

(assert (=> start!1943 true))

(declare-fun b!9855 () Bool)

(declare-fun e!5671 () Bool)

(assert (=> b!9855 (= e!5670 e!5671)))

(declare-fun res!7965 () Bool)

(assert (=> b!9855 (=> (not res!7965) (not e!5671))))

(declare-fun lt!5069 () (_ BitVec 32))

(assert (=> b!9855 (= res!7965 (and (bvsle #b11111111111111111111111111101001 lt!5069) (bvsle lt!5069 #b00000000000000000000001111101000)))))

(declare-fun lt!5073 () (_ BitVec 32))

(assert (=> b!9855 (= lt!5069 (bvsub (bvashr lt!5073 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9855 (= lt!5073 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9856 () Bool)

(declare-fun e!5669 () Bool)

(assert (=> b!9856 (= e!5671 e!5669)))

(declare-fun res!7966 () Bool)

(assert (=> b!9856 (=> (not res!7966) (not e!5669))))

(declare-fun lt!5075 () (_ BitVec 32))

(assert (=> b!9856 (= res!7966 (and (bvsle #b00000000000000000000000000011000 lt!5075) (bvsle lt!5075 #b00000000000000000000001111110000) (= (bvsrem lt!5075 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5071 () (_ BitVec 32))

(assert (=> b!9856 (= lt!5075 (ite (bvslt lt!5071 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5071))))

(assert (=> b!9856 (= lt!5071 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5069 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9857 () Bool)

(declare-fun lt!5070 () (_ FloatingPoint 11 53))

(assert (=> b!9857 (= e!5669 (and (not (fp.isNaN lt!5070)) (fp.gt lt!5070 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5070 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5074 () (_ FloatingPoint 11 53))

(declare-fun lt!5076 () (_ FloatingPoint 11 53))

(declare-fun lt!5072 () (_ FloatingPoint 11 53))

(assert (=> b!9857 (= lt!5070 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5072 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5076) #b00000000000000000000000000000000 (ite (fp.gt lt!5076 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5076 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5076)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5074) #b00000000000000000000000000000000 (ite (fp.gt lt!5074 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5074 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5074)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5072) #b00000000000000000000000000000000 (ite (fp.gt lt!5072 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5072 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5072)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9857 (= lt!5072 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5074 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5076) #b00000000000000000000000000000000 (ite (fp.gt lt!5076 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5076 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5076)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5074) #b00000000000000000000000000000000 (ite (fp.gt lt!5074 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5074 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5074)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9857 (= lt!5074 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5076 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5076) #b00000000000000000000000000000000 (ite (fp.gt lt!5076 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5076 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5076)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9857 (= lt!5076 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5073 (bvshl lt!5075 #b00000000000000000000000000010100))))))

(assert (= (and start!1943 res!7964) b!9855))

(assert (= (and b!9855 res!7965) b!9856))

(assert (= (and b!9856 res!7966) b!9857))

(declare-fun m!14223 () Bool)

(assert (=> b!9855 m!14223))

(declare-fun m!14225 () Bool)

(assert (=> b!9857 m!14225))

(declare-fun m!14227 () Bool)

(assert (=> b!9857 m!14227))

(declare-fun m!14229 () Bool)

(assert (=> b!9857 m!14229))

(declare-fun m!14231 () Bool)

(assert (=> b!9857 m!14231))

(declare-fun m!14233 () Bool)

(assert (=> b!9857 m!14233))

(declare-fun m!14235 () Bool)

(assert (=> b!9857 m!14235))

(declare-fun m!14237 () Bool)

(assert (=> b!9857 m!14237))

(declare-fun m!14239 () Bool)

(assert (=> b!9857 m!14239))

(assert (=> b!9857 m!14233))

(declare-fun m!14241 () Bool)

(assert (=> b!9857 m!14241))

(assert (=> b!9857 m!14239))

(check-sat (not b!9857) (not b!9855))
(check-sat)
(get-model)

(declare-fun d!4131 () Bool)

(declare-fun c!1154 () Bool)

(assert (=> d!4131 (= c!1154 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5674 () (_ BitVec 64))

(assert (=> d!4131 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5073 (bvshl lt!5075 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5674 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5073 (bvshl lt!5075 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9862 () Bool)

(assert (=> b!9862 (= e!5674 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9863 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9863 (= e!5674 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5073 (bvshl lt!5075 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4131 c!1154) b!9862))

(assert (= (and d!4131 (not c!1154)) b!9863))

(assert (=> b!9863 m!14233))

(assert (=> b!9863 m!14233))

(declare-fun m!14243 () Bool)

(assert (=> b!9863 m!14243))

(assert (=> b!9857 d!4131))

(declare-fun d!4133 () Bool)

(declare-fun c!1157 () Bool)

(assert (=> d!4133 (= c!1157 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5677 () (_ BitVec 64))

(assert (=> d!4133 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5677 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9868 () Bool)

(assert (=> b!9868 (= e!5677 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9869 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9869 (= e!5677 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4133 c!1157) b!9868))

(assert (= (and d!4133 (not c!1157)) b!9869))

(assert (=> b!9869 m!14239))

(declare-fun m!14245 () Bool)

(assert (=> b!9869 m!14245))

(assert (=> b!9857 d!4133))

(declare-fun d!4135 () Bool)

(declare-fun c!1160 () Bool)

(assert (=> d!4135 (= c!1160 (fp.isNaN x!143))))

(declare-fun e!5680 () (_ BitVec 64))

(assert (=> d!4135 (= (__LO!0 x!143) ((_ extract 31 0) e!5680))))

(declare-fun b!9874 () Bool)

(assert (=> b!9874 (= e!5680 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9875 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9875 (= e!5680 (choose!1 x!143 x!143 false))))

(assert (= (and d!4135 c!1160) b!9874))

(assert (= (and d!4135 (not c!1160)) b!9875))

(declare-fun m!14247 () Bool)

(assert (=> b!9875 m!14247))

(assert (=> b!9857 d!4135))

(declare-fun d!4137 () Bool)

(declare-fun c!1163 () Bool)

(assert (=> d!4137 (= c!1163 (fp.isNaN x!143))))

(declare-fun e!5683 () (_ BitVec 64))

(assert (=> d!4137 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5683 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9880 () Bool)

(assert (=> b!9880 (= e!5683 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9881 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9881 (= e!5683 (choose!3 x!143 x!143 false))))

(assert (= (and d!4137 c!1163) b!9880))

(assert (= (and d!4137 (not c!1163)) b!9881))

(declare-fun m!14249 () Bool)

(assert (=> b!9881 m!14249))

(assert (=> b!9855 d!4137))

(check-sat (not b!9875) (not b!9863) (not b!9869) (not b!9881))
(check-sat)
