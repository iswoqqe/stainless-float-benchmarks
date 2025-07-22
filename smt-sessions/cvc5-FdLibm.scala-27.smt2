; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!281 () Bool)

(assert start!281)

(declare-fun res!418 () Bool)

(declare-fun e!203 () Bool)

(assert (=> start!281 (=> (not res!418) (not e!203))))

(declare-fun lt!277 () (_ BitVec 32))

(assert (=> start!281 (= res!418 (and (bvsgt lt!277 #b00111111111010010010000111111011) (bvslt lt!277 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!281 (= lt!277 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!281 e!203))

(assert (=> start!281 true))

(declare-fun b!257 () Bool)

(declare-fun lt!278 () (_ BitVec 32))

(declare-datatypes ((tuple3!38 0))(
  ( (tuple3!39 (_1!19 (_ BitVec 32)) (_2!19 (_ FloatingPoint 11 53)) (_3!19 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!276 () tuple3!38)

(assert (=> b!257 (= e!203 (and (not (= lt!278 #b00000000000000000000000000000000)) (not (= lt!278 #b00000000000000000000000000000001)) (not (= lt!278 #b00000000000000000000000000000010)) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!19 lt!276)) (fp.leq (_2!19 lt!276) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!19 lt!276))) (not (fp.leq (_3!19 lt!276) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!257 (= lt!278 (bvand (_1!19 lt!276) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!38)

(assert (=> b!257 (= lt!276 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!281 res!418) b!257))

(declare-fun m!245 () Bool)

(assert (=> start!281 m!245))

(declare-fun m!247 () Bool)

(assert (=> b!257 m!247))

(push 1)

(assert (not b!257))

(assert (not start!281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!255 () Bool)

(declare-fun lt!281 () tuple3!38)

(assert (=> d!255 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!19 lt!281)) (bvslt (_1!19 lt!281) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!19 lt!281)) (fp.leq (_2!19 lt!281) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!19 lt!281)) (fp.leq (_3!19 lt!281) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!38)

(assert (=> d!255 (= lt!281 (choose!4 x!86))))

(assert (=> d!255 (= (__ieee754_rem_pio2!0 x!86) lt!281)))

(declare-fun bs!75 () Bool)

(assert (= bs!75 d!255))

(declare-fun m!249 () Bool)

(assert (=> bs!75 m!249))

(assert (=> b!257 d!255))

(declare-fun d!257 () Bool)

(declare-fun c!113 () Bool)

(assert (=> d!257 (= c!113 (fp.isNaN x!86))))

(declare-fun e!206 () (_ BitVec 64))

(assert (=> d!257 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!206 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!262 () Bool)

(assert (=> b!262 (= e!206 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!263 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!263 (= e!206 (choose!3 x!86 x!86 false))))

(assert (= (and d!257 c!113) b!262))

(assert (= (and d!257 (not c!113)) b!263))

(declare-fun m!251 () Bool)

(assert (=> b!263 m!251))

(assert (=> start!281 d!257))

(push 1)

(assert (not b!263))

(assert (not d!255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!259 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!259 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!76 () Bool)

(assert (= bs!76 d!259))

(declare-fun m!253 () Bool)

(assert (=> bs!76 m!253))

(assert (=> b!263 d!259))

(declare-fun d!261 () Bool)

(declare-fun res!421 () tuple3!38)

(assert (=> d!261 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!19 res!421)) (bvslt (_1!19 res!421) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!19 res!421)) (fp.leq (_2!19 res!421) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!19 res!421)) (fp.leq (_3!19 res!421) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!261 true))

(assert (=> d!261 (= (choose!4 x!86) res!421)))

(assert (=> d!255 d!261))

(push 1)

(assert (not d!259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!263 () Bool)

(declare-fun toBinary!79 () (_ BitVec 64))

(assert (=> d!263 (= ((_ to_fp 11 53) toBinary!79) x!86)))

(assert (=> d!263 true))

(assert (=> d!263 (= (choose!8 x!86 x!86 false) toBinary!79)))

(assert (=> d!259 d!263))

(push 1)

(check-sat)

(pop 1)

