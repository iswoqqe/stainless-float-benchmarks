; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!329 () Bool)

(assert start!329)

(declare-fun res!447 () Bool)

(declare-fun e!236 () Bool)

(assert (=> start!329 (=> (not res!447) (not e!236))))

(declare-fun lt!322 () (_ BitVec 32))

(assert (=> start!329 (= res!447 (and (bvsgt lt!322 #b00111111111010010010000111111011) (bvslt lt!322 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!329 (= lt!322 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!329 e!236))

(assert (=> start!329 true))

(declare-fun b!304 () Bool)

(declare-fun e!235 () Bool)

(assert (=> b!304 (= e!236 e!235)))

(declare-fun res!448 () Bool)

(assert (=> b!304 (=> (not res!448) (not e!235))))

(declare-fun lt!320 () (_ BitVec 32))

(assert (=> b!304 (= res!448 (and (not (= lt!320 #b00000000000000000000000000000000)) (= lt!320 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple3!42 0))(
  ( (tuple3!43 (_1!21 (_ BitVec 32)) (_2!21 (_ FloatingPoint 11 53)) (_3!21 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!323 () tuple3!42)

(assert (=> b!304 (= lt!320 (bvand (_1!21 lt!323) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!42)

(assert (=> b!304 (= lt!323 (__ieee754_rem_pio2!0 x!86))))

(declare-fun b!305 () Bool)

(declare-fun lt!321 () (_ FloatingPoint 11 53))

(assert (=> b!305 (= e!235 (or (not (= (or (fp.isInfinite x!86) (fp.isNaN x!86)) (fp.isNaN lt!321))) (and (= x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!321 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (= x!86 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!321 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!321)) (not (fp.leq lt!321 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!321)))))))

(declare-fun __kernel_cos!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!305 (= lt!321 (__kernel_cos!0 (_2!21 lt!323) (_3!21 lt!323)))))

(assert (= (and start!329 res!447) b!304))

(assert (= (and b!304 res!448) b!305))

(declare-fun m!285 () Bool)

(assert (=> start!329 m!285))

(declare-fun m!287 () Bool)

(assert (=> b!304 m!287))

(declare-fun m!289 () Bool)

(assert (=> b!305 m!289))

(push 1)

(assert (not start!329))

(assert (not b!304))

(assert (not b!305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!299 () Bool)

(declare-fun c!128 () Bool)

(assert (=> d!299 (= c!128 (fp.isNaN x!86))))

(declare-fun e!239 () (_ BitVec 64))

(assert (=> d!299 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!239 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!310 () Bool)

(assert (=> b!310 (= e!239 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!311 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!311 (= e!239 (choose!3 x!86 x!86 false))))

(assert (= (and d!299 c!128) b!310))

(assert (= (and d!299 (not c!128)) b!311))

(declare-fun m!291 () Bool)

(assert (=> b!311 m!291))

(assert (=> start!329 d!299))

(declare-fun d!301 () Bool)

(declare-fun lt!326 () tuple3!42)

(assert (=> d!301 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!21 lt!326)) (bvslt (_1!21 lt!326) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!21 lt!326)) (fp.leq (_2!21 lt!326) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!21 lt!326)) (fp.leq (_3!21 lt!326) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!42)

(assert (=> d!301 (= lt!326 (choose!4 x!86))))

(assert (=> d!301 (= (__ieee754_rem_pio2!0 x!86) lt!326)))

(declare-fun bs!88 () Bool)

(assert (= bs!88 d!301))

(declare-fun m!293 () Bool)

(assert (=> bs!88 m!293))

(assert (=> b!304 d!301))

(declare-fun d!303 () Bool)

(declare-fun lt!329 () (_ FloatingPoint 11 53))

(assert (=> d!303 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!329) (fp.leq lt!329 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!5 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!303 (= lt!329 (choose!5 (_2!21 lt!323) (_3!21 lt!323)))))

(assert (=> d!303 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!21 lt!323)) (fp.leq (_2!21 lt!323) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!303 (= (__kernel_cos!0 (_2!21 lt!323) (_3!21 lt!323)) lt!329)))

(declare-fun bs!89 () Bool)

(assert (= bs!89 d!303))

(declare-fun m!295 () Bool)

(assert (=> bs!89 m!295))

(assert (=> b!305 d!303))

(push 1)

(assert (not d!301))

(assert (not d!303))

(assert (not b!311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305 () Bool)

(declare-fun res!451 () tuple3!42)

(assert (=> d!305 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!21 res!451)) (bvslt (_1!21 res!451) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!21 res!451)) (fp.leq (_2!21 res!451) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!21 res!451)) (fp.leq (_3!21 res!451) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!305 true))

(assert (=> d!305 (= (choose!4 x!86) res!451)))

(assert (=> d!301 d!305))

(declare-fun d!307 () Bool)

(declare-fun res!454 () (_ FloatingPoint 11 53))

(assert (=> d!307 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!454) (fp.leq res!454 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!307 true))

(assert (=> d!307 (= (choose!5 (_2!21 lt!323) (_3!21 lt!323)) res!454)))

(assert (=> d!303 d!307))

(declare-fun d!309 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!309 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!90 () Bool)

(assert (= bs!90 d!309))

(declare-fun m!297 () Bool)

(assert (=> bs!90 m!297))

(assert (=> b!311 d!309))

(push 1)

(assert (not d!309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311 () Bool)

(declare-fun toBinary!91 () (_ BitVec 64))

(assert (=> d!311 (= ((_ to_fp 11 53) toBinary!91) x!86)))

(assert (=> d!311 true))

(assert (=> d!311 (= (choose!8 x!86 x!86 false) toBinary!91)))

(assert (=> d!309 d!311))

(push 1)

(check-sat)

(pop 1)

