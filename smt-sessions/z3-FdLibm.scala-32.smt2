; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345 () Bool)

(assert start!345)

(declare-fun res!460 () Bool)

(declare-fun e!245 () Bool)

(assert (=> start!345 (=> (not res!460) (not e!245))))

(declare-fun lt!339 () (_ BitVec 32))

(assert (=> start!345 (= res!460 (and (bvsgt lt!339 #b00111111111010010010000111111011) (bvslt lt!339 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!345 (= lt!339 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!345 e!245))

(assert (=> start!345 true))

(declare-fun b!316 () Bool)

(declare-fun e!244 () Bool)

(assert (=> b!316 (= e!245 e!244)))

(declare-fun res!459 () Bool)

(assert (=> b!316 (=> (not res!459) (not e!244))))

(declare-fun lt!338 () (_ BitVec 32))

(assert (=> b!316 (= res!459 (and (not (= lt!338 #b00000000000000000000000000000000)) (not (= lt!338 #b00000000000000000000000000000001)) (= lt!338 #b00000000000000000000000000000010)))))

(declare-datatypes ((tuple3!44 0))(
  ( (tuple3!45 (_1!22 (_ BitVec 32)) (_2!22 (_ FloatingPoint 11 53)) (_3!22 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!341 () tuple3!44)

(assert (=> b!316 (= lt!338 (bvand (_1!22 lt!341) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!44)

(assert (=> b!316 (= lt!341 (__ieee754_rem_pio2!0 x!86))))

(declare-fun b!317 () Bool)

(declare-fun lt!340 () (_ FloatingPoint 11 53))

(assert (=> b!317 (= e!244 (or (not (= (or (fp.isInfinite x!86) (fp.isNaN x!86)) (fp.isNaN lt!340))) (and (= x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!340 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (= x!86 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!340 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!340)) (not (fp.leq lt!340 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!340)))))))

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!317 (= lt!340 (fp.neg (__kernel_sin!0 (_2!22 lt!341) (_3!22 lt!341) #b00000000000000000000000000000001)))))

(assert (= (and start!345 res!460) b!316))

(assert (= (and b!316 res!459) b!317))

(declare-fun m!299 () Bool)

(assert (=> start!345 m!299))

(declare-fun m!301 () Bool)

(assert (=> b!316 m!301))

(declare-fun m!303 () Bool)

(assert (=> b!317 m!303))

(check-sat (not start!345) (not b!316) (not b!317))
(check-sat)
(get-model)

(declare-fun d!281 () Bool)

(declare-fun c!131 () Bool)

(assert (=> d!281 (= c!131 (fp.isNaN x!86))))

(declare-fun e!248 () (_ BitVec 64))

(assert (=> d!281 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!248 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!322 () Bool)

(assert (=> b!322 (= e!248 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!323 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!323 (= e!248 (choose!3 x!86 x!86 false))))

(assert (= (and d!281 c!131) b!322))

(assert (= (and d!281 (not c!131)) b!323))

(declare-fun m!305 () Bool)

(assert (=> b!323 m!305))

(assert (=> start!345 d!281))

(declare-fun d!283 () Bool)

(declare-fun lt!344 () tuple3!44)

(assert (=> d!283 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!22 lt!344)) (bvslt (_1!22 lt!344) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!22 lt!344)) (fp.leq (_2!22 lt!344) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!22 lt!344)) (fp.leq (_3!22 lt!344) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!44)

(assert (=> d!283 (= lt!344 (choose!4 x!86))))

(assert (=> d!283 (= (__ieee754_rem_pio2!0 x!86) lt!344)))

(declare-fun bs!92 () Bool)

(assert (= bs!92 d!283))

(declare-fun m!307 () Bool)

(assert (=> bs!92 m!307))

(assert (=> b!316 d!283))

(declare-fun d!285 () Bool)

(declare-fun lt!347 () (_ FloatingPoint 11 53))

(assert (=> d!285 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!347) (fp.leq lt!347 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!285 (= lt!347 (choose!9 (_2!22 lt!341) (_3!22 lt!341) #b00000000000000000000000000000001))))

(assert (=> d!285 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!22 lt!341)) (fp.leq (_2!22 lt!341) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!285 (= (__kernel_sin!0 (_2!22 lt!341) (_3!22 lt!341) #b00000000000000000000000000000001) lt!347)))

(declare-fun bs!93 () Bool)

(assert (= bs!93 d!285))

(declare-fun m!309 () Bool)

(assert (=> bs!93 m!309))

(assert (=> b!317 d!285))

(check-sat (not d!283) (not d!285) (not b!323))
(check-sat)
(get-model)

(declare-fun d!287 () Bool)

(declare-fun res!463 () tuple3!44)

(assert (=> d!287 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!22 res!463)) (bvslt (_1!22 res!463) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!22 res!463)) (fp.leq (_2!22 res!463) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!22 res!463)) (fp.leq (_3!22 res!463) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!287 true))

(assert (=> d!287 (= (choose!4 x!86) res!463)))

(assert (=> d!283 d!287))

(declare-fun d!289 () Bool)

(declare-fun res!466 () (_ FloatingPoint 11 53))

(assert (=> d!289 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!466) (fp.leq res!466 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!289 true))

(assert (=> d!289 (= (choose!9 (_2!22 lt!341) (_3!22 lt!341) #b00000000000000000000000000000001) res!466)))

(assert (=> d!285 d!289))

(declare-fun d!291 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!291 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!94 () Bool)

(assert (= bs!94 d!291))

(declare-fun m!311 () Bool)

(assert (=> bs!94 m!311))

(assert (=> b!323 d!291))

(check-sat (not d!291))
(check-sat)
(get-model)

(declare-fun d!293 () Bool)

(declare-fun toBinary!94 () (_ BitVec 64))

(assert (=> d!293 (= ((_ to_fp 11 53) toBinary!94) x!86)))

(assert (=> d!293 true))

(assert (=> d!293 (= (choose!8 x!86 x!86 false) toBinary!94)))

(assert (=> d!291 d!293))

(check-sat)
