; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!197 () Bool)

(assert start!197)

(declare-fun res!376 () Bool)

(declare-fun e!161 () Bool)

(assert (=> start!197 (=> (not res!376) (not e!161))))

(declare-fun lt!196 () (_ BitVec 32))

(assert (=> start!197 (= res!376 (and (bvsgt lt!196 #b00111111111010010010000111111011) (bvslt lt!196 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!197 (= lt!196 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!197 e!161))

(assert (=> start!197 true))

(declare-fun b!194 () Bool)

(declare-datatypes ((tuple3!24 0))(
  ( (tuple3!25 (_1!12 (_ BitVec 32)) (_2!12 (_ FloatingPoint 11 53)) (_3!12 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!197 () tuple3!24)

(assert (=> b!194 (= e!161 (and (= (bvand (_1!12 lt!197) #b00000000000000000000000000000011) #b00000000000000000000000000000000) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!12 lt!197))) (not (fp.leq (_2!12 lt!197) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!24)

(assert (=> b!194 (= lt!197 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!197 res!376) b!194))

(declare-fun m!175 () Bool)

(assert (=> start!197 m!175))

(declare-fun m!177 () Bool)

(assert (=> b!194 m!177))

(push 1)

(assert (not start!197))

(assert (not b!194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!178 () Bool)

(declare-fun c!92 () Bool)

(assert (=> d!178 (= c!92 (fp.isNaN x!86))))

(declare-fun e!164 () (_ BitVec 64))

(assert (=> d!178 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!164 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!199 () Bool)

(assert (=> b!199 (= e!164 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!200 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!200 (= e!164 (choose!3 x!86 x!86 false))))

(assert (= (and d!178 c!92) b!199))

(assert (= (and d!178 (not c!92)) b!200))

(declare-fun m!179 () Bool)

(assert (=> b!200 m!179))

(assert (=> start!197 d!178))

(declare-fun d!180 () Bool)

(declare-fun lt!200 () tuple3!24)

(assert (=> d!180 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!12 lt!200)) (bvslt (_1!12 lt!200) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!12 lt!200)) (fp.leq (_2!12 lt!200) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!12 lt!200)) (fp.leq (_3!12 lt!200) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!24)

(assert (=> d!180 (= lt!200 (choose!4 x!86))))

(assert (=> d!180 (= (__ieee754_rem_pio2!0 x!86) lt!200)))

(declare-fun bs!54 () Bool)

(assert (= bs!54 d!180))

(declare-fun m!181 () Bool)

(assert (=> bs!54 m!181))

(assert (=> b!194 d!180))

(push 1)

(assert (not d!180))

(assert (not b!200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!182 () Bool)

(declare-fun res!379 () tuple3!24)

(assert (=> d!182 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!12 res!379)) (bvslt (_1!12 res!379) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!12 res!379)) (fp.leq (_2!12 res!379) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!12 res!379)) (fp.leq (_3!12 res!379) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!182 true))

(assert (=> d!182 (= (choose!4 x!86) res!379)))

(assert (=> d!180 d!182))

(declare-fun d!184 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!184 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!55 () Bool)

(assert (= bs!55 d!184))

(declare-fun m!183 () Bool)

(assert (=> bs!55 m!183))

(assert (=> b!200 d!184))

(push 1)

(assert (not d!184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!186 () Bool)

(declare-fun toBinary!58 () (_ BitVec 64))

(assert (=> d!186 (= ((_ to_fp 11 53) toBinary!58) x!86)))

(assert (=> d!186 true))

(assert (=> d!186 (= (choose!8 x!86 x!86 false) toBinary!58)))

(assert (=> d!184 d!186))

(push 1)

(check-sat)

(pop 1)

