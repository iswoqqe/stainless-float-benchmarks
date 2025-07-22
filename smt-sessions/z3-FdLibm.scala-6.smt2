; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59 () Bool)

(assert start!59)

(declare-fun res!283 () Bool)

(declare-fun e!65 () Bool)

(assert (=> start!59 (=> (not res!283) (not e!65))))

(declare-fun lt!52 () (_ BitVec 32))

(assert (=> start!59 (= res!283 (and (bvsgt lt!52 #b00111111111010010010000111111011) (bvslt lt!52 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!59 (= lt!52 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!59 e!65))

(assert (=> start!59 true))

(declare-fun b!59 () Bool)

(declare-fun lt!51 () (_ BitVec 32))

(declare-datatypes ((tuple3!8 0))(
  ( (tuple3!9 (_1!4 (_ BitVec 32)) (_2!4 (_ FloatingPoint 11 53)) (_3!4 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!53 () tuple3!8)

(assert (=> b!59 (= e!65 (and (not (= lt!51 #b00000000000000000000000000000000)) (not (= lt!51 #b00000000000000000000000000000001)) (= lt!51 #b00000000000000000000000000000010) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!4 lt!53))) (not (fp.leq (_2!4 lt!53) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(assert (=> b!59 (= lt!51 (bvand (_1!4 lt!53) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!8)

(assert (=> b!59 (= lt!53 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!59 res!283) b!59))

(declare-fun m!49 () Bool)

(assert (=> start!59 m!49))

(declare-fun m!51 () Bool)

(assert (=> b!59 m!51))

(check-sat (not b!59) (not start!59))
(check-sat)
(get-model)

(declare-fun d!47 () Bool)

(declare-fun lt!56 () tuple3!8)

(assert (=> d!47 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!4 lt!56)) (bvslt (_1!4 lt!56) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!4 lt!56)) (fp.leq (_2!4 lt!56) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!4 lt!56)) (fp.leq (_3!4 lt!56) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!8)

(assert (=> d!47 (= lt!56 (choose!4 x!109))))

(assert (=> d!47 (= (__ieee754_rem_pio2!0 x!109) lt!56)))

(declare-fun bs!16 () Bool)

(assert (= bs!16 d!47))

(declare-fun m!53 () Bool)

(assert (=> bs!16 m!53))

(assert (=> b!59 d!47))

(declare-fun d!49 () Bool)

(declare-fun c!53 () Bool)

(assert (=> d!49 (= c!53 (fp.isNaN x!109))))

(declare-fun e!68 () (_ BitVec 64))

(assert (=> d!49 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!68 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!64 () Bool)

(assert (=> b!64 (= e!68 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!65 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!65 (= e!68 (choose!3 x!109 x!109 false))))

(assert (= (and d!49 c!53) b!64))

(assert (= (and d!49 (not c!53)) b!65))

(declare-fun m!55 () Bool)

(assert (=> b!65 m!55))

(assert (=> start!59 d!49))

(check-sat (not d!47) (not b!65))
(check-sat)
(get-model)

(declare-fun d!51 () Bool)

(declare-fun res!286 () tuple3!8)

(assert (=> d!51 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!4 res!286)) (bvslt (_1!4 res!286) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!4 res!286)) (fp.leq (_2!4 res!286) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!4 res!286)) (fp.leq (_3!4 res!286) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!51 true))

(assert (=> d!51 (= (choose!4 x!109) res!286)))

(assert (=> d!47 d!51))

(declare-fun d!53 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!53 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!17 () Bool)

(assert (= bs!17 d!53))

(declare-fun m!57 () Bool)

(assert (=> bs!17 m!57))

(assert (=> b!65 d!53))

(check-sat (not d!53))
(check-sat)
(get-model)

(declare-fun d!55 () Bool)

(declare-fun toBinary!31 () (_ BitVec 64))

(assert (=> d!55 (= ((_ to_fp 11 53) toBinary!31) x!109)))

(assert (=> d!55 true))

(assert (=> d!55 (= (choose!8 x!109 x!109 false) toBinary!31)))

(assert (=> d!53 d!55))

(check-sat)
