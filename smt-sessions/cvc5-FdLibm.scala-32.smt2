; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!345 () Bool)

(assert start!345)

(declare-fun res!459 () Bool)

(declare-fun e!244 () Bool)

(assert (=> start!345 (=> (not res!459) (not e!244))))

(declare-fun lt!341 () (_ BitVec 32))

(assert (=> start!345 (= res!459 (and (bvsgt lt!341 #b00111111111010010010000111111011) (bvslt lt!341 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!345 (= lt!341 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!345 e!244))

(assert (=> start!345 true))

(declare-fun b!316 () Bool)

(declare-fun e!245 () Bool)

(assert (=> b!316 (= e!244 e!245)))

(declare-fun res!460 () Bool)

(assert (=> b!316 (=> (not res!460) (not e!245))))

(declare-fun lt!339 () (_ BitVec 32))

(assert (=> b!316 (= res!460 (and (not (= lt!339 #b00000000000000000000000000000000)) (not (= lt!339 #b00000000000000000000000000000001)) (= lt!339 #b00000000000000000000000000000010)))))

(declare-datatypes ((tuple3!44 0))(
  ( (tuple3!45 (_1!22 (_ BitVec 32)) (_2!22 (_ FloatingPoint 11 53)) (_3!22 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!340 () tuple3!44)

(assert (=> b!316 (= lt!339 (bvand (_1!22 lt!340) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!44)

(assert (=> b!316 (= lt!340 (__ieee754_rem_pio2!0 x!86))))

(declare-fun b!317 () Bool)

(declare-fun lt!338 () (_ FloatingPoint 11 53))

(assert (=> b!317 (= e!245 (or (not (= (or (fp.isInfinite x!86) (fp.isNaN x!86)) (fp.isNaN lt!338))) (and (= x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!338 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (= x!86 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!338 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!338)) (not (fp.leq lt!338 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!338)))))))

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!317 (= lt!338 (fp.neg (__kernel_sin!0 (_2!22 lt!340) (_3!22 lt!340) #b00000000000000000000000000000001)))))

(assert (= (and start!345 res!459) b!316))

(assert (= (and b!316 res!460) b!317))

(declare-fun m!299 () Bool)

(assert (=> start!345 m!299))

(declare-fun m!301 () Bool)

(assert (=> b!316 m!301))

(declare-fun m!303 () Bool)

(assert (=> b!317 m!303))

(push 1)

(assert (not b!317))

(assert (not b!316))

(assert (not start!345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!314 () Bool)

(declare-fun lt!344 () (_ FloatingPoint 11 53))

(assert (=> d!314 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!344) (fp.leq lt!344 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!314 (= lt!344 (choose!9 (_2!22 lt!340) (_3!22 lt!340) #b00000000000000000000000000000001))))

(assert (=> d!314 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!22 lt!340)) (fp.leq (_2!22 lt!340) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!314 (= (__kernel_sin!0 (_2!22 lt!340) (_3!22 lt!340) #b00000000000000000000000000000001) lt!344)))

(declare-fun bs!92 () Bool)

(assert (= bs!92 d!314))

(declare-fun m!305 () Bool)

(assert (=> bs!92 m!305))

(assert (=> b!317 d!314))

(declare-fun d!316 () Bool)

(declare-fun lt!347 () tuple3!44)

(assert (=> d!316 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!22 lt!347)) (bvslt (_1!22 lt!347) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!22 lt!347)) (fp.leq (_2!22 lt!347) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!22 lt!347)) (fp.leq (_3!22 lt!347) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!44)

(assert (=> d!316 (= lt!347 (choose!4 x!86))))

(assert (=> d!316 (= (__ieee754_rem_pio2!0 x!86) lt!347)))

(declare-fun bs!93 () Bool)

(assert (= bs!93 d!316))

(declare-fun m!307 () Bool)

(assert (=> bs!93 m!307))

(assert (=> b!316 d!316))

(declare-fun d!318 () Bool)

(declare-fun c!131 () Bool)

(assert (=> d!318 (= c!131 (fp.isNaN x!86))))

(declare-fun e!248 () (_ BitVec 64))

(assert (=> d!318 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!248 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!322 () Bool)

(assert (=> b!322 (= e!248 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!323 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!323 (= e!248 (choose!3 x!86 x!86 false))))

(assert (= (and d!318 c!131) b!322))

(assert (= (and d!318 (not c!131)) b!323))

(declare-fun m!309 () Bool)

(assert (=> b!323 m!309))

(assert (=> start!345 d!318))

(push 1)

(assert (not d!316))

(assert (not b!323))

(assert (not d!314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!320 () Bool)

(declare-fun res!463 () tuple3!44)

(assert (=> d!320 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!22 res!463)) (bvslt (_1!22 res!463) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!22 res!463)) (fp.leq (_2!22 res!463) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!22 res!463)) (fp.leq (_3!22 res!463) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!320 true))

(assert (=> d!320 (= (choose!4 x!86) res!463)))

(assert (=> d!316 d!320))

(declare-fun d!322 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!322 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!94 () Bool)

(assert (= bs!94 d!322))

(declare-fun m!311 () Bool)

(assert (=> bs!94 m!311))

(assert (=> b!323 d!322))

(declare-fun d!324 () Bool)

(declare-fun res!466 () (_ FloatingPoint 11 53))

(assert (=> d!324 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!466) (fp.leq res!466 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!324 true))

(assert (=> d!324 (= (choose!9 (_2!22 lt!340) (_3!22 lt!340) #b00000000000000000000000000000001) res!466)))

(assert (=> d!314 d!324))

(push 1)

(assert (not d!322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!326 () Bool)

(declare-fun toBinary!94 () (_ BitVec 64))

(assert (=> d!326 (= ((_ to_fp 11 53) toBinary!94) x!86)))

(assert (=> d!326 true))

(assert (=> d!326 (= (choose!8 x!86 x!86 false) toBinary!94)))

(assert (=> d!322 d!326))

(push 1)

(check-sat)

(pop 1)

