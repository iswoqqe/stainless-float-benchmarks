; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11 () Bool)

(assert start!11)

(declare-fun res!259 () Bool)

(declare-fun e!41 () Bool)

(assert (=> start!11 (=> (not res!259) (not e!41))))

(declare-fun lt!7 () (_ BitVec 32))

(assert (=> start!11 (= res!259 (and (bvsgt lt!7 #b00111111111010010010000111111011) (bvslt lt!7 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!11 (= lt!7 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!11 e!41))

(assert (=> start!11 true))

(declare-fun b!23 () Bool)

(declare-datatypes ((tuple3!0 0))(
  ( (tuple3!1 (_1!0 (_ BitVec 32)) (_2!0 (_ FloatingPoint 11 53)) (_3!0 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8 () tuple3!0)

(assert (=> b!23 (= e!41 (and (= (bvand (_1!0 lt!8) #b00000000000000000000000000000011) #b00000000000000000000000000000000) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!0 lt!8))) (not (fp.leq (_2!0 lt!8) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!0)

(assert (=> b!23 (= lt!8 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!11 res!259) b!23))

(declare-fun m!9 () Bool)

(assert (=> start!11 m!9))

(declare-fun m!11 () Bool)

(assert (=> b!23 m!11))

(check-sat (not start!11) (not b!23))
(check-sat)
(get-model)

(declare-fun d!7 () Bool)

(declare-fun c!41 () Bool)

(assert (=> d!7 (= c!41 (fp.isNaN x!109))))

(declare-fun e!44 () (_ BitVec 64))

(assert (=> d!7 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!44 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!28 () Bool)

(assert (=> b!28 (= e!44 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!29 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!29 (= e!44 (choose!3 x!109 x!109 false))))

(assert (= (and d!7 c!41) b!28))

(assert (= (and d!7 (not c!41)) b!29))

(declare-fun m!13 () Bool)

(assert (=> b!29 m!13))

(assert (=> start!11 d!7))

(declare-fun d!9 () Bool)

(declare-fun lt!11 () tuple3!0)

(assert (=> d!9 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!0 lt!11)) (bvslt (_1!0 lt!11) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!0 lt!11)) (fp.leq (_2!0 lt!11) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!0 lt!11)) (fp.leq (_3!0 lt!11) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!0)

(assert (=> d!9 (= lt!11 (choose!4 x!109))))

(assert (=> d!9 (= (__ieee754_rem_pio2!0 x!109) lt!11)))

(declare-fun bs!4 () Bool)

(assert (= bs!4 d!9))

(declare-fun m!15 () Bool)

(assert (=> bs!4 m!15))

(assert (=> b!23 d!9))

(check-sat (not b!29) (not d!9))
(check-sat)
(get-model)

(declare-fun d!11 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!11 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!5 () Bool)

(assert (= bs!5 d!11))

(declare-fun m!17 () Bool)

(assert (=> bs!5 m!17))

(assert (=> b!29 d!11))

(declare-fun d!13 () Bool)

(declare-fun res!262 () tuple3!0)

(assert (=> d!13 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!0 res!262)) (bvslt (_1!0 res!262) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!0 res!262)) (fp.leq (_2!0 res!262) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!0 res!262)) (fp.leq (_3!0 res!262) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!13 true))

(assert (=> d!13 (= (choose!4 x!109) res!262)))

(assert (=> d!9 d!13))

(check-sat (not d!11))
(check-sat)
(get-model)

(declare-fun d!15 () Bool)

(declare-fun toBinary!19 () (_ BitVec 64))

(assert (=> d!15 (= ((_ to_fp 11 53) toBinary!19) x!109)))

(assert (=> d!15 true))

(assert (=> d!15 (= (choose!8 x!109 x!109 false) toBinary!19)))

(assert (=> d!11 d!15))

(check-sat)
