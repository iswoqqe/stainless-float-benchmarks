; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1831 () Bool)

(assert start!1831)

(declare-fun res!7820 () Bool)

(declare-fun e!5405 () Bool)

(assert (=> start!1831 (=> (not res!7820) (not e!5405))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1831 (= res!7820 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1831 e!5405))

(assert (=> start!1831 true))

(declare-fun b!9471 () Bool)

(declare-fun e!5406 () Bool)

(assert (=> b!9471 (= e!5405 e!5406)))

(declare-fun res!7822 () Bool)

(assert (=> b!9471 (=> (not res!7822) (not e!5406))))

(declare-fun lt!4787 () (_ BitVec 32))

(assert (=> b!9471 (= res!7822 (and (bvsle #b11111111111111111111111111101001 lt!4787) (bvsle lt!4787 #b00000000000000000000001111101000)))))

(declare-fun lt!4788 () (_ BitVec 32))

(assert (=> b!9471 (= lt!4787 (bvsub (bvashr lt!4788 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9471 (= lt!4788 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9472 () Bool)

(declare-fun e!5407 () Bool)

(assert (=> b!9472 (= e!5406 e!5407)))

(declare-fun res!7821 () Bool)

(assert (=> b!9472 (=> (not res!7821) (not e!5407))))

(declare-fun lt!4790 () (_ BitVec 32))

(assert (=> b!9472 (= res!7821 (and (bvsle #b00000000000000000000000000011000 lt!4790) (bvsle lt!4790 #b00000000000000000000001111110000) (= (bvsrem lt!4790 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4789 () (_ BitVec 32))

(assert (=> b!9472 (= lt!4790 (ite (bvslt lt!4789 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4789))))

(assert (=> b!9472 (= lt!4789 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4787 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9473 () Bool)

(declare-fun lt!4791 () (_ FloatingPoint 11 53))

(assert (=> b!9473 (= e!5407 (and (not (fp.isNaN lt!4791)) (not (fp.gt lt!4791 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9473 (= lt!4791 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4788 (bvshl lt!4790 #b00000000000000000000000000010100))))))

(assert (= (and start!1831 res!7820) b!9471))

(assert (= (and b!9471 res!7822) b!9472))

(assert (= (and b!9472 res!7821) b!9473))

(declare-fun m!13955 () Bool)

(assert (=> b!9471 m!13955))

(declare-fun m!13957 () Bool)

(assert (=> b!9473 m!13957))

(assert (=> b!9473 m!13957))

(declare-fun m!13959 () Bool)

(assert (=> b!9473 m!13959))

(assert (=> b!9473 m!13959))

(declare-fun m!13961 () Bool)

(assert (=> b!9473 m!13961))

(check-sat (not b!9473) (not b!9471))
(check-sat)
(get-model)

(declare-fun d!4051 () Bool)

(declare-fun c!1034 () Bool)

(assert (=> d!4051 (= c!1034 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5410 () (_ BitVec 64))

(assert (=> d!4051 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4788 (bvshl lt!4790 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5410 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4788 (bvshl lt!4790 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9478 () Bool)

(assert (=> b!9478 (= e!5410 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9479 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9479 (= e!5410 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4788 (bvshl lt!4790 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4051 c!1034) b!9478))

(assert (= (and d!4051 (not c!1034)) b!9479))

(assert (=> b!9479 m!13959))

(assert (=> b!9479 m!13959))

(declare-fun m!13963 () Bool)

(assert (=> b!9479 m!13963))

(assert (=> b!9473 d!4051))

(declare-fun d!4053 () Bool)

(declare-fun c!1037 () Bool)

(assert (=> d!4053 (= c!1037 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5413 () (_ BitVec 64))

(assert (=> d!4053 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5413 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9484 () Bool)

(assert (=> b!9484 (= e!5413 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9485 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9485 (= e!5413 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4053 c!1037) b!9484))

(assert (= (and d!4053 (not c!1037)) b!9485))

(assert (=> b!9485 m!13957))

(declare-fun m!13965 () Bool)

(assert (=> b!9485 m!13965))

(assert (=> b!9473 d!4053))

(declare-fun d!4055 () Bool)

(declare-fun c!1040 () Bool)

(assert (=> d!4055 (= c!1040 (fp.isNaN x!143))))

(declare-fun e!5416 () (_ BitVec 64))

(assert (=> d!4055 (= (__LO!0 x!143) ((_ extract 31 0) e!5416))))

(declare-fun b!9490 () Bool)

(assert (=> b!9490 (= e!5416 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9491 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9491 (= e!5416 (choose!1 x!143 x!143 false))))

(assert (= (and d!4055 c!1040) b!9490))

(assert (= (and d!4055 (not c!1040)) b!9491))

(declare-fun m!13967 () Bool)

(assert (=> b!9491 m!13967))

(assert (=> b!9473 d!4055))

(declare-fun d!4057 () Bool)

(declare-fun c!1043 () Bool)

(assert (=> d!4057 (= c!1043 (fp.isNaN x!143))))

(declare-fun e!5419 () (_ BitVec 64))

(assert (=> d!4057 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5419 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9496 () Bool)

(assert (=> b!9496 (= e!5419 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9497 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9497 (= e!5419 (choose!3 x!143 x!143 false))))

(assert (= (and d!4057 c!1043) b!9496))

(assert (= (and d!4057 (not c!1043)) b!9497))

(declare-fun m!13969 () Bool)

(assert (=> b!9497 m!13969))

(assert (=> b!9471 d!4057))

(check-sat (not b!9491) (not b!9479) (not b!9497) (not b!9485))
(check-sat)
