; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1821 () Bool)

(assert start!1821)

(declare-fun res!7812 () Bool)

(declare-fun e!5385 () Bool)

(assert (=> start!1821 (=> (not res!7812) (not e!5385))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1821 (= res!7812 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1821 e!5385))

(assert (=> start!1821 true))

(declare-fun b!9438 () Bool)

(declare-fun e!5384 () Bool)

(assert (=> b!9438 (= e!5385 e!5384)))

(declare-fun res!7811 () Bool)

(assert (=> b!9438 (=> (not res!7811) (not e!5384))))

(declare-fun lt!4776 () (_ BitVec 32))

(assert (=> b!9438 (= res!7811 (and (bvsle #b11111111111111111111111111101001 lt!4776) (bvsle lt!4776 #b00000000000000000000001111101000)))))

(declare-fun lt!4775 () (_ BitVec 32))

(assert (=> b!9438 (= lt!4776 (bvsub (bvashr lt!4775 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9438 (= lt!4775 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9439 () Bool)

(declare-fun e!5386 () Bool)

(assert (=> b!9439 (= e!5384 e!5386)))

(declare-fun res!7813 () Bool)

(assert (=> b!9439 (=> (not res!7813) (not e!5386))))

(declare-fun lt!4773 () (_ BitVec 32))

(assert (=> b!9439 (= res!7813 (and (bvsle #b00000000000000000000000000011000 lt!4773) (bvsle lt!4773 #b00000000000000000000001111110000) (= (bvsrem lt!4773 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4774 () (_ BitVec 32))

(assert (=> b!9439 (= lt!4773 (ite (bvslt lt!4774 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4774))))

(assert (=> b!9439 (= lt!4774 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4776 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9440 () Bool)

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9440 (= e!5386 (fp.isNaN (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4775 (bvshl lt!4773 #b00000000000000000000000000010100)))))))

(assert (= (and start!1821 res!7812) b!9438))

(assert (= (and b!9438 res!7811) b!9439))

(assert (= (and b!9439 res!7813) b!9440))

(declare-fun m!13939 () Bool)

(assert (=> b!9438 m!13939))

(declare-fun m!13941 () Bool)

(assert (=> b!9440 m!13941))

(assert (=> b!9440 m!13941))

(declare-fun m!13943 () Bool)

(assert (=> b!9440 m!13943))

(assert (=> b!9440 m!13943))

(declare-fun m!13945 () Bool)

(assert (=> b!9440 m!13945))

(check-sat (not b!9440) (not b!9438))
(check-sat)
(get-model)

(declare-fun d!4043 () Bool)

(declare-fun c!1022 () Bool)

(assert (=> d!4043 (= c!1022 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5389 () (_ BitVec 64))

(assert (=> d!4043 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4775 (bvshl lt!4773 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5389 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4775 (bvshl lt!4773 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9445 () Bool)

(assert (=> b!9445 (= e!5389 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9446 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9446 (= e!5389 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4775 (bvshl lt!4773 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4043 c!1022) b!9445))

(assert (= (and d!4043 (not c!1022)) b!9446))

(assert (=> b!9446 m!13943))

(assert (=> b!9446 m!13943))

(declare-fun m!13947 () Bool)

(assert (=> b!9446 m!13947))

(assert (=> b!9440 d!4043))

(declare-fun d!4045 () Bool)

(declare-fun c!1025 () Bool)

(assert (=> d!4045 (= c!1025 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5392 () (_ BitVec 64))

(assert (=> d!4045 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5392 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9451 () Bool)

(assert (=> b!9451 (= e!5392 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9452 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9452 (= e!5392 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4045 c!1025) b!9451))

(assert (= (and d!4045 (not c!1025)) b!9452))

(assert (=> b!9452 m!13941))

(declare-fun m!13949 () Bool)

(assert (=> b!9452 m!13949))

(assert (=> b!9440 d!4045))

(declare-fun d!4047 () Bool)

(declare-fun c!1028 () Bool)

(assert (=> d!4047 (= c!1028 (fp.isNaN x!143))))

(declare-fun e!5395 () (_ BitVec 64))

(assert (=> d!4047 (= (__LO!0 x!143) ((_ extract 31 0) e!5395))))

(declare-fun b!9457 () Bool)

(assert (=> b!9457 (= e!5395 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9458 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9458 (= e!5395 (choose!1 x!143 x!143 false))))

(assert (= (and d!4047 c!1028) b!9457))

(assert (= (and d!4047 (not c!1028)) b!9458))

(declare-fun m!13951 () Bool)

(assert (=> b!9458 m!13951))

(assert (=> b!9440 d!4047))

(declare-fun d!4049 () Bool)

(declare-fun c!1031 () Bool)

(assert (=> d!4049 (= c!1031 (fp.isNaN x!143))))

(declare-fun e!5398 () (_ BitVec 64))

(assert (=> d!4049 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5398 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9463 () Bool)

(assert (=> b!9463 (= e!5398 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9464 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9464 (= e!5398 (choose!3 x!143 x!143 false))))

(assert (= (and d!4049 c!1031) b!9463))

(assert (= (and d!4049 (not c!1031)) b!9464))

(declare-fun m!13953 () Bool)

(assert (=> b!9464 m!13953))

(assert (=> b!9438 d!4049))

(check-sat (not b!9446) (not b!9464) (not b!9452) (not b!9458))
(check-sat)
