; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1901 () Bool)

(assert start!1901)

(declare-fun res!8212 () Bool)

(declare-fun e!5578 () Bool)

(assert (=> start!1901 (=> (not res!8212) (not e!5578))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1901 (= res!8212 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1901 e!5578))

(assert (=> start!1901 true))

(declare-fun b!9989 () Bool)

(declare-fun e!5580 () Bool)

(assert (=> b!9989 (= e!5578 e!5580)))

(declare-fun res!8214 () Bool)

(assert (=> b!9989 (=> (not res!8214) (not e!5580))))

(declare-fun lt!4958 () (_ BitVec 32))

(assert (=> b!9989 (= res!8214 (and (bvsle #b11111111111111111111111111101001 lt!4958) (bvsle lt!4958 #b00000000000000000000001111101000)))))

(declare-fun lt!4954 () (_ BitVec 32))

(assert (=> b!9989 (= lt!4958 (bvsub (bvashr lt!4954 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9989 (= lt!4954 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9990 () Bool)

(declare-fun e!5579 () Bool)

(assert (=> b!9990 (= e!5580 e!5579)))

(declare-fun res!8213 () Bool)

(assert (=> b!9990 (=> (not res!8213) (not e!5579))))

(declare-fun lt!4956 () (_ BitVec 32))

(assert (=> b!9990 (= res!8213 (and (bvsle #b00000000000000000000000000011000 lt!4956) (bvsle lt!4956 #b00000000000000000000001111110000) (= (bvsrem lt!4956 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4959 () (_ BitVec 32))

(assert (=> b!9990 (= lt!4956 (ite (bvslt lt!4959 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4959))))

(assert (=> b!9990 (= lt!4959 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4958 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9991 () Bool)

(declare-fun lt!4955 () (_ FloatingPoint 11 53))

(assert (=> b!9991 (= e!5579 (and (not (fp.isNaN lt!4955)) (fp.gt lt!4955 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!4955 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!4957 () (_ FloatingPoint 11 53))

(assert (=> b!9991 (= lt!4955 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4957 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4957) #b00000000000000000000000000000000 (ite (fp.gt lt!4957 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4957 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4957)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9991 (= lt!4957 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4954 (bvshl lt!4956 #b00000000000000000000000000010100))))))

(assert (= (and start!1901 res!8212) b!9989))

(assert (= (and b!9989 res!8214) b!9990))

(assert (= (and b!9990 res!8213) b!9991))

(declare-fun m!15867 () Bool)

(assert (=> b!9989 m!15867))

(declare-fun m!15869 () Bool)

(assert (=> b!9991 m!15869))

(declare-fun m!15871 () Bool)

(assert (=> b!9991 m!15871))

(declare-fun m!15873 () Bool)

(assert (=> b!9991 m!15873))

(declare-fun m!15875 () Bool)

(assert (=> b!9991 m!15875))

(declare-fun m!15877 () Bool)

(assert (=> b!9991 m!15877))

(assert (=> b!9991 m!15875))

(assert (=> b!9991 m!15869))

(check-sat (not b!9989) (not b!9991))
(check-sat)
(get-model)

(declare-fun d!4789 () Bool)

(declare-fun c!1097 () Bool)

(assert (=> d!4789 (= c!1097 (fp.isNaN x!143))))

(declare-fun e!5583 () (_ BitVec 64))

(assert (=> d!4789 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5583 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9996 () Bool)

(assert (=> b!9996 (= e!5583 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9997 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9997 (= e!5583 (choose!3 x!143 x!143 false))))

(assert (= (and d!4789 c!1097) b!9996))

(assert (= (and d!4789 (not c!1097)) b!9997))

(declare-fun m!15879 () Bool)

(assert (=> b!9997 m!15879))

(assert (=> b!9989 d!4789))

(declare-fun d!4791 () Bool)

(declare-fun c!1100 () Bool)

(assert (=> d!4791 (= c!1100 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5586 () (_ BitVec 64))

(assert (=> d!4791 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4954 (bvshl lt!4956 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5586 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4954 (bvshl lt!4956 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10002 () Bool)

(assert (=> b!10002 (= e!5586 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10003 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10003 (= e!5586 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4954 (bvshl lt!4956 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4791 c!1100) b!10002))

(assert (= (and d!4791 (not c!1100)) b!10003))

(assert (=> b!10003 m!15869))

(assert (=> b!10003 m!15869))

(declare-fun m!15881 () Bool)

(assert (=> b!10003 m!15881))

(assert (=> b!9991 d!4791))

(declare-fun d!4793 () Bool)

(declare-fun c!1103 () Bool)

(assert (=> d!4793 (= c!1103 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5589 () (_ BitVec 64))

(assert (=> d!4793 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5589 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10008 () Bool)

(assert (=> b!10008 (= e!5589 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10009 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10009 (= e!5589 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4793 c!1103) b!10008))

(assert (= (and d!4793 (not c!1103)) b!10009))

(assert (=> b!10009 m!15875))

(declare-fun m!15883 () Bool)

(assert (=> b!10009 m!15883))

(assert (=> b!9991 d!4793))

(declare-fun d!4795 () Bool)

(declare-fun c!1106 () Bool)

(assert (=> d!4795 (= c!1106 (fp.isNaN x!143))))

(declare-fun e!5592 () (_ BitVec 64))

(assert (=> d!4795 (= (__LO!0 x!143) ((_ extract 31 0) e!5592))))

(declare-fun b!10014 () Bool)

(assert (=> b!10014 (= e!5592 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10015 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10015 (= e!5592 (choose!1 x!143 x!143 false))))

(assert (= (and d!4795 c!1106) b!10014))

(assert (= (and d!4795 (not c!1106)) b!10015))

(declare-fun m!15885 () Bool)

(assert (=> b!10015 m!15885))

(assert (=> b!9991 d!4795))

(check-sat (not b!10015) (not b!9997) (not b!10009) (not b!10003))
(check-sat)
