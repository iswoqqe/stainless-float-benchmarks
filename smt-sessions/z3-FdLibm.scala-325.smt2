; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1881 () Bool)

(assert start!1881)

(declare-fun res!8195 () Bool)

(declare-fun e!5537 () Bool)

(assert (=> start!1881 (=> (not res!8195) (not e!5537))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1881 (= res!8195 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1881 e!5537))

(assert (=> start!1881 true))

(declare-fun b!9923 () Bool)

(declare-fun e!5536 () Bool)

(assert (=> b!9923 (= e!5537 e!5536)))

(declare-fun res!8196 () Bool)

(assert (=> b!9923 (=> (not res!8196) (not e!5536))))

(declare-fun lt!4922 () (_ BitVec 32))

(assert (=> b!9923 (= res!8196 (and (bvsle #b11111111111111111111111111101001 lt!4922) (bvsle lt!4922 #b00000000000000000000001111101000)))))

(declare-fun lt!4921 () (_ BitVec 32))

(assert (=> b!9923 (= lt!4922 (bvsub (bvashr lt!4921 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9923 (= lt!4921 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9924 () Bool)

(declare-fun e!5538 () Bool)

(assert (=> b!9924 (= e!5536 e!5538)))

(declare-fun res!8194 () Bool)

(assert (=> b!9924 (=> (not res!8194) (not e!5538))))

(declare-fun lt!4923 () (_ BitVec 32))

(assert (=> b!9924 (= res!8194 (and (bvsle #b00000000000000000000000000011000 lt!4923) (bvsle lt!4923 #b00000000000000000000001111110000) (= (bvsrem lt!4923 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4919 () (_ BitVec 32))

(assert (=> b!9924 (= lt!4923 (ite (bvslt lt!4919 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4919))))

(assert (=> b!9924 (= lt!4919 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4922 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9925 () Bool)

(declare-fun lt!4920 () (_ FloatingPoint 11 53))

(assert (=> b!9925 (= e!5538 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4920 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4920) #b00000000000000000000000000000000 (ite (fp.gt lt!4920 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4920 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4920)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9925 (= lt!4920 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4921 (bvshl lt!4923 #b00000000000000000000000000010100))))))

(assert (= (and start!1881 res!8195) b!9923))

(assert (= (and b!9923 res!8196) b!9924))

(assert (= (and b!9924 res!8194) b!9925))

(declare-fun m!15827 () Bool)

(assert (=> b!9923 m!15827))

(declare-fun m!15829 () Bool)

(assert (=> b!9925 m!15829))

(declare-fun m!15831 () Bool)

(assert (=> b!9925 m!15831))

(declare-fun m!15833 () Bool)

(assert (=> b!9925 m!15833))

(declare-fun m!15835 () Bool)

(assert (=> b!9925 m!15835))

(assert (=> b!9925 m!15833))

(declare-fun m!15837 () Bool)

(assert (=> b!9925 m!15837))

(assert (=> b!9925 m!15831))

(check-sat (not b!9925) (not b!9923))
(check-sat)
(get-model)

(declare-fun d!4773 () Bool)

(declare-fun c!1073 () Bool)

(assert (=> d!4773 (= c!1073 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5541 () (_ BitVec 64))

(assert (=> d!4773 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4921 (bvshl lt!4923 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5541 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4921 (bvshl lt!4923 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9930 () Bool)

(assert (=> b!9930 (= e!5541 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9931 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9931 (= e!5541 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4921 (bvshl lt!4923 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4773 c!1073) b!9930))

(assert (= (and d!4773 (not c!1073)) b!9931))

(assert (=> b!9931 m!15833))

(assert (=> b!9931 m!15833))

(declare-fun m!15839 () Bool)

(assert (=> b!9931 m!15839))

(assert (=> b!9925 d!4773))

(declare-fun d!4775 () Bool)

(declare-fun c!1076 () Bool)

(assert (=> d!4775 (= c!1076 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5544 () (_ BitVec 64))

(assert (=> d!4775 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5544 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9936 () Bool)

(assert (=> b!9936 (= e!5544 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9937 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9937 (= e!5544 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4775 c!1076) b!9936))

(assert (= (and d!4775 (not c!1076)) b!9937))

(assert (=> b!9937 m!15831))

(declare-fun m!15841 () Bool)

(assert (=> b!9937 m!15841))

(assert (=> b!9925 d!4775))

(declare-fun d!4777 () Bool)

(declare-fun c!1079 () Bool)

(assert (=> d!4777 (= c!1079 (fp.isNaN x!143))))

(declare-fun e!5547 () (_ BitVec 64))

(assert (=> d!4777 (= (__LO!0 x!143) ((_ extract 31 0) e!5547))))

(declare-fun b!9942 () Bool)

(assert (=> b!9942 (= e!5547 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9943 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9943 (= e!5547 (choose!1 x!143 x!143 false))))

(assert (= (and d!4777 c!1079) b!9942))

(assert (= (and d!4777 (not c!1079)) b!9943))

(declare-fun m!15843 () Bool)

(assert (=> b!9943 m!15843))

(assert (=> b!9925 d!4777))

(declare-fun d!4779 () Bool)

(declare-fun c!1082 () Bool)

(assert (=> d!4779 (= c!1082 (fp.isNaN x!143))))

(declare-fun e!5550 () (_ BitVec 64))

(assert (=> d!4779 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5550 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9948 () Bool)

(assert (=> b!9948 (= e!5550 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9949 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9949 (= e!5550 (choose!3 x!143 x!143 false))))

(assert (= (and d!4779 c!1082) b!9948))

(assert (= (and d!4779 (not c!1082)) b!9949))

(declare-fun m!15845 () Bool)

(assert (=> b!9949 m!15845))

(assert (=> b!9923 d!4779))

(check-sat (not b!9943) (not b!9937) (not b!9949) (not b!9931))
(check-sat)
