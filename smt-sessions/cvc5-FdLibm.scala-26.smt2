; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!269 () Bool)

(assert start!269)

(declare-fun res!412 () Bool)

(declare-fun e!197 () Bool)

(assert (=> start!269 (=> (not res!412) (not e!197))))

(declare-fun lt!265 () (_ BitVec 32))

(assert (=> start!269 (= res!412 (and (bvsgt lt!265 #b00111111111010010010000111111011) (bvslt lt!265 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!269 (= lt!265 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!269 e!197))

(assert (=> start!269 true))

(declare-fun b!248 () Bool)

(declare-fun lt!266 () (_ BitVec 32))

(declare-datatypes ((tuple3!36 0))(
  ( (tuple3!37 (_1!18 (_ BitVec 32)) (_2!18 (_ FloatingPoint 11 53)) (_3!18 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!264 () tuple3!36)

(assert (=> b!248 (= e!197 (and (not (= lt!266 #b00000000000000000000000000000000)) (not (= lt!266 #b00000000000000000000000000000001)) (not (= lt!266 #b00000000000000000000000000000010)) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!18 lt!264))) (not (fp.leq (_2!18 lt!264) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(assert (=> b!248 (= lt!266 (bvand (_1!18 lt!264) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!36)

(assert (=> b!248 (= lt!264 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!269 res!412) b!248))

(declare-fun m!235 () Bool)

(assert (=> start!269 m!235))

(declare-fun m!237 () Bool)

(assert (=> b!248 m!237))

(push 1)

(assert (not start!269))

(assert (not b!248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!244 () Bool)

(declare-fun c!110 () Bool)

(assert (=> d!244 (= c!110 (fp.isNaN x!86))))

(declare-fun e!200 () (_ BitVec 64))

(assert (=> d!244 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!200 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!253 () Bool)

(assert (=> b!253 (= e!200 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!254 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!254 (= e!200 (choose!3 x!86 x!86 false))))

(assert (= (and d!244 c!110) b!253))

(assert (= (and d!244 (not c!110)) b!254))

(declare-fun m!239 () Bool)

(assert (=> b!254 m!239))

(assert (=> start!269 d!244))

(declare-fun d!246 () Bool)

(declare-fun lt!269 () tuple3!36)

(assert (=> d!246 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!18 lt!269)) (bvslt (_1!18 lt!269) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!18 lt!269)) (fp.leq (_2!18 lt!269) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!18 lt!269)) (fp.leq (_3!18 lt!269) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!36)

(assert (=> d!246 (= lt!269 (choose!4 x!86))))

(assert (=> d!246 (= (__ieee754_rem_pio2!0 x!86) lt!269)))

(declare-fun bs!72 () Bool)

(assert (= bs!72 d!246))

(declare-fun m!241 () Bool)

(assert (=> bs!72 m!241))

(assert (=> b!248 d!246))

(push 1)

(assert (not d!246))

(assert (not b!254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!248 () Bool)

(declare-fun res!415 () tuple3!36)

(assert (=> d!248 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!18 res!415)) (bvslt (_1!18 res!415) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!18 res!415)) (fp.leq (_2!18 res!415) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!18 res!415)) (fp.leq (_3!18 res!415) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!248 true))

(assert (=> d!248 (= (choose!4 x!86) res!415)))

(assert (=> d!246 d!248))

(declare-fun d!250 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!250 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!73 () Bool)

(assert (= bs!73 d!250))

(declare-fun m!243 () Bool)

(assert (=> bs!73 m!243))

(assert (=> b!254 d!250))

(push 1)

(assert (not d!250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!252 () Bool)

(declare-fun toBinary!76 () (_ BitVec 64))

(assert (=> d!252 (= ((_ to_fp 11 53) toBinary!76) x!86)))

(assert (=> d!252 true))

(assert (=> d!252 (= (choose!8 x!86 x!86 false) toBinary!76)))

(assert (=> d!250 d!252))

(push 1)

(check-sat)

(pop 1)

