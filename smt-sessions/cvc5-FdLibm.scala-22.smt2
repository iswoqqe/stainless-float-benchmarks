; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!221 () Bool)

(assert start!221)

(declare-fun res!388 () Bool)

(declare-fun e!173 () Bool)

(assert (=> start!221 (=> (not res!388) (not e!173))))

(declare-fun lt!218 () (_ BitVec 32))

(assert (=> start!221 (= res!388 (and (bvsgt lt!218 #b00111111111010010010000111111011) (bvslt lt!218 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!221 (= lt!218 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!221 e!173))

(assert (=> start!221 true))

(declare-fun b!212 () Bool)

(declare-fun lt!216 () (_ BitVec 32))

(declare-datatypes ((tuple3!28 0))(
  ( (tuple3!29 (_1!14 (_ BitVec 32)) (_2!14 (_ FloatingPoint 11 53)) (_3!14 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!217 () tuple3!28)

(assert (=> b!212 (= e!173 (and (not (= lt!216 #b00000000000000000000000000000000)) (= lt!216 #b00000000000000000000000000000001) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!14 lt!217))) (not (fp.leq (_2!14 lt!217) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(assert (=> b!212 (= lt!216 (bvand (_1!14 lt!217) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!28)

(assert (=> b!212 (= lt!217 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!221 res!388) b!212))

(declare-fun m!195 () Bool)

(assert (=> start!221 m!195))

(declare-fun m!197 () Bool)

(assert (=> b!212 m!197))

(push 1)

(assert (not start!221))

(assert (not b!212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!200 () Bool)

(declare-fun c!98 () Bool)

(assert (=> d!200 (= c!98 (fp.isNaN x!86))))

(declare-fun e!176 () (_ BitVec 64))

(assert (=> d!200 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!176 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!217 () Bool)

(assert (=> b!217 (= e!176 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!218 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!218 (= e!176 (choose!3 x!86 x!86 false))))

(assert (= (and d!200 c!98) b!217))

(assert (= (and d!200 (not c!98)) b!218))

(declare-fun m!199 () Bool)

(assert (=> b!218 m!199))

(assert (=> start!221 d!200))

(declare-fun d!202 () Bool)

(declare-fun lt!221 () tuple3!28)

(assert (=> d!202 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!14 lt!221)) (bvslt (_1!14 lt!221) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!14 lt!221)) (fp.leq (_2!14 lt!221) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!14 lt!221)) (fp.leq (_3!14 lt!221) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!28)

(assert (=> d!202 (= lt!221 (choose!4 x!86))))

(assert (=> d!202 (= (__ieee754_rem_pio2!0 x!86) lt!221)))

(declare-fun bs!60 () Bool)

(assert (= bs!60 d!202))

(declare-fun m!201 () Bool)

(assert (=> bs!60 m!201))

(assert (=> b!212 d!202))

(push 1)

(assert (not d!202))

(assert (not b!218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!204 () Bool)

(declare-fun res!391 () tuple3!28)

(assert (=> d!204 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!14 res!391)) (bvslt (_1!14 res!391) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!14 res!391)) (fp.leq (_2!14 res!391) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!14 res!391)) (fp.leq (_3!14 res!391) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!204 true))

(assert (=> d!204 (= (choose!4 x!86) res!391)))

(assert (=> d!202 d!204))

(declare-fun d!206 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!206 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!61 () Bool)

(assert (= bs!61 d!206))

(declare-fun m!203 () Bool)

(assert (=> bs!61 m!203))

(assert (=> b!218 d!206))

(push 1)

(assert (not d!206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!208 () Bool)

(declare-fun toBinary!64 () (_ BitVec 64))

(assert (=> d!208 (= ((_ to_fp 11 53) toBinary!64) x!86)))

(assert (=> d!208 true))

(assert (=> d!208 (= (choose!8 x!86 x!86 false) toBinary!64)))

(assert (=> d!206 d!208))

(push 1)

(check-sat)

(pop 1)

