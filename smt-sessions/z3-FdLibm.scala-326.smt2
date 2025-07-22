; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1865 () Bool)

(assert start!1865)

(declare-fun res!7865 () Bool)

(declare-fun e!5486 () Bool)

(assert (=> start!1865 (=> (not res!7865) (not e!5486))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1865 (= res!7865 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1865 e!5486))

(assert (=> start!1865 true))

(declare-fun b!9588 () Bool)

(declare-fun e!5487 () Bool)

(assert (=> b!9588 (= e!5486 e!5487)))

(declare-fun res!7866 () Bool)

(assert (=> b!9588 (=> (not res!7866) (not e!5487))))

(declare-fun lt!4866 () (_ BitVec 32))

(assert (=> b!9588 (= res!7866 (and (bvsle #b11111111111111111111111111101001 lt!4866) (bvsle lt!4866 #b00000000000000000000001111101000)))))

(declare-fun lt!4869 () (_ BitVec 32))

(assert (=> b!9588 (= lt!4866 (bvsub (bvashr lt!4869 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9588 (= lt!4869 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9589 () Bool)

(declare-fun e!5488 () Bool)

(assert (=> b!9589 (= e!5487 e!5488)))

(declare-fun res!7867 () Bool)

(assert (=> b!9589 (=> (not res!7867) (not e!5488))))

(declare-fun lt!4865 () (_ BitVec 32))

(assert (=> b!9589 (= res!7867 (and (bvsle #b00000000000000000000000000011000 lt!4865) (bvsle lt!4865 #b00000000000000000000001111110000) (= (bvsrem lt!4865 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4868 () (_ BitVec 32))

(assert (=> b!9589 (= lt!4865 (ite (bvslt lt!4868 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4868))))

(assert (=> b!9589 (= lt!4868 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4866 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9590 () Bool)

(declare-fun lt!4867 () (_ FloatingPoint 11 53))

(assert (=> b!9590 (= e!5488 (and (not (fp.isNaN lt!4867)) (not (fp.gt lt!4867 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!4864 () (_ FloatingPoint 11 53))

(assert (=> b!9590 (= lt!4867 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4864 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4864) #b00000000000000000000000000000000 (ite (fp.gt lt!4864 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4864 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4864)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9590 (= lt!4864 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4869 (bvshl lt!4865 #b00000000000000000000000000010100))))))

(assert (= (and start!1865 res!7865) b!9588))

(assert (= (and b!9588 res!7866) b!9589))

(assert (= (and b!9589 res!7867) b!9590))

(declare-fun m!14023 () Bool)

(assert (=> b!9588 m!14023))

(declare-fun m!14025 () Bool)

(assert (=> b!9590 m!14025))

(declare-fun m!14027 () Bool)

(assert (=> b!9590 m!14027))

(declare-fun m!14029 () Bool)

(assert (=> b!9590 m!14029))

(declare-fun m!14031 () Bool)

(assert (=> b!9590 m!14031))

(assert (=> b!9590 m!14031))

(declare-fun m!14033 () Bool)

(assert (=> b!9590 m!14033))

(assert (=> b!9590 m!14029))

(check-sat (not b!9588) (not b!9590))
(check-sat)
(get-model)

(declare-fun d!4075 () Bool)

(declare-fun c!1070 () Bool)

(assert (=> d!4075 (= c!1070 (fp.isNaN x!143))))

(declare-fun e!5491 () (_ BitVec 64))

(assert (=> d!4075 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5491 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9595 () Bool)

(assert (=> b!9595 (= e!5491 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9596 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9596 (= e!5491 (choose!3 x!143 x!143 false))))

(assert (= (and d!4075 c!1070) b!9595))

(assert (= (and d!4075 (not c!1070)) b!9596))

(declare-fun m!14035 () Bool)

(assert (=> b!9596 m!14035))

(assert (=> b!9588 d!4075))

(declare-fun d!4077 () Bool)

(declare-fun c!1073 () Bool)

(assert (=> d!4077 (= c!1073 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5494 () (_ BitVec 64))

(assert (=> d!4077 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4869 (bvshl lt!4865 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5494 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4869 (bvshl lt!4865 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9601 () Bool)

(assert (=> b!9601 (= e!5494 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9602 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9602 (= e!5494 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4869 (bvshl lt!4865 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4077 c!1073) b!9601))

(assert (= (and d!4077 (not c!1073)) b!9602))

(assert (=> b!9602 m!14031))

(assert (=> b!9602 m!14031))

(declare-fun m!14037 () Bool)

(assert (=> b!9602 m!14037))

(assert (=> b!9590 d!4077))

(declare-fun d!4079 () Bool)

(declare-fun c!1076 () Bool)

(assert (=> d!4079 (= c!1076 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5497 () (_ BitVec 64))

(assert (=> d!4079 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5497 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9607 () Bool)

(assert (=> b!9607 (= e!5497 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9608 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9608 (= e!5497 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4079 c!1076) b!9607))

(assert (= (and d!4079 (not c!1076)) b!9608))

(assert (=> b!9608 m!14029))

(declare-fun m!14039 () Bool)

(assert (=> b!9608 m!14039))

(assert (=> b!9590 d!4079))

(declare-fun d!4081 () Bool)

(declare-fun c!1079 () Bool)

(assert (=> d!4081 (= c!1079 (fp.isNaN x!143))))

(declare-fun e!5500 () (_ BitVec 64))

(assert (=> d!4081 (= (__LO!0 x!143) ((_ extract 31 0) e!5500))))

(declare-fun b!9613 () Bool)

(assert (=> b!9613 (= e!5500 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9614 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9614 (= e!5500 (choose!1 x!143 x!143 false))))

(assert (= (and d!4081 c!1079) b!9613))

(assert (= (and d!4081 (not c!1079)) b!9614))

(declare-fun m!14041 () Bool)

(assert (=> b!9614 m!14041))

(assert (=> b!9590 d!4081))

(check-sat (not b!9608) (not b!9614) (not b!9596) (not b!9602))
(check-sat)
