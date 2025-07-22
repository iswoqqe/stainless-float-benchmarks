; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1889 () Bool)

(assert start!1889)

(declare-fun res!7902 () Bool)

(declare-fun e!5546 () Bool)

(assert (=> start!1889 (=> (not res!7902) (not e!5546))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1889 (= res!7902 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1889 e!5546))

(assert (=> start!1889 true))

(declare-fun b!9672 () Bool)

(declare-fun e!5547 () Bool)

(assert (=> b!9672 (= e!5546 e!5547)))

(declare-fun res!7903 () Bool)

(assert (=> b!9672 (=> (not res!7903) (not e!5547))))

(declare-fun lt!4930 () (_ BitVec 32))

(assert (=> b!9672 (= res!7903 (and (bvsle #b11111111111111111111111111101001 lt!4930) (bvsle lt!4930 #b00000000000000000000001111101000)))))

(declare-fun lt!4933 () (_ BitVec 32))

(assert (=> b!9672 (= lt!4930 (bvsub (bvashr lt!4933 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9672 (= lt!4933 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9673 () Bool)

(declare-fun e!5548 () Bool)

(assert (=> b!9673 (= e!5547 e!5548)))

(declare-fun res!7901 () Bool)

(assert (=> b!9673 (=> (not res!7901) (not e!5548))))

(declare-fun lt!4931 () (_ BitVec 32))

(assert (=> b!9673 (= res!7901 (and (bvsle #b00000000000000000000000000011000 lt!4931) (bvsle lt!4931 #b00000000000000000000001111110000) (= (bvsrem lt!4931 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4935 () (_ BitVec 32))

(assert (=> b!9673 (= lt!4931 (ite (bvslt lt!4935 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4935))))

(assert (=> b!9673 (= lt!4935 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4930 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9674 () Bool)

(declare-fun lt!4934 () (_ FloatingPoint 11 53))

(declare-fun lt!4932 () (_ FloatingPoint 11 53))

(assert (=> b!9674 (= e!5548 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4934 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4932) #b00000000000000000000000000000000 (ite (fp.gt lt!4932 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4932 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4932)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4934) #b00000000000000000000000000000000 (ite (fp.gt lt!4934 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4934 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4934)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9674 (= lt!4934 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4932 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4932) #b00000000000000000000000000000000 (ite (fp.gt lt!4932 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4932 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4932)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9674 (= lt!4932 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4933 (bvshl lt!4931 #b00000000000000000000000000010100))))))

(assert (= (and start!1889 res!7902) b!9672))

(assert (= (and b!9672 res!7903) b!9673))

(assert (= (and b!9673 res!7901) b!9674))

(declare-fun m!14079 () Bool)

(assert (=> b!9672 m!14079))

(declare-fun m!14081 () Bool)

(assert (=> b!9674 m!14081))

(declare-fun m!14083 () Bool)

(assert (=> b!9674 m!14083))

(declare-fun m!14085 () Bool)

(assert (=> b!9674 m!14085))

(declare-fun m!14087 () Bool)

(assert (=> b!9674 m!14087))

(declare-fun m!14089 () Bool)

(assert (=> b!9674 m!14089))

(declare-fun m!14091 () Bool)

(assert (=> b!9674 m!14091))

(declare-fun m!14093 () Bool)

(assert (=> b!9674 m!14093))

(assert (=> b!9674 m!14091))

(assert (=> b!9674 m!14085))

(check-sat (not b!9674) (not b!9672))
(check-sat)
(get-model)

(declare-fun d!4091 () Bool)

(declare-fun c!1094 () Bool)

(assert (=> d!4091 (= c!1094 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5551 () (_ BitVec 64))

(assert (=> d!4091 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4933 (bvshl lt!4931 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5551 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4933 (bvshl lt!4931 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9679 () Bool)

(assert (=> b!9679 (= e!5551 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9680 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9680 (= e!5551 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4933 (bvshl lt!4931 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4091 c!1094) b!9679))

(assert (= (and d!4091 (not c!1094)) b!9680))

(assert (=> b!9680 m!14085))

(assert (=> b!9680 m!14085))

(declare-fun m!14095 () Bool)

(assert (=> b!9680 m!14095))

(assert (=> b!9674 d!4091))

(declare-fun d!4093 () Bool)

(declare-fun c!1097 () Bool)

(assert (=> d!4093 (= c!1097 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5554 () (_ BitVec 64))

(assert (=> d!4093 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5554 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9685 () Bool)

(assert (=> b!9685 (= e!5554 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9686 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9686 (= e!5554 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4093 c!1097) b!9685))

(assert (= (and d!4093 (not c!1097)) b!9686))

(assert (=> b!9686 m!14091))

(declare-fun m!14097 () Bool)

(assert (=> b!9686 m!14097))

(assert (=> b!9674 d!4093))

(declare-fun d!4095 () Bool)

(declare-fun c!1100 () Bool)

(assert (=> d!4095 (= c!1100 (fp.isNaN x!143))))

(declare-fun e!5557 () (_ BitVec 64))

(assert (=> d!4095 (= (__LO!0 x!143) ((_ extract 31 0) e!5557))))

(declare-fun b!9691 () Bool)

(assert (=> b!9691 (= e!5557 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9692 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9692 (= e!5557 (choose!1 x!143 x!143 false))))

(assert (= (and d!4095 c!1100) b!9691))

(assert (= (and d!4095 (not c!1100)) b!9692))

(declare-fun m!14099 () Bool)

(assert (=> b!9692 m!14099))

(assert (=> b!9674 d!4095))

(declare-fun d!4097 () Bool)

(declare-fun c!1103 () Bool)

(assert (=> d!4097 (= c!1103 (fp.isNaN x!143))))

(declare-fun e!5560 () (_ BitVec 64))

(assert (=> d!4097 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5560 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9697 () Bool)

(assert (=> b!9697 (= e!5560 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9698 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9698 (= e!5560 (choose!3 x!143 x!143 false))))

(assert (= (and d!4097 c!1103) b!9697))

(assert (= (and d!4097 (not c!1103)) b!9698))

(declare-fun m!14101 () Bool)

(assert (=> b!9698 m!14101))

(assert (=> b!9672 d!4097))

(check-sat (not b!9680) (not b!9686) (not b!9698) (not b!9692))
(check-sat)
