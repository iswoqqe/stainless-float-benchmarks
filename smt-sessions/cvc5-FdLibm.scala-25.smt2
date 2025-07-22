; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!257 () Bool)

(assert start!257)

(declare-fun res!406 () Bool)

(declare-fun e!191 () Bool)

(assert (=> start!257 (=> (not res!406) (not e!191))))

(declare-fun lt!254 () (_ BitVec 32))

(assert (=> start!257 (= res!406 (and (bvsgt lt!254 #b00111111111010010010000111111011) (bvslt lt!254 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!257 (= lt!254 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!257 e!191))

(assert (=> start!257 true))

(declare-fun b!239 () Bool)

(declare-fun lt!252 () (_ BitVec 32))

(declare-datatypes ((tuple3!34 0))(
  ( (tuple3!35 (_1!17 (_ BitVec 32)) (_2!17 (_ FloatingPoint 11 53)) (_3!17 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!253 () tuple3!34)

(assert (=> b!239 (= e!191 (and (not (= lt!252 #b00000000000000000000000000000000)) (not (= lt!252 #b00000000000000000000000000000001)) (= lt!252 #b00000000000000000000000000000010) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!17 lt!253)) (fp.leq (_2!17 lt!253) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!17 lt!253))) (not (fp.leq (_3!17 lt!253) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!239 (= lt!252 (bvand (_1!17 lt!253) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!34)

(assert (=> b!239 (= lt!253 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!257 res!406) b!239))

(declare-fun m!225 () Bool)

(assert (=> start!257 m!225))

(declare-fun m!227 () Bool)

(assert (=> b!239 m!227))

(push 1)

(assert (not start!257))

(assert (not b!239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!233 () Bool)

(declare-fun c!107 () Bool)

(assert (=> d!233 (= c!107 (fp.isNaN x!86))))

(declare-fun e!194 () (_ BitVec 64))

(assert (=> d!233 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!194 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!244 () Bool)

(assert (=> b!244 (= e!194 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!245 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!245 (= e!194 (choose!3 x!86 x!86 false))))

(assert (= (and d!233 c!107) b!244))

(assert (= (and d!233 (not c!107)) b!245))

(declare-fun m!229 () Bool)

(assert (=> b!245 m!229))

(assert (=> start!257 d!233))

(declare-fun d!235 () Bool)

(declare-fun lt!257 () tuple3!34)

(assert (=> d!235 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!17 lt!257)) (bvslt (_1!17 lt!257) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!17 lt!257)) (fp.leq (_2!17 lt!257) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!17 lt!257)) (fp.leq (_3!17 lt!257) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!34)

(assert (=> d!235 (= lt!257 (choose!4 x!86))))

(assert (=> d!235 (= (__ieee754_rem_pio2!0 x!86) lt!257)))

(declare-fun bs!69 () Bool)

(assert (= bs!69 d!235))

(declare-fun m!231 () Bool)

(assert (=> bs!69 m!231))

(assert (=> b!239 d!235))

(push 1)

(assert (not d!235))

(assert (not b!245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!237 () Bool)

(declare-fun res!409 () tuple3!34)

(assert (=> d!237 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!17 res!409)) (bvslt (_1!17 res!409) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!17 res!409)) (fp.leq (_2!17 res!409) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!17 res!409)) (fp.leq (_3!17 res!409) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!237 true))

(assert (=> d!237 (= (choose!4 x!86) res!409)))

(assert (=> d!235 d!237))

(declare-fun d!239 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!239 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!70 () Bool)

(assert (= bs!70 d!239))

(declare-fun m!233 () Bool)

(assert (=> bs!70 m!233))

(assert (=> b!245 d!239))

(push 1)

(assert (not d!239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!241 () Bool)

(declare-fun toBinary!73 () (_ BitVec 64))

(assert (=> d!241 (= ((_ to_fp 11 53) toBinary!73) x!86)))

(assert (=> d!241 true))

(assert (=> d!241 (= (choose!8 x!86 x!86 false) toBinary!73)))

(assert (=> d!239 d!241))

(push 1)

(check-sat)

(pop 1)

