; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1933 () Bool)

(assert start!1933)

(declare-fun res!7956 () Bool)

(declare-fun e!5648 () Bool)

(assert (=> start!1933 (=> (not res!7956) (not e!5648))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1933 (= res!7956 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1933 e!5648))

(assert (=> start!1933 true))

(declare-fun b!9822 () Bool)

(declare-fun e!5650 () Bool)

(assert (=> b!9822 (= e!5648 e!5650)))

(declare-fun res!7955 () Bool)

(assert (=> b!9822 (=> (not res!7955) (not e!5650))))

(declare-fun lt!5047 () (_ BitVec 32))

(assert (=> b!9822 (= res!7955 (and (bvsle #b11111111111111111111111111101001 lt!5047) (bvsle lt!5047 #b00000000000000000000001111101000)))))

(declare-fun lt!5048 () (_ BitVec 32))

(assert (=> b!9822 (= lt!5047 (bvsub (bvashr lt!5048 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9822 (= lt!5048 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9823 () Bool)

(declare-fun e!5649 () Bool)

(assert (=> b!9823 (= e!5650 e!5649)))

(declare-fun res!7957 () Bool)

(assert (=> b!9823 (=> (not res!7957) (not e!5649))))

(declare-fun lt!5051 () (_ BitVec 32))

(assert (=> b!9823 (= res!7957 (and (bvsle #b00000000000000000000000000011000 lt!5051) (bvsle lt!5051 #b00000000000000000000001111110000) (= (bvsrem lt!5051 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5050 () (_ BitVec 32))

(assert (=> b!9823 (= lt!5051 (ite (bvslt lt!5050 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5050))))

(assert (=> b!9823 (= lt!5050 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5047 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9824 () Bool)

(declare-fun lt!5045 () (_ FloatingPoint 11 53))

(assert (=> b!9824 (= e!5649 (and (not (fp.isNaN lt!5045)) (not (fp.gt lt!5045 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5049 () (_ FloatingPoint 11 53))

(declare-fun lt!5052 () (_ FloatingPoint 11 53))

(declare-fun lt!5046 () (_ FloatingPoint 11 53))

(assert (=> b!9824 (= lt!5045 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5049 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5046) #b00000000000000000000000000000000 (ite (fp.gt lt!5046 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5046 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5046)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5052) #b00000000000000000000000000000000 (ite (fp.gt lt!5052 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5052 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5052)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5049) #b00000000000000000000000000000000 (ite (fp.gt lt!5049 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5049 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5049)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9824 (= lt!5049 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5052 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5046) #b00000000000000000000000000000000 (ite (fp.gt lt!5046 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5046 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5046)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5052) #b00000000000000000000000000000000 (ite (fp.gt lt!5052 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5052 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5052)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!9824 (= lt!5052 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5046 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5046) #b00000000000000000000000000000000 (ite (fp.gt lt!5046 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5046 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5046)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9824 (= lt!5046 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5048 (bvshl lt!5051 #b00000000000000000000000000010100))))))

(assert (= (and start!1933 res!7956) b!9822))

(assert (= (and b!9822 res!7955) b!9823))

(assert (= (and b!9823 res!7957) b!9824))

(declare-fun m!14195 () Bool)

(assert (=> b!9822 m!14195))

(declare-fun m!14197 () Bool)

(assert (=> b!9824 m!14197))

(declare-fun m!14199 () Bool)

(assert (=> b!9824 m!14199))

(declare-fun m!14201 () Bool)

(assert (=> b!9824 m!14201))

(declare-fun m!14203 () Bool)

(assert (=> b!9824 m!14203))

(declare-fun m!14205 () Bool)

(assert (=> b!9824 m!14205))

(declare-fun m!14207 () Bool)

(assert (=> b!9824 m!14207))

(declare-fun m!14209 () Bool)

(assert (=> b!9824 m!14209))

(declare-fun m!14211 () Bool)

(assert (=> b!9824 m!14211))

(assert (=> b!9824 m!14209))

(declare-fun m!14213 () Bool)

(assert (=> b!9824 m!14213))

(assert (=> b!9824 m!14207))

(check-sat (not b!9824) (not b!9822))
(check-sat)
(get-model)

(declare-fun d!4123 () Bool)

(declare-fun c!1142 () Bool)

(assert (=> d!4123 (= c!1142 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5653 () (_ BitVec 64))

(assert (=> d!4123 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5048 (bvshl lt!5051 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5653 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5048 (bvshl lt!5051 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9829 () Bool)

(assert (=> b!9829 (= e!5653 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9830 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9830 (= e!5653 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5048 (bvshl lt!5051 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4123 c!1142) b!9829))

(assert (= (and d!4123 (not c!1142)) b!9830))

(assert (=> b!9830 m!14209))

(assert (=> b!9830 m!14209))

(declare-fun m!14215 () Bool)

(assert (=> b!9830 m!14215))

(assert (=> b!9824 d!4123))

(declare-fun d!4125 () Bool)

(declare-fun c!1145 () Bool)

(assert (=> d!4125 (= c!1145 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5656 () (_ BitVec 64))

(assert (=> d!4125 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5656 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9835 () Bool)

(assert (=> b!9835 (= e!5656 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9836 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9836 (= e!5656 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4125 c!1145) b!9835))

(assert (= (and d!4125 (not c!1145)) b!9836))

(assert (=> b!9836 m!14207))

(declare-fun m!14217 () Bool)

(assert (=> b!9836 m!14217))

(assert (=> b!9824 d!4125))

(declare-fun d!4127 () Bool)

(declare-fun c!1148 () Bool)

(assert (=> d!4127 (= c!1148 (fp.isNaN x!143))))

(declare-fun e!5659 () (_ BitVec 64))

(assert (=> d!4127 (= (__LO!0 x!143) ((_ extract 31 0) e!5659))))

(declare-fun b!9841 () Bool)

(assert (=> b!9841 (= e!5659 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9842 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9842 (= e!5659 (choose!1 x!143 x!143 false))))

(assert (= (and d!4127 c!1148) b!9841))

(assert (= (and d!4127 (not c!1148)) b!9842))

(declare-fun m!14219 () Bool)

(assert (=> b!9842 m!14219))

(assert (=> b!9824 d!4127))

(declare-fun d!4129 () Bool)

(declare-fun c!1151 () Bool)

(assert (=> d!4129 (= c!1151 (fp.isNaN x!143))))

(declare-fun e!5662 () (_ BitVec 64))

(assert (=> d!4129 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5662 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9847 () Bool)

(assert (=> b!9847 (= e!5662 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9848 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9848 (= e!5662 (choose!3 x!143 x!143 false))))

(assert (= (and d!4129 c!1151) b!9847))

(assert (= (and d!4129 (not c!1151)) b!9848))

(declare-fun m!14221 () Bool)

(assert (=> b!9848 m!14221))

(assert (=> b!9822 d!4129))

(check-sat (not b!9836) (not b!9848) (not b!9842) (not b!9830))
(check-sat)
