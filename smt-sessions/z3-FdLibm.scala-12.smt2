; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115 () Bool)

(assert start!115)

(declare-fun res!312 () Bool)

(declare-fun e!98 () Bool)

(assert (=> start!115 (=> (not res!312) (not e!98))))

(declare-fun lt!108 () (_ BitVec 32))

(assert (=> start!115 (= res!312 (and (bvsgt lt!108 #b00111111111010010010000111111011) (bvslt lt!108 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!115 (= lt!108 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!115 e!98))

(assert (=> start!115 true))

(declare-fun b!106 () Bool)

(declare-fun e!97 () Bool)

(assert (=> b!106 (= e!98 e!97)))

(declare-fun res!313 () Bool)

(assert (=> b!106 (=> (not res!313) (not e!97))))

(declare-datatypes ((tuple3!16 0))(
  ( (tuple3!17 (_1!8 (_ BitVec 32)) (_2!8 (_ FloatingPoint 11 53)) (_3!8 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!110 () tuple3!16)

(assert (=> b!106 (= res!313 (= (bvand (_1!8 lt!110) #b00000000000000000000000000000011) #b00000000000000000000000000000000))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!16)

(assert (=> b!106 (= lt!110 (__ieee754_rem_pio2!0 x!109))))

(declare-fun b!107 () Bool)

(declare-fun lt!109 () (_ FloatingPoint 11 53))

(assert (=> b!107 (= e!97 (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN lt!109))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!109)) (not (fp.leq lt!109 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!109)))))))

(declare-fun __kernel_cos!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!107 (= lt!109 (__kernel_cos!0 (_2!8 lt!110) (_3!8 lt!110)))))

(assert (= (and start!115 res!312) b!106))

(assert (= (and b!106 res!313) b!107))

(declare-fun m!99 () Bool)

(assert (=> start!115 m!99))

(declare-fun m!101 () Bool)

(assert (=> b!106 m!101))

(declare-fun m!103 () Bool)

(assert (=> b!107 m!103))

(check-sat (not b!107) (not start!115) (not b!106))
(check-sat)
(get-model)

(declare-fun d!91 () Bool)

(declare-fun lt!113 () (_ FloatingPoint 11 53))

(assert (=> d!91 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!113) (fp.leq lt!113 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!5 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!91 (= lt!113 (choose!5 (_2!8 lt!110) (_3!8 lt!110)))))

(assert (=> d!91 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!8 lt!110)) (fp.leq (_2!8 lt!110) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!91 (= (__kernel_cos!0 (_2!8 lt!110) (_3!8 lt!110)) lt!113)))

(declare-fun bs!32 () Bool)

(assert (= bs!32 d!91))

(declare-fun m!105 () Bool)

(assert (=> bs!32 m!105))

(assert (=> b!107 d!91))

(declare-fun d!93 () Bool)

(declare-fun c!68 () Bool)

(assert (=> d!93 (= c!68 (fp.isNaN x!109))))

(declare-fun e!101 () (_ BitVec 64))

(assert (=> d!93 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!101 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!112 () Bool)

(assert (=> b!112 (= e!101 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!113 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!113 (= e!101 (choose!3 x!109 x!109 false))))

(assert (= (and d!93 c!68) b!112))

(assert (= (and d!93 (not c!68)) b!113))

(declare-fun m!107 () Bool)

(assert (=> b!113 m!107))

(assert (=> start!115 d!93))

(declare-fun d!95 () Bool)

(declare-fun lt!116 () tuple3!16)

(assert (=> d!95 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!8 lt!116)) (bvslt (_1!8 lt!116) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!8 lt!116)) (fp.leq (_2!8 lt!116) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!8 lt!116)) (fp.leq (_3!8 lt!116) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!16)

(assert (=> d!95 (= lt!116 (choose!4 x!109))))

(assert (=> d!95 (= (__ieee754_rem_pio2!0 x!109) lt!116)))

(declare-fun bs!33 () Bool)

(assert (= bs!33 d!95))

(declare-fun m!109 () Bool)

(assert (=> bs!33 m!109))

(assert (=> b!106 d!95))

(check-sat (not d!95) (not b!113) (not d!91))
(check-sat)
(get-model)

(declare-fun d!97 () Bool)

(declare-fun res!316 () tuple3!16)

(assert (=> d!97 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!8 res!316)) (bvslt (_1!8 res!316) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!8 res!316)) (fp.leq (_2!8 res!316) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!8 res!316)) (fp.leq (_3!8 res!316) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!97 true))

(assert (=> d!97 (= (choose!4 x!109) res!316)))

(assert (=> d!95 d!97))

(declare-fun d!99 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!99 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!34 () Bool)

(assert (= bs!34 d!99))

(declare-fun m!111 () Bool)

(assert (=> bs!34 m!111))

(assert (=> b!113 d!99))

(declare-fun d!101 () Bool)

(declare-fun res!319 () (_ FloatingPoint 11 53))

(assert (=> d!101 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!319) (fp.leq res!319 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!101 true))

(assert (=> d!101 (= (choose!5 (_2!8 lt!110) (_3!8 lt!110)) res!319)))

(assert (=> d!91 d!101))

(check-sat (not d!99))
(check-sat)
(get-model)

(declare-fun d!103 () Bool)

(declare-fun toBinary!43 () (_ BitVec 64))

(assert (=> d!103 (= ((_ to_fp 11 53) toBinary!43) x!109)))

(assert (=> d!103 true))

(assert (=> d!103 (= (choose!8 x!109 x!109 false) toBinary!43)))

(assert (=> d!99 d!103))

(check-sat)
