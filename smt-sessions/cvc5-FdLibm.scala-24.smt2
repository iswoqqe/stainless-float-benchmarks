; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!245 () Bool)

(assert start!245)

(declare-fun res!400 () Bool)

(declare-fun e!185 () Bool)

(assert (=> start!245 (=> (not res!400) (not e!185))))

(declare-fun lt!242 () (_ BitVec 32))

(assert (=> start!245 (= res!400 (and (bvsgt lt!242 #b00111111111010010010000111111011) (bvslt lt!242 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!245 (= lt!242 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!245 e!185))

(assert (=> start!245 true))

(declare-fun b!230 () Bool)

(declare-fun lt!240 () (_ BitVec 32))

(declare-datatypes ((tuple3!32 0))(
  ( (tuple3!33 (_1!16 (_ BitVec 32)) (_2!16 (_ FloatingPoint 11 53)) (_3!16 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!241 () tuple3!32)

(assert (=> b!230 (= e!185 (and (not (= lt!240 #b00000000000000000000000000000000)) (not (= lt!240 #b00000000000000000000000000000001)) (= lt!240 #b00000000000000000000000000000010) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!16 lt!241))) (not (fp.leq (_2!16 lt!241) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(assert (=> b!230 (= lt!240 (bvand (_1!16 lt!241) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!32)

(assert (=> b!230 (= lt!241 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!245 res!400) b!230))

(declare-fun m!215 () Bool)

(assert (=> start!245 m!215))

(declare-fun m!217 () Bool)

(assert (=> b!230 m!217))

(push 1)

(assert (not b!230))

(assert (not start!245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!222 () Bool)

(declare-fun lt!245 () tuple3!32)

(assert (=> d!222 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!16 lt!245)) (bvslt (_1!16 lt!245) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!16 lt!245)) (fp.leq (_2!16 lt!245) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!16 lt!245)) (fp.leq (_3!16 lt!245) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!32)

(assert (=> d!222 (= lt!245 (choose!4 x!86))))

(assert (=> d!222 (= (__ieee754_rem_pio2!0 x!86) lt!245)))

(declare-fun bs!66 () Bool)

(assert (= bs!66 d!222))

(declare-fun m!219 () Bool)

(assert (=> bs!66 m!219))

(assert (=> b!230 d!222))

(declare-fun d!224 () Bool)

(declare-fun c!104 () Bool)

(assert (=> d!224 (= c!104 (fp.isNaN x!86))))

(declare-fun e!188 () (_ BitVec 64))

(assert (=> d!224 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!188 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!235 () Bool)

(assert (=> b!235 (= e!188 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!236 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!236 (= e!188 (choose!3 x!86 x!86 false))))

(assert (= (and d!224 c!104) b!235))

(assert (= (and d!224 (not c!104)) b!236))

(declare-fun m!221 () Bool)

(assert (=> b!236 m!221))

(assert (=> start!245 d!224))

(push 1)

(assert (not b!236))

(assert (not d!222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!226 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!226 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!67 () Bool)

(assert (= bs!67 d!226))

(declare-fun m!223 () Bool)

(assert (=> bs!67 m!223))

(assert (=> b!236 d!226))

(declare-fun d!228 () Bool)

(declare-fun res!403 () tuple3!32)

(assert (=> d!228 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!16 res!403)) (bvslt (_1!16 res!403) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!16 res!403)) (fp.leq (_2!16 res!403) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!16 res!403)) (fp.leq (_3!16 res!403) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!228 true))

(assert (=> d!228 (= (choose!4 x!86) res!403)))

(assert (=> d!222 d!228))

(push 1)

(assert (not d!226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!230 () Bool)

(declare-fun toBinary!70 () (_ BitVec 64))

(assert (=> d!230 (= ((_ to_fp 11 53) toBinary!70) x!86)))

(assert (=> d!230 true))

(assert (=> d!230 (= (choose!8 x!86 x!86 false) toBinary!70)))

(assert (=> d!226 d!230))

(push 1)

(check-sat)

(pop 1)

