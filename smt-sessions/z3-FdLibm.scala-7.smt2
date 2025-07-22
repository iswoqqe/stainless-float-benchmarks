; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71 () Bool)

(assert start!71)

(declare-fun res!289 () Bool)

(declare-fun e!71 () Bool)

(assert (=> start!71 (=> (not res!289) (not e!71))))

(declare-fun lt!65 () (_ BitVec 32))

(assert (=> start!71 (= res!289 (and (bvsgt lt!65 #b00111111111010010010000111111011) (bvslt lt!65 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!71 (= lt!65 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!71 e!71))

(assert (=> start!71 true))

(declare-fun b!68 () Bool)

(declare-fun lt!63 () (_ BitVec 32))

(declare-datatypes ((tuple3!10 0))(
  ( (tuple3!11 (_1!5 (_ BitVec 32)) (_2!5 (_ FloatingPoint 11 53)) (_3!5 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!64 () tuple3!10)

(assert (=> b!68 (= e!71 (and (not (= lt!63 #b00000000000000000000000000000000)) (not (= lt!63 #b00000000000000000000000000000001)) (= lt!63 #b00000000000000000000000000000010) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!5 lt!64)) (fp.leq (_2!5 lt!64) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!5 lt!64))) (not (fp.leq (_3!5 lt!64) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!68 (= lt!63 (bvand (_1!5 lt!64) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!10)

(assert (=> b!68 (= lt!64 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!71 res!289) b!68))

(declare-fun m!59 () Bool)

(assert (=> start!71 m!59))

(declare-fun m!61 () Bool)

(assert (=> b!68 m!61))

(check-sat (not start!71) (not b!68))
(check-sat)
(get-model)

(declare-fun d!57 () Bool)

(declare-fun c!56 () Bool)

(assert (=> d!57 (= c!56 (fp.isNaN x!109))))

(declare-fun e!74 () (_ BitVec 64))

(assert (=> d!57 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!74 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!73 () Bool)

(assert (=> b!73 (= e!74 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!74 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!74 (= e!74 (choose!3 x!109 x!109 false))))

(assert (= (and d!57 c!56) b!73))

(assert (= (and d!57 (not c!56)) b!74))

(declare-fun m!63 () Bool)

(assert (=> b!74 m!63))

(assert (=> start!71 d!57))

(declare-fun d!59 () Bool)

(declare-fun lt!68 () tuple3!10)

(assert (=> d!59 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!5 lt!68)) (bvslt (_1!5 lt!68) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!5 lt!68)) (fp.leq (_2!5 lt!68) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!5 lt!68)) (fp.leq (_3!5 lt!68) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!10)

(assert (=> d!59 (= lt!68 (choose!4 x!109))))

(assert (=> d!59 (= (__ieee754_rem_pio2!0 x!109) lt!68)))

(declare-fun bs!19 () Bool)

(assert (= bs!19 d!59))

(declare-fun m!65 () Bool)

(assert (=> bs!19 m!65))

(assert (=> b!68 d!59))

(check-sat (not d!59) (not b!74))
(check-sat)
(get-model)

(declare-fun d!61 () Bool)

(declare-fun res!292 () tuple3!10)

(assert (=> d!61 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!5 res!292)) (bvslt (_1!5 res!292) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!5 res!292)) (fp.leq (_2!5 res!292) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!5 res!292)) (fp.leq (_3!5 res!292) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!61 true))

(assert (=> d!61 (= (choose!4 x!109) res!292)))

(assert (=> d!59 d!61))

(declare-fun d!63 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!63 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!20 () Bool)

(assert (= bs!20 d!63))

(declare-fun m!67 () Bool)

(assert (=> bs!20 m!67))

(assert (=> b!74 d!63))

(check-sat (not d!63))
(check-sat)
(get-model)

(declare-fun d!65 () Bool)

(declare-fun toBinary!34 () (_ BitVec 64))

(assert (=> d!65 (= ((_ to_fp 11 53) toBinary!34) x!109)))

(assert (=> d!65 true))

(assert (=> d!65 (= (choose!8 x!109 x!109 false) toBinary!34)))

(assert (=> d!63 d!65))

(check-sat)
