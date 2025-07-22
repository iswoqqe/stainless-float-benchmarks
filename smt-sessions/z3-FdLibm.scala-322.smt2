; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1841 () Bool)

(assert start!1841)

(declare-fun res!7831 () Bool)

(declare-fun e!5427 () Bool)

(assert (=> start!1841 (=> (not res!7831) (not e!5427))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1841 (= res!7831 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1841 e!5427))

(assert (=> start!1841 true))

(declare-fun b!9504 () Bool)

(declare-fun e!5426 () Bool)

(assert (=> b!9504 (= e!5427 e!5426)))

(declare-fun res!7830 () Bool)

(assert (=> b!9504 (=> (not res!7830) (not e!5426))))

(declare-fun lt!4805 () (_ BitVec 32))

(assert (=> b!9504 (= res!7830 (and (bvsle #b11111111111111111111111111101001 lt!4805) (bvsle lt!4805 #b00000000000000000000001111101000)))))

(declare-fun lt!4803 () (_ BitVec 32))

(assert (=> b!9504 (= lt!4805 (bvsub (bvashr lt!4803 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9504 (= lt!4803 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9505 () Bool)

(declare-fun e!5428 () Bool)

(assert (=> b!9505 (= e!5426 e!5428)))

(declare-fun res!7829 () Bool)

(assert (=> b!9505 (=> (not res!7829) (not e!5428))))

(declare-fun lt!4806 () (_ BitVec 32))

(assert (=> b!9505 (= res!7829 (and (bvsle #b00000000000000000000000000011000 lt!4806) (bvsle lt!4806 #b00000000000000000000001111110000) (= (bvsrem lt!4806 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4802 () (_ BitVec 32))

(assert (=> b!9505 (= lt!4806 (ite (bvslt lt!4802 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4802))))

(assert (=> b!9505 (= lt!4802 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4805 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9506 () Bool)

(declare-fun lt!4804 () (_ FloatingPoint 11 53))

(assert (=> b!9506 (= e!5428 (and (not (fp.isNaN lt!4804)) (fp.gt lt!4804 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!4804 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9506 (= lt!4804 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4803 (bvshl lt!4806 #b00000000000000000000000000010100))))))

(assert (= (and start!1841 res!7831) b!9504))

(assert (= (and b!9504 res!7830) b!9505))

(assert (= (and b!9505 res!7829) b!9506))

(declare-fun m!13971 () Bool)

(assert (=> b!9504 m!13971))

(declare-fun m!13973 () Bool)

(assert (=> b!9506 m!13973))

(assert (=> b!9506 m!13973))

(declare-fun m!13975 () Bool)

(assert (=> b!9506 m!13975))

(assert (=> b!9506 m!13975))

(declare-fun m!13977 () Bool)

(assert (=> b!9506 m!13977))

(check-sat (not b!9506) (not b!9504))
(check-sat)
(get-model)

(declare-fun d!4059 () Bool)

(declare-fun c!1046 () Bool)

(assert (=> d!4059 (= c!1046 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5431 () (_ BitVec 64))

(assert (=> d!4059 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4803 (bvshl lt!4806 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5431 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4803 (bvshl lt!4806 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9511 () Bool)

(assert (=> b!9511 (= e!5431 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9512 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9512 (= e!5431 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4803 (bvshl lt!4806 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4059 c!1046) b!9511))

(assert (= (and d!4059 (not c!1046)) b!9512))

(assert (=> b!9512 m!13975))

(assert (=> b!9512 m!13975))

(declare-fun m!13979 () Bool)

(assert (=> b!9512 m!13979))

(assert (=> b!9506 d!4059))

(declare-fun d!4061 () Bool)

(declare-fun c!1049 () Bool)

(assert (=> d!4061 (= c!1049 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5434 () (_ BitVec 64))

(assert (=> d!4061 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5434 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9517 () Bool)

(assert (=> b!9517 (= e!5434 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9518 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9518 (= e!5434 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4061 c!1049) b!9517))

(assert (= (and d!4061 (not c!1049)) b!9518))

(assert (=> b!9518 m!13973))

(declare-fun m!13981 () Bool)

(assert (=> b!9518 m!13981))

(assert (=> b!9506 d!4061))

(declare-fun d!4063 () Bool)

(declare-fun c!1052 () Bool)

(assert (=> d!4063 (= c!1052 (fp.isNaN x!143))))

(declare-fun e!5437 () (_ BitVec 64))

(assert (=> d!4063 (= (__LO!0 x!143) ((_ extract 31 0) e!5437))))

(declare-fun b!9523 () Bool)

(assert (=> b!9523 (= e!5437 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9524 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9524 (= e!5437 (choose!1 x!143 x!143 false))))

(assert (= (and d!4063 c!1052) b!9523))

(assert (= (and d!4063 (not c!1052)) b!9524))

(declare-fun m!13983 () Bool)

(assert (=> b!9524 m!13983))

(assert (=> b!9506 d!4063))

(declare-fun d!4065 () Bool)

(declare-fun c!1055 () Bool)

(assert (=> d!4065 (= c!1055 (fp.isNaN x!143))))

(declare-fun e!5440 () (_ BitVec 64))

(assert (=> d!4065 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5440 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9529 () Bool)

(assert (=> b!9529 (= e!5440 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9530 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9530 (= e!5440 (choose!3 x!143 x!143 false))))

(assert (= (and d!4065 c!1055) b!9529))

(assert (= (and d!4065 (not c!1055)) b!9530))

(declare-fun m!13985 () Bool)

(assert (=> b!9530 m!13985))

(assert (=> b!9504 d!4065))

(check-sat (not b!9512) (not b!9530) (not b!9518) (not b!9524))
(check-sat)
