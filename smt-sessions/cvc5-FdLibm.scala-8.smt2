; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!83 () Bool)

(assert start!83)

(declare-fun res!295 () Bool)

(declare-fun e!77 () Bool)

(assert (=> start!83 (=> (not res!295) (not e!77))))

(declare-fun lt!76 () (_ BitVec 32))

(assert (=> start!83 (= res!295 (and (bvsgt lt!76 #b00111111111010010010000111111011) (bvslt lt!76 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!83 (= lt!76 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!83 e!77))

(assert (=> start!83 true))

(declare-fun b!77 () Bool)

(declare-fun lt!77 () (_ BitVec 32))

(declare-datatypes ((tuple3!12 0))(
  ( (tuple3!13 (_1!6 (_ BitVec 32)) (_2!6 (_ FloatingPoint 11 53)) (_3!6 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!75 () tuple3!12)

(assert (=> b!77 (= e!77 (and (not (= lt!77 #b00000000000000000000000000000000)) (not (= lt!77 #b00000000000000000000000000000001)) (not (= lt!77 #b00000000000000000000000000000010)) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!6 lt!75))) (not (fp.leq (_2!6 lt!75) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(assert (=> b!77 (= lt!77 (bvand (_1!6 lt!75) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!12)

(assert (=> b!77 (= lt!75 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!83 res!295) b!77))

(declare-fun m!69 () Bool)

(assert (=> start!83 m!69))

(declare-fun m!71 () Bool)

(assert (=> b!77 m!71))

(push 1)

(assert (not b!77))

(assert (not start!83))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76 () Bool)

(declare-fun lt!80 () tuple3!12)

(assert (=> d!76 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!6 lt!80)) (bvslt (_1!6 lt!80) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!6 lt!80)) (fp.leq (_2!6 lt!80) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!6 lt!80)) (fp.leq (_3!6 lt!80) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!12)

(assert (=> d!76 (= lt!80 (choose!4 x!109))))

(assert (=> d!76 (= (__ieee754_rem_pio2!0 x!109) lt!80)))

(declare-fun bs!22 () Bool)

(assert (= bs!22 d!76))

(declare-fun m!73 () Bool)

(assert (=> bs!22 m!73))

(assert (=> b!77 d!76))

(declare-fun d!78 () Bool)

(declare-fun c!59 () Bool)

(assert (=> d!78 (= c!59 (fp.isNaN x!109))))

(declare-fun e!80 () (_ BitVec 64))

(assert (=> d!78 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!80 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!82 () Bool)

(assert (=> b!82 (= e!80 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!83 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!83 (= e!80 (choose!3 x!109 x!109 false))))

(assert (= (and d!78 c!59) b!82))

(assert (= (and d!78 (not c!59)) b!83))

(declare-fun m!75 () Bool)

(assert (=> b!83 m!75))

(assert (=> start!83 d!78))

(push 1)

(assert (not b!83))

(assert (not d!76))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!80 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!23 () Bool)

(assert (= bs!23 d!80))

(declare-fun m!77 () Bool)

(assert (=> bs!23 m!77))

(assert (=> b!83 d!80))

(declare-fun d!82 () Bool)

(declare-fun res!298 () tuple3!12)

(assert (=> d!82 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!6 res!298)) (bvslt (_1!6 res!298) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!6 res!298)) (fp.leq (_2!6 res!298) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!6 res!298)) (fp.leq (_3!6 res!298) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!82 true))

(assert (=> d!82 (= (choose!4 x!109) res!298)))

(assert (=> d!76 d!82))

(push 1)

(assert (not d!80))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84 () Bool)

(declare-fun toBinary!37 () (_ BitVec 64))

(assert (=> d!84 (= ((_ to_fp 11 53) toBinary!37) x!109)))

(assert (=> d!84 true))

(assert (=> d!84 (= (choose!8 x!109 x!109 false) toBinary!37)))

(assert (=> d!80 d!84))

(push 1)

(check-sat)

(pop 1)

