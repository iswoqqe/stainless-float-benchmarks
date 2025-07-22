; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1855 () Bool)

(assert start!1855)

(declare-fun res!7857 () Bool)

(declare-fun e!5465 () Bool)

(assert (=> start!1855 (=> (not res!7857) (not e!5465))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1855 (= res!7857 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1855 e!5465))

(assert (=> start!1855 true))

(declare-fun b!9555 () Bool)

(declare-fun e!5467 () Bool)

(assert (=> b!9555 (= e!5465 e!5467)))

(declare-fun res!7856 () Bool)

(assert (=> b!9555 (=> (not res!7856) (not e!5467))))

(declare-fun lt!4848 () (_ BitVec 32))

(assert (=> b!9555 (= res!7856 (and (bvsle #b11111111111111111111111111101001 lt!4848) (bvsle lt!4848 #b00000000000000000000001111101000)))))

(declare-fun lt!4849 () (_ BitVec 32))

(assert (=> b!9555 (= lt!4848 (bvsub (bvashr lt!4849 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9555 (= lt!4849 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9556 () Bool)

(declare-fun e!5466 () Bool)

(assert (=> b!9556 (= e!5467 e!5466)))

(declare-fun res!7858 () Bool)

(assert (=> b!9556 (=> (not res!7858) (not e!5466))))

(declare-fun lt!4851 () (_ BitVec 32))

(assert (=> b!9556 (= res!7858 (and (bvsle #b00000000000000000000000000011000 lt!4851) (bvsle lt!4851 #b00000000000000000000001111110000) (= (bvsrem lt!4851 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4850 () (_ BitVec 32))

(assert (=> b!9556 (= lt!4851 (ite (bvslt lt!4850 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4850))))

(assert (=> b!9556 (= lt!4850 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4848 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9557 () Bool)

(declare-fun lt!4847 () (_ FloatingPoint 11 53))

(assert (=> b!9557 (= e!5466 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4847 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4847) #b00000000000000000000000000000000 (ite (fp.gt lt!4847 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4847 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4847)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9557 (= lt!4847 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4849 (bvshl lt!4851 #b00000000000000000000000000010100))))))

(assert (= (and start!1855 res!7857) b!9555))

(assert (= (and b!9555 res!7856) b!9556))

(assert (= (and b!9556 res!7858) b!9557))

(declare-fun m!14003 () Bool)

(assert (=> b!9555 m!14003))

(declare-fun m!14005 () Bool)

(assert (=> b!9557 m!14005))

(declare-fun m!14007 () Bool)

(assert (=> b!9557 m!14007))

(declare-fun m!14009 () Bool)

(assert (=> b!9557 m!14009))

(declare-fun m!14011 () Bool)

(assert (=> b!9557 m!14011))

(declare-fun m!14013 () Bool)

(assert (=> b!9557 m!14013))

(assert (=> b!9557 m!14005))

(assert (=> b!9557 m!14013))

(check-sat (not b!9555) (not b!9557))
(check-sat)
(get-model)

(declare-fun d!4067 () Bool)

(declare-fun c!1058 () Bool)

(assert (=> d!4067 (= c!1058 (fp.isNaN x!143))))

(declare-fun e!5470 () (_ BitVec 64))

(assert (=> d!4067 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5470 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9562 () Bool)

(assert (=> b!9562 (= e!5470 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9563 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9563 (= e!5470 (choose!3 x!143 x!143 false))))

(assert (= (and d!4067 c!1058) b!9562))

(assert (= (and d!4067 (not c!1058)) b!9563))

(declare-fun m!14015 () Bool)

(assert (=> b!9563 m!14015))

(assert (=> b!9555 d!4067))

(declare-fun d!4069 () Bool)

(declare-fun c!1061 () Bool)

(assert (=> d!4069 (= c!1061 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5473 () (_ BitVec 64))

(assert (=> d!4069 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4849 (bvshl lt!4851 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5473 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4849 (bvshl lt!4851 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9568 () Bool)

(assert (=> b!9568 (= e!5473 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9569 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9569 (= e!5473 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4849 (bvshl lt!4851 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4069 c!1061) b!9568))

(assert (= (and d!4069 (not c!1061)) b!9569))

(assert (=> b!9569 m!14005))

(assert (=> b!9569 m!14005))

(declare-fun m!14017 () Bool)

(assert (=> b!9569 m!14017))

(assert (=> b!9557 d!4069))

(declare-fun d!4071 () Bool)

(declare-fun c!1064 () Bool)

(assert (=> d!4071 (= c!1064 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5476 () (_ BitVec 64))

(assert (=> d!4071 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5476 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9574 () Bool)

(assert (=> b!9574 (= e!5476 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9575 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9575 (= e!5476 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4071 c!1064) b!9574))

(assert (= (and d!4071 (not c!1064)) b!9575))

(assert (=> b!9575 m!14013))

(declare-fun m!14019 () Bool)

(assert (=> b!9575 m!14019))

(assert (=> b!9557 d!4071))

(declare-fun d!4073 () Bool)

(declare-fun c!1067 () Bool)

(assert (=> d!4073 (= c!1067 (fp.isNaN x!143))))

(declare-fun e!5479 () (_ BitVec 64))

(assert (=> d!4073 (= (__LO!0 x!143) ((_ extract 31 0) e!5479))))

(declare-fun b!9580 () Bool)

(assert (=> b!9580 (= e!5479 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9581 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9581 (= e!5479 (choose!1 x!143 x!143 false))))

(assert (= (and d!4073 c!1067) b!9580))

(assert (= (and d!4073 (not c!1067)) b!9581))

(declare-fun m!14021 () Bool)

(assert (=> b!9581 m!14021))

(assert (=> b!9557 d!4073))

(check-sat (not b!9563) (not b!9581) (not b!9569) (not b!9575))
(check-sat)
