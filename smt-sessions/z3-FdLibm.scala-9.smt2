; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95 () Bool)

(assert start!95)

(declare-fun res!301 () Bool)

(declare-fun e!83 () Bool)

(assert (=> start!95 (=> (not res!301) (not e!83))))

(declare-fun lt!87 () (_ BitVec 32))

(assert (=> start!95 (= res!301 (and (bvsgt lt!87 #b00111111111010010010000111111011) (bvslt lt!87 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!95 (= lt!87 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!95 e!83))

(assert (=> start!95 true))

(declare-fun b!86 () Bool)

(declare-fun lt!89 () (_ BitVec 32))

(declare-datatypes ((tuple3!14 0))(
  ( (tuple3!15 (_1!7 (_ BitVec 32)) (_2!7 (_ FloatingPoint 11 53)) (_3!7 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!88 () tuple3!14)

(assert (=> b!86 (= e!83 (and (not (= lt!89 #b00000000000000000000000000000000)) (not (= lt!89 #b00000000000000000000000000000001)) (not (= lt!89 #b00000000000000000000000000000010)) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!7 lt!88)) (fp.leq (_2!7 lt!88) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!7 lt!88))) (not (fp.leq (_3!7 lt!88) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!86 (= lt!89 (bvand (_1!7 lt!88) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!14)

(assert (=> b!86 (= lt!88 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!95 res!301) b!86))

(declare-fun m!79 () Bool)

(assert (=> start!95 m!79))

(declare-fun m!81 () Bool)

(assert (=> b!86 m!81))

(check-sat (not start!95) (not b!86))
(check-sat)
(get-model)

(declare-fun d!77 () Bool)

(declare-fun c!62 () Bool)

(assert (=> d!77 (= c!62 (fp.isNaN x!109))))

(declare-fun e!86 () (_ BitVec 64))

(assert (=> d!77 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!86 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!91 () Bool)

(assert (=> b!91 (= e!86 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!92 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!92 (= e!86 (choose!3 x!109 x!109 false))))

(assert (= (and d!77 c!62) b!91))

(assert (= (and d!77 (not c!62)) b!92))

(declare-fun m!83 () Bool)

(assert (=> b!92 m!83))

(assert (=> start!95 d!77))

(declare-fun d!79 () Bool)

(declare-fun lt!92 () tuple3!14)

(assert (=> d!79 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!7 lt!92)) (bvslt (_1!7 lt!92) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!7 lt!92)) (fp.leq (_2!7 lt!92) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!7 lt!92)) (fp.leq (_3!7 lt!92) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!14)

(assert (=> d!79 (= lt!92 (choose!4 x!109))))

(assert (=> d!79 (= (__ieee754_rem_pio2!0 x!109) lt!92)))

(declare-fun bs!25 () Bool)

(assert (= bs!25 d!79))

(declare-fun m!85 () Bool)

(assert (=> bs!25 m!85))

(assert (=> b!86 d!79))

(check-sat (not d!79) (not b!92))
(check-sat)
(get-model)

(declare-fun d!81 () Bool)

(declare-fun res!304 () tuple3!14)

(assert (=> d!81 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!7 res!304)) (bvslt (_1!7 res!304) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!7 res!304)) (fp.leq (_2!7 res!304) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!7 res!304)) (fp.leq (_3!7 res!304) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!81 true))

(assert (=> d!81 (= (choose!4 x!109) res!304)))

(assert (=> d!79 d!81))

(declare-fun d!83 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!83 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!26 () Bool)

(assert (= bs!26 d!83))

(declare-fun m!87 () Bool)

(assert (=> bs!26 m!87))

(assert (=> b!92 d!83))

(check-sat (not d!83))
(check-sat)
(get-model)

(declare-fun d!85 () Bool)

(declare-fun toBinary!40 () (_ BitVec 64))

(assert (=> d!85 (= ((_ to_fp 11 53) toBinary!40) x!109)))

(assert (=> d!85 true))

(assert (=> d!85 (= (choose!8 x!109 x!109 false) toBinary!40)))

(assert (=> d!83 d!85))

(check-sat)
