; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!313 () Bool)

(assert start!313)

(declare-fun res!435 () Bool)

(declare-fun e!226 () Bool)

(assert (=> start!313 (=> (not res!435) (not e!226))))

(declare-fun lt!305 () (_ BitVec 32))

(assert (=> start!313 (= res!435 (and (bvsgt lt!305 #b00111111111010010010000111111011) (bvslt lt!305 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!313 (= lt!305 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!313 e!226))

(assert (=> start!313 true))

(declare-fun b!292 () Bool)

(declare-fun e!227 () Bool)

(assert (=> b!292 (= e!226 e!227)))

(declare-fun res!436 () Bool)

(assert (=> b!292 (=> (not res!436) (not e!227))))

(declare-datatypes ((tuple3!40 0))(
  ( (tuple3!41 (_1!20 (_ BitVec 32)) (_2!20 (_ FloatingPoint 11 53)) (_3!20 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!304 () tuple3!40)

(assert (=> b!292 (= res!436 (= (bvand (_1!20 lt!304) #b00000000000000000000000000000011) #b00000000000000000000000000000000))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!40)

(assert (=> b!292 (= lt!304 (__ieee754_rem_pio2!0 x!86))))

(declare-fun b!293 () Bool)

(declare-fun lt!303 () (_ FloatingPoint 11 53))

(assert (=> b!293 (= e!227 (or (not (= (or (fp.isInfinite x!86) (fp.isNaN x!86)) (fp.isNaN lt!303))) (and (= x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!303 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (= x!86 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!303 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!303)) (not (fp.leq lt!303 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!303)))))))

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!293 (= lt!303 (__kernel_sin!0 (_2!20 lt!304) (_3!20 lt!304) #b00000000000000000000000000000001))))

(assert (= (and start!313 res!435) b!292))

(assert (= (and b!292 res!436) b!293))

(declare-fun m!271 () Bool)

(assert (=> start!313 m!271))

(declare-fun m!273 () Bool)

(assert (=> b!292 m!273))

(declare-fun m!275 () Bool)

(assert (=> b!293 m!275))

(check-sat (not b!292) (not start!313) (not b!293))
(check-sat)
(get-model)

(declare-fun d!253 () Bool)

(declare-fun lt!308 () tuple3!40)

(assert (=> d!253 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!20 lt!308)) (bvslt (_1!20 lt!308) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!20 lt!308)) (fp.leq (_2!20 lt!308) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!20 lt!308)) (fp.leq (_3!20 lt!308) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!40)

(assert (=> d!253 (= lt!308 (choose!4 x!86))))

(assert (=> d!253 (= (__ieee754_rem_pio2!0 x!86) lt!308)))

(declare-fun bs!84 () Bool)

(assert (= bs!84 d!253))

(declare-fun m!277 () Bool)

(assert (=> bs!84 m!277))

(assert (=> b!292 d!253))

(declare-fun d!255 () Bool)

(declare-fun c!125 () Bool)

(assert (=> d!255 (= c!125 (fp.isNaN x!86))))

(declare-fun e!230 () (_ BitVec 64))

(assert (=> d!255 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!230 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!298 () Bool)

(assert (=> b!298 (= e!230 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!299 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!299 (= e!230 (choose!3 x!86 x!86 false))))

(assert (= (and d!255 c!125) b!298))

(assert (= (and d!255 (not c!125)) b!299))

(declare-fun m!279 () Bool)

(assert (=> b!299 m!279))

(assert (=> start!313 d!255))

(declare-fun d!257 () Bool)

(declare-fun lt!311 () (_ FloatingPoint 11 53))

(assert (=> d!257 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!311) (fp.leq lt!311 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!257 (= lt!311 (choose!9 (_2!20 lt!304) (_3!20 lt!304) #b00000000000000000000000000000001))))

(assert (=> d!257 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!20 lt!304)) (fp.leq (_2!20 lt!304) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!257 (= (__kernel_sin!0 (_2!20 lt!304) (_3!20 lt!304) #b00000000000000000000000000000001) lt!311)))

(declare-fun bs!85 () Bool)

(assert (= bs!85 d!257))

(declare-fun m!281 () Bool)

(assert (=> bs!85 m!281))

(assert (=> b!293 d!257))

(check-sat (not d!257) (not b!299) (not d!253))
(check-sat)
(get-model)

(declare-fun d!259 () Bool)

(declare-fun res!439 () (_ FloatingPoint 11 53))

(assert (=> d!259 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!439) (fp.leq res!439 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!259 true))

(assert (=> d!259 (= (choose!9 (_2!20 lt!304) (_3!20 lt!304) #b00000000000000000000000000000001) res!439)))

(assert (=> d!257 d!259))

(declare-fun d!261 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!261 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!86 () Bool)

(assert (= bs!86 d!261))

(declare-fun m!283 () Bool)

(assert (=> bs!86 m!283))

(assert (=> b!299 d!261))

(declare-fun d!263 () Bool)

(declare-fun res!442 () tuple3!40)

(assert (=> d!263 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!20 res!442)) (bvslt (_1!20 res!442) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!20 res!442)) (fp.leq (_2!20 res!442) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!20 res!442)) (fp.leq (_3!20 res!442) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!263 true))

(assert (=> d!263 (= (choose!4 x!86) res!442)))

(assert (=> d!253 d!263))

(check-sat (not d!261))
(check-sat)
(get-model)

(declare-fun d!265 () Bool)

(declare-fun toBinary!88 () (_ BitVec 64))

(assert (=> d!265 (= ((_ to_fp 11 53) toBinary!88) x!86)))

(assert (=> d!265 true))

(assert (=> d!265 (= (choose!8 x!86 x!86 false) toBinary!88)))

(assert (=> d!261 d!265))

(check-sat)
