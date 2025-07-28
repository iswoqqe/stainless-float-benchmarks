; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1935 () Bool)

(assert start!1935)

(declare-fun res!8258 () Bool)

(declare-fun e!5659 () Bool)

(assert (=> start!1935 (=> (not res!8258) (not e!5659))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1935 (= res!8258 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1935 e!5659))

(assert (=> start!1935 true))

(declare-fun b!10106 () Bool)

(declare-fun e!5661 () Bool)

(assert (=> b!10106 (= e!5659 e!5661)))

(declare-fun res!8259 () Bool)

(assert (=> b!10106 (=> (not res!8259) (not e!5661))))

(declare-fun lt!5048 () (_ BitVec 32))

(assert (=> b!10106 (= res!8259 (and (bvsle #b11111111111111111111111111101001 lt!5048) (bvsle lt!5048 #b00000000000000000000001111101000)))))

(declare-fun lt!5047 () (_ BitVec 32))

(assert (=> b!10106 (= lt!5048 (bvsub (bvashr lt!5047 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10106 (= lt!5047 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10107 () Bool)

(declare-fun e!5660 () Bool)

(assert (=> b!10107 (= e!5661 e!5660)))

(declare-fun res!8257 () Bool)

(assert (=> b!10107 (=> (not res!8257) (not e!5660))))

(declare-fun lt!5043 () (_ BitVec 32))

(assert (=> b!10107 (= res!8257 (and (bvsle #b00000000000000000000000000011000 lt!5043) (bvsle lt!5043 #b00000000000000000000001111110000) (= (bvsrem lt!5043 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5049 () (_ BitVec 32))

(assert (=> b!10107 (= lt!5043 (ite (bvslt lt!5049 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5049))))

(assert (=> b!10107 (= lt!5049 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5048 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10108 () Bool)

(declare-fun lt!5044 () (_ FloatingPoint 11 53))

(assert (=> b!10108 (= e!5660 (and (not (fp.isNaN lt!5044)) (fp.gt lt!5044 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5044 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5045 () (_ FloatingPoint 11 53))

(declare-fun lt!5046 () (_ FloatingPoint 11 53))

(assert (=> b!10108 (= lt!5044 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5045 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5046) #b00000000000000000000000000000000 (ite (fp.gt lt!5046 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5046 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5046)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5045) #b00000000000000000000000000000000 (ite (fp.gt lt!5045 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5045 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5045)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10108 (= lt!5045 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5046 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5046) #b00000000000000000000000000000000 (ite (fp.gt lt!5046 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5046 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5046)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10108 (= lt!5046 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5047 (bvshl lt!5043 #b00000000000000000000000000010100))))))

(assert (= (and start!1935 res!8258) b!10106))

(assert (= (and b!10106 res!8259) b!10107))

(assert (= (and b!10107 res!8257) b!10108))

(declare-fun m!15951 () Bool)

(assert (=> b!10106 m!15951))

(declare-fun m!15953 () Bool)

(assert (=> b!10108 m!15953))

(declare-fun m!15955 () Bool)

(assert (=> b!10108 m!15955))

(declare-fun m!15957 () Bool)

(assert (=> b!10108 m!15957))

(declare-fun m!15959 () Bool)

(assert (=> b!10108 m!15959))

(declare-fun m!15961 () Bool)

(assert (=> b!10108 m!15961))

(declare-fun m!15963 () Bool)

(assert (=> b!10108 m!15963))

(assert (=> b!10108 m!15957))

(declare-fun m!15965 () Bool)

(assert (=> b!10108 m!15965))

(assert (=> b!10108 m!15963))

(check-sat (not b!10106) (not b!10108))
(check-sat)
(get-model)

(declare-fun d!4813 () Bool)

(declare-fun c!1133 () Bool)

(assert (=> d!4813 (= c!1133 (fp.isNaN x!143))))

(declare-fun e!5664 () (_ BitVec 64))

(assert (=> d!4813 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5664 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10113 () Bool)

(assert (=> b!10113 (= e!5664 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10114 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10114 (= e!5664 (choose!3 x!143 x!143 false))))

(assert (= (and d!4813 c!1133) b!10113))

(assert (= (and d!4813 (not c!1133)) b!10114))

(declare-fun m!15967 () Bool)

(assert (=> b!10114 m!15967))

(assert (=> b!10106 d!4813))

(declare-fun d!4815 () Bool)

(declare-fun c!1136 () Bool)

(assert (=> d!4815 (= c!1136 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5667 () (_ BitVec 64))

(assert (=> d!4815 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5047 (bvshl lt!5043 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5667 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5047 (bvshl lt!5043 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10119 () Bool)

(assert (=> b!10119 (= e!5667 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10120 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10120 (= e!5667 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5047 (bvshl lt!5043 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4815 c!1136) b!10119))

(assert (= (and d!4815 (not c!1136)) b!10120))

(assert (=> b!10120 m!15957))

(assert (=> b!10120 m!15957))

(declare-fun m!15969 () Bool)

(assert (=> b!10120 m!15969))

(assert (=> b!10108 d!4815))

(declare-fun d!4817 () Bool)

(declare-fun c!1139 () Bool)

(assert (=> d!4817 (= c!1139 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5670 () (_ BitVec 64))

(assert (=> d!4817 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5670 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10125 () Bool)

(assert (=> b!10125 (= e!5670 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10126 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10126 (= e!5670 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4817 c!1139) b!10125))

(assert (= (and d!4817 (not c!1139)) b!10126))

(assert (=> b!10126 m!15963))

(declare-fun m!15971 () Bool)

(assert (=> b!10126 m!15971))

(assert (=> b!10108 d!4817))

(declare-fun d!4819 () Bool)

(declare-fun c!1142 () Bool)

(assert (=> d!4819 (= c!1142 (fp.isNaN x!143))))

(declare-fun e!5673 () (_ BitVec 64))

(assert (=> d!4819 (= (__LO!0 x!143) ((_ extract 31 0) e!5673))))

(declare-fun b!10131 () Bool)

(assert (=> b!10131 (= e!5673 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10132 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10132 (= e!5673 (choose!1 x!143 x!143 false))))

(assert (= (and d!4819 c!1142) b!10131))

(assert (= (and d!4819 (not c!1142)) b!10132))

(declare-fun m!15973 () Bool)

(assert (=> b!10132 m!15973))

(assert (=> b!10108 d!4819))

(check-sat (not b!10126) (not b!10120) (not b!10114) (not b!10132))
(check-sat)
