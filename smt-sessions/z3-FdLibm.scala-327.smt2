; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1875 () Bool)

(assert start!1875)

(declare-fun res!7876 () Bool)

(declare-fun e!5508 () Bool)

(assert (=> start!1875 (=> (not res!7876) (not e!5508))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1875 (= res!7876 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1875 e!5508))

(assert (=> start!1875 true))

(declare-fun b!9621 () Bool)

(declare-fun e!5509 () Bool)

(assert (=> b!9621 (= e!5508 e!5509)))

(declare-fun res!7875 () Bool)

(assert (=> b!9621 (=> (not res!7875) (not e!5509))))

(declare-fun lt!4886 () (_ BitVec 32))

(assert (=> b!9621 (= res!7875 (and (bvsle #b11111111111111111111111111101001 lt!4886) (bvsle lt!4886 #b00000000000000000000001111101000)))))

(declare-fun lt!4885 () (_ BitVec 32))

(assert (=> b!9621 (= lt!4886 (bvsub (bvashr lt!4885 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9621 (= lt!4885 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9622 () Bool)

(declare-fun e!5507 () Bool)

(assert (=> b!9622 (= e!5509 e!5507)))

(declare-fun res!7874 () Bool)

(assert (=> b!9622 (=> (not res!7874) (not e!5507))))

(declare-fun lt!4884 () (_ BitVec 32))

(assert (=> b!9622 (= res!7874 (and (bvsle #b00000000000000000000000000011000 lt!4884) (bvsle lt!4884 #b00000000000000000000001111110000) (= (bvsrem lt!4884 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4883 () (_ BitVec 32))

(assert (=> b!9622 (= lt!4884 (ite (bvslt lt!4883 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4883))))

(assert (=> b!9622 (= lt!4883 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4886 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9623 () Bool)

(declare-fun lt!4882 () (_ FloatingPoint 11 53))

(assert (=> b!9623 (= e!5507 (and (not (fp.isNaN lt!4882)) (fp.gt lt!4882 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!4882 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!4887 () (_ FloatingPoint 11 53))

(assert (=> b!9623 (= lt!4882 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4887 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4887) #b00000000000000000000000000000000 (ite (fp.gt lt!4887 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4887 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4887)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9623 (= lt!4887 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4885 (bvshl lt!4884 #b00000000000000000000000000010100))))))

(assert (= (and start!1875 res!7876) b!9621))

(assert (= (and b!9621 res!7875) b!9622))

(assert (= (and b!9622 res!7874) b!9623))

(declare-fun m!14043 () Bool)

(assert (=> b!9621 m!14043))

(declare-fun m!14045 () Bool)

(assert (=> b!9623 m!14045))

(declare-fun m!14047 () Bool)

(assert (=> b!9623 m!14047))

(declare-fun m!14049 () Bool)

(assert (=> b!9623 m!14049))

(declare-fun m!14051 () Bool)

(assert (=> b!9623 m!14051))

(declare-fun m!14053 () Bool)

(assert (=> b!9623 m!14053))

(assert (=> b!9623 m!14051))

(assert (=> b!9623 m!14047))

(check-sat (not b!9623) (not b!9621))
(check-sat)
(get-model)

(declare-fun d!4083 () Bool)

(declare-fun c!1082 () Bool)

(assert (=> d!4083 (= c!1082 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5512 () (_ BitVec 64))

(assert (=> d!4083 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4885 (bvshl lt!4884 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5512 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4885 (bvshl lt!4884 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9628 () Bool)

(assert (=> b!9628 (= e!5512 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9629 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9629 (= e!5512 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4885 (bvshl lt!4884 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4083 c!1082) b!9628))

(assert (= (and d!4083 (not c!1082)) b!9629))

(assert (=> b!9629 m!14047))

(assert (=> b!9629 m!14047))

(declare-fun m!14055 () Bool)

(assert (=> b!9629 m!14055))

(assert (=> b!9623 d!4083))

(declare-fun d!4085 () Bool)

(declare-fun c!1085 () Bool)

(assert (=> d!4085 (= c!1085 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5515 () (_ BitVec 64))

(assert (=> d!4085 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5515 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9634 () Bool)

(assert (=> b!9634 (= e!5515 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9635 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9635 (= e!5515 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4085 c!1085) b!9634))

(assert (= (and d!4085 (not c!1085)) b!9635))

(assert (=> b!9635 m!14051))

(declare-fun m!14057 () Bool)

(assert (=> b!9635 m!14057))

(assert (=> b!9623 d!4085))

(declare-fun d!4087 () Bool)

(declare-fun c!1088 () Bool)

(assert (=> d!4087 (= c!1088 (fp.isNaN x!143))))

(declare-fun e!5518 () (_ BitVec 64))

(assert (=> d!4087 (= (__LO!0 x!143) ((_ extract 31 0) e!5518))))

(declare-fun b!9640 () Bool)

(assert (=> b!9640 (= e!5518 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9641 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9641 (= e!5518 (choose!1 x!143 x!143 false))))

(assert (= (and d!4087 c!1088) b!9640))

(assert (= (and d!4087 (not c!1088)) b!9641))

(declare-fun m!14059 () Bool)

(assert (=> b!9641 m!14059))

(assert (=> b!9623 d!4087))

(declare-fun d!4089 () Bool)

(declare-fun c!1091 () Bool)

(assert (=> d!4089 (= c!1091 (fp.isNaN x!143))))

(declare-fun e!5521 () (_ BitVec 64))

(assert (=> d!4089 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5521 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9646 () Bool)

(assert (=> b!9646 (= e!5521 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9647 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9647 (= e!5521 (choose!3 x!143 x!143 false))))

(assert (= (and d!4089 c!1091) b!9646))

(assert (= (and d!4089 (not c!1091)) b!9647))

(declare-fun m!14061 () Bool)

(assert (=> b!9647 m!14061))

(assert (=> b!9621 d!4089))

(check-sat (not b!9641) (not b!9629) (not b!9647) (not b!9635))
(check-sat)
