; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!453 () Bool)

(assert start!453)

(declare-fun res!484 () Bool)

(declare-fun e!290 () Bool)

(assert (=> start!453 (=> (not res!484) (not e!290))))

(declare-fun lt!417 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(assert (=> start!453 (= res!484 (and (bvslt lt!417 #b01111111111100000000000000000000) (bvsgt lt!417 #b00111111111010010010000111111011) (bvsge lt!417 #b01000000000000101101100101111100) (or (fp.leq x!127 (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000)) (fp.leq (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127))))))

(declare-fun lt!418 () (_ BitVec 32))

(assert (=> start!453 (= lt!417 (bvand lt!418 #b01111111111111111111111111111111))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!453 (= lt!418 (__HI!0 x!127))))

(assert (=> start!453 e!290))

(assert (=> start!453 true))

(declare-fun b!395 () Bool)

(declare-datatypes ((tuple3!48 0))(
  ( (tuple3!49 (_1!24 (_ BitVec 32)) (_2!24 (_ FloatingPoint 11 53)) (_3!24 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!419 () tuple3!48)

(assert (=> b!395 (= e!290 (and (bvslt lt!418 #b00000000000000000000000000000000) (= (_1!24 lt!419) #b10000000000000000000000000000000)))))

(declare-fun __kernel_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!48)

(assert (=> b!395 (= lt!419 (__kernel_rem_pio2!0 (ite (bvslt lt!418 #b00000000000000000000000000000000) (fp.neg x!127) x!127)))))

(assert (= (and start!453 res!484) b!395))

(declare-fun m!385 () Bool)

(assert (=> start!453 m!385))

(declare-fun m!387 () Bool)

(assert (=> b!395 m!387))

(check-sat (not b!395) (not start!453))
(check-sat)
(get-model)

(declare-fun d!363 () Bool)

(declare-fun lt!422 () tuple3!48)

(assert (=> d!363 (and (bvsle #b00000000000000000000000000000000 (_1!24 lt!422)) (bvslt (_1!24 lt!422) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101101010100010001000010110100011000) (_2!24 lt!422)) (fp.leq (_2!24 lt!422) (fp #b0 #b01111111110 #b1001001000011111101101010100010001000010110100011000)) (fp.eq (fp.add roundNearestTiesToEven (_2!24 lt!422) (_3!24 lt!422)) (_2!24 lt!422)))))

(declare-fun choose!7 ((_ FloatingPoint 11 53)) tuple3!48)

(assert (=> d!363 (= lt!422 (choose!7 (ite (bvslt lt!418 #b00000000000000000000000000000000) (fp.neg x!127) x!127)))))

(assert (=> d!363 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (ite (bvslt lt!418 #b00000000000000000000000000000000) (fp.neg x!127) x!127)) (not (fp.isInfinite (ite (bvslt lt!418 #b00000000000000000000000000000000) (fp.neg x!127) x!127))) (not (fp.isNaN (ite (bvslt lt!418 #b00000000000000000000000000000000) (fp.neg x!127) x!127))))))

(assert (=> d!363 (= (__kernel_rem_pio2!0 (ite (bvslt lt!418 #b00000000000000000000000000000000) (fp.neg x!127) x!127)) lt!422)))

(declare-fun bs!130 () Bool)

(assert (= bs!130 d!363))

(declare-fun m!389 () Bool)

(assert (=> bs!130 m!389))

(assert (=> b!395 d!363))

(declare-fun d!365 () Bool)

(declare-fun c!164 () Bool)

(assert (=> d!365 (= c!164 (fp.isNaN x!127))))

(declare-fun e!293 () (_ BitVec 64))

(assert (=> d!365 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!293 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!400 () Bool)

(assert (=> b!400 (= e!293 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!401 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!401 (= e!293 (choose!3 x!127 x!127 false))))

(assert (= (and d!365 c!164) b!400))

(assert (= (and d!365 (not c!164)) b!401))

(declare-fun m!391 () Bool)

(assert (=> b!401 m!391))

(assert (=> start!453 d!365))

(check-sat (not b!401) (not d!363))
(check-sat)
