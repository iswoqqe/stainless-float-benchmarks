; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!257 () Bool)

(assert start!257)

(declare-fun res!406 () Bool)

(declare-fun e!191 () Bool)

(assert (=> start!257 (=> (not res!406) (not e!191))))

(declare-fun lt!253 () (_ BitVec 32))

(assert (=> start!257 (= res!406 (and (bvsgt lt!253 #b00111111111010010010000111111011) (bvslt lt!253 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!257 (= lt!253 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!257 e!191))

(assert (=> start!257 true))

(declare-fun b!239 () Bool)

(declare-fun lt!254 () (_ BitVec 32))

(declare-datatypes ((tuple3!34 0))(
  ( (tuple3!35 (_1!17 (_ BitVec 32)) (_2!17 (_ FloatingPoint 11 53)) (_3!17 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!252 () tuple3!34)

(assert (=> b!239 (= e!191 (and (not (= lt!254 #b00000000000000000000000000000000)) (not (= lt!254 #b00000000000000000000000000000001)) (= lt!254 #b00000000000000000000000000000010) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!17 lt!252)) (fp.leq (_2!17 lt!252) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!17 lt!252))) (not (fp.leq (_3!17 lt!252) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!239 (= lt!254 (bvand (_1!17 lt!252) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!34)

(assert (=> b!239 (= lt!252 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!257 res!406) b!239))

(declare-fun m!225 () Bool)

(assert (=> start!257 m!225))

(declare-fun m!227 () Bool)

(assert (=> b!239 m!227))

(check-sat (not b!239) (not start!257))
(check-sat)
(get-model)

(declare-fun d!207 () Bool)

(declare-fun lt!257 () tuple3!34)

(assert (=> d!207 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!17 lt!257)) (bvslt (_1!17 lt!257) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!17 lt!257)) (fp.leq (_2!17 lt!257) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!17 lt!257)) (fp.leq (_3!17 lt!257) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!34)

(assert (=> d!207 (= lt!257 (choose!4 x!86))))

(assert (=> d!207 (= (__ieee754_rem_pio2!0 x!86) lt!257)))

(declare-fun bs!69 () Bool)

(assert (= bs!69 d!207))

(declare-fun m!229 () Bool)

(assert (=> bs!69 m!229))

(assert (=> b!239 d!207))

(declare-fun d!209 () Bool)

(declare-fun c!107 () Bool)

(assert (=> d!209 (= c!107 (fp.isNaN x!86))))

(declare-fun e!194 () (_ BitVec 64))

(assert (=> d!209 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!194 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!244 () Bool)

(assert (=> b!244 (= e!194 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!245 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!245 (= e!194 (choose!3 x!86 x!86 false))))

(assert (= (and d!209 c!107) b!244))

(assert (= (and d!209 (not c!107)) b!245))

(declare-fun m!231 () Bool)

(assert (=> b!245 m!231))

(assert (=> start!257 d!209))

(check-sat (not d!207) (not b!245))
(check-sat)
(get-model)

(declare-fun d!211 () Bool)

(declare-fun res!409 () tuple3!34)

(assert (=> d!211 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!17 res!409)) (bvslt (_1!17 res!409) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!17 res!409)) (fp.leq (_2!17 res!409) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!17 res!409)) (fp.leq (_3!17 res!409) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!211 true))

(assert (=> d!211 (= (choose!4 x!86) res!409)))

(assert (=> d!207 d!211))

(declare-fun d!213 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!213 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!70 () Bool)

(assert (= bs!70 d!213))

(declare-fun m!233 () Bool)

(assert (=> bs!70 m!233))

(assert (=> b!245 d!213))

(check-sat (not d!213))
(check-sat)
(get-model)

(declare-fun d!215 () Bool)

(declare-fun toBinary!73 () (_ BitVec 64))

(assert (=> d!215 (= ((_ to_fp 11 53) toBinary!73) x!86)))

(assert (=> d!215 true))

(assert (=> d!215 (= (choose!8 x!86 x!86 false) toBinary!73)))

(assert (=> d!213 d!215))

(check-sat)
