; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!361 () Bool)

(assert start!361)

(declare-fun res!471 () Bool)

(declare-fun e!254 () Bool)

(assert (=> start!361 (=> (not res!471) (not e!254))))

(declare-fun lt!359 () (_ BitVec 32))

(assert (=> start!361 (= res!471 (and (bvsgt lt!359 #b00111111111010010010000111111011) (bvslt lt!359 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!361 (= lt!359 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!361 e!254))

(assert (=> start!361 true))

(declare-fun b!328 () Bool)

(declare-fun e!253 () Bool)

(assert (=> b!328 (= e!254 e!253)))

(declare-fun res!472 () Bool)

(assert (=> b!328 (=> (not res!472) (not e!253))))

(declare-fun lt!358 () (_ BitVec 32))

(assert (=> b!328 (= res!472 (and (not (= lt!358 #b00000000000000000000000000000000)) (not (= lt!358 #b00000000000000000000000000000001)) (not (= lt!358 #b00000000000000000000000000000010))))))

(declare-datatypes ((tuple3!46 0))(
  ( (tuple3!47 (_1!23 (_ BitVec 32)) (_2!23 (_ FloatingPoint 11 53)) (_3!23 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!357 () tuple3!46)

(assert (=> b!328 (= lt!358 (bvand (_1!23 lt!357) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!46)

(assert (=> b!328 (= lt!357 (__ieee754_rem_pio2!0 x!86))))

(declare-fun b!329 () Bool)

(declare-fun lt!356 () (_ FloatingPoint 11 53))

(assert (=> b!329 (= e!253 (or (not (= (or (fp.isInfinite x!86) (fp.isNaN x!86)) (fp.isNaN lt!356))) (and (= x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!356 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (= x!86 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!356 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!356)) (not (fp.leq lt!356 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!356)))))))

(declare-fun __kernel_cos!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!329 (= lt!356 (fp.neg (__kernel_cos!0 (_2!23 lt!357) (_3!23 lt!357))))))

(assert (= (and start!361 res!471) b!328))

(assert (= (and b!328 res!472) b!329))

(declare-fun m!313 () Bool)

(assert (=> start!361 m!313))

(declare-fun m!315 () Bool)

(assert (=> b!328 m!315))

(declare-fun m!317 () Bool)

(assert (=> b!329 m!317))

(push 1)

(assert (not start!361))

(assert (not b!329))

(assert (not b!328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!329 () Bool)

(declare-fun c!134 () Bool)

(assert (=> d!329 (= c!134 (fp.isNaN x!86))))

(declare-fun e!257 () (_ BitVec 64))

(assert (=> d!329 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!257 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!334 () Bool)

(assert (=> b!334 (= e!257 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!335 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!335 (= e!257 (choose!3 x!86 x!86 false))))

(assert (= (and d!329 c!134) b!334))

(assert (= (and d!329 (not c!134)) b!335))

(declare-fun m!319 () Bool)

(assert (=> b!335 m!319))

(assert (=> start!361 d!329))

(declare-fun d!331 () Bool)

(declare-fun lt!362 () (_ FloatingPoint 11 53))

(assert (=> d!331 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!362) (fp.leq lt!362 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!5 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!331 (= lt!362 (choose!5 (_2!23 lt!357) (_3!23 lt!357)))))

(assert (=> d!331 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!23 lt!357)) (fp.leq (_2!23 lt!357) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!331 (= (__kernel_cos!0 (_2!23 lt!357) (_3!23 lt!357)) lt!362)))

(declare-fun bs!96 () Bool)

(assert (= bs!96 d!331))

(declare-fun m!321 () Bool)

(assert (=> bs!96 m!321))

(assert (=> b!329 d!331))

(declare-fun d!333 () Bool)

(declare-fun lt!365 () tuple3!46)

(assert (=> d!333 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!23 lt!365)) (bvslt (_1!23 lt!365) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!23 lt!365)) (fp.leq (_2!23 lt!365) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!23 lt!365)) (fp.leq (_3!23 lt!365) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!46)

(assert (=> d!333 (= lt!365 (choose!4 x!86))))

(assert (=> d!333 (= (__ieee754_rem_pio2!0 x!86) lt!365)))

(declare-fun bs!97 () Bool)

(assert (= bs!97 d!333))

(declare-fun m!323 () Bool)

(assert (=> bs!97 m!323))

(assert (=> b!328 d!333))

(push 1)

(assert (not d!333))

(assert (not b!335))

(assert (not d!331))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!335 () Bool)

(declare-fun res!475 () tuple3!46)

(assert (=> d!335 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!23 res!475)) (bvslt (_1!23 res!475) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!23 res!475)) (fp.leq (_2!23 res!475) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!23 res!475)) (fp.leq (_3!23 res!475) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!335 true))

(assert (=> d!335 (= (choose!4 x!86) res!475)))

(assert (=> d!333 d!335))

(declare-fun d!337 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!337 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!98 () Bool)

(assert (= bs!98 d!337))

(declare-fun m!325 () Bool)

(assert (=> bs!98 m!325))

(assert (=> b!335 d!337))

(declare-fun d!339 () Bool)

(declare-fun res!478 () (_ FloatingPoint 11 53))

(assert (=> d!339 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!478) (fp.leq res!478 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!339 true))

(assert (=> d!339 (= (choose!5 (_2!23 lt!357) (_3!23 lt!357)) res!478)))

(assert (=> d!331 d!339))

(push 1)

(assert (not d!337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!341 () Bool)

(declare-fun toBinary!97 () (_ BitVec 64))

(assert (=> d!341 (= ((_ to_fp 11 53) toBinary!97) x!86)))

(assert (=> d!341 true))

(assert (=> d!341 (= (choose!8 x!86 x!86 false) toBinary!97)))

(assert (=> d!337 d!341))

(push 1)

(check-sat)

(pop 1)

