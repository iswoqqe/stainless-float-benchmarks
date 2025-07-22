; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233 () Bool)

(assert start!233)

(declare-fun res!394 () Bool)

(declare-fun e!179 () Bool)

(assert (=> start!233 (=> (not res!394) (not e!179))))

(declare-fun lt!230 () (_ BitVec 32))

(assert (=> start!233 (= res!394 (and (bvsgt lt!230 #b00111111111010010010000111111011) (bvslt lt!230 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!233 (= lt!230 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!233 e!179))

(assert (=> start!233 true))

(declare-fun b!221 () Bool)

(declare-fun lt!228 () (_ BitVec 32))

(declare-datatypes ((tuple3!30 0))(
  ( (tuple3!31 (_1!15 (_ BitVec 32)) (_2!15 (_ FloatingPoint 11 53)) (_3!15 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!229 () tuple3!30)

(assert (=> b!221 (= e!179 (and (not (= lt!228 #b00000000000000000000000000000000)) (= lt!228 #b00000000000000000000000000000001) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!15 lt!229)) (fp.leq (_2!15 lt!229) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!15 lt!229))) (not (fp.leq (_3!15 lt!229) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!221 (= lt!228 (bvand (_1!15 lt!229) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!30)

(assert (=> b!221 (= lt!229 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!233 res!394) b!221))

(declare-fun m!205 () Bool)

(assert (=> start!233 m!205))

(declare-fun m!207 () Bool)

(assert (=> b!221 m!207))

(check-sat (not start!233) (not b!221))
(check-sat)
(get-model)

(declare-fun d!187 () Bool)

(declare-fun c!101 () Bool)

(assert (=> d!187 (= c!101 (fp.isNaN x!86))))

(declare-fun e!182 () (_ BitVec 64))

(assert (=> d!187 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!182 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!226 () Bool)

(assert (=> b!226 (= e!182 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!227 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!227 (= e!182 (choose!3 x!86 x!86 false))))

(assert (= (and d!187 c!101) b!226))

(assert (= (and d!187 (not c!101)) b!227))

(declare-fun m!209 () Bool)

(assert (=> b!227 m!209))

(assert (=> start!233 d!187))

(declare-fun d!189 () Bool)

(declare-fun lt!233 () tuple3!30)

(assert (=> d!189 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!15 lt!233)) (bvslt (_1!15 lt!233) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!15 lt!233)) (fp.leq (_2!15 lt!233) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!15 lt!233)) (fp.leq (_3!15 lt!233) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!30)

(assert (=> d!189 (= lt!233 (choose!4 x!86))))

(assert (=> d!189 (= (__ieee754_rem_pio2!0 x!86) lt!233)))

(declare-fun bs!63 () Bool)

(assert (= bs!63 d!189))

(declare-fun m!211 () Bool)

(assert (=> bs!63 m!211))

(assert (=> b!221 d!189))

(check-sat (not d!189) (not b!227))
(check-sat)
(get-model)

(declare-fun d!191 () Bool)

(declare-fun res!397 () tuple3!30)

(assert (=> d!191 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!15 res!397)) (bvslt (_1!15 res!397) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!15 res!397)) (fp.leq (_2!15 res!397) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!15 res!397)) (fp.leq (_3!15 res!397) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!191 true))

(assert (=> d!191 (= (choose!4 x!86) res!397)))

(assert (=> d!189 d!191))

(declare-fun d!193 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!193 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!64 () Bool)

(assert (= bs!64 d!193))

(declare-fun m!213 () Bool)

(assert (=> bs!64 m!213))

(assert (=> b!227 d!193))

(check-sat (not d!193))
(check-sat)
(get-model)

(declare-fun d!195 () Bool)

(declare-fun toBinary!67 () (_ BitVec 64))

(assert (=> d!195 (= ((_ to_fp 11 53) toBinary!67) x!86)))

(assert (=> d!195 true))

(assert (=> d!195 (= (choose!8 x!86 x!86 false) toBinary!67)))

(assert (=> d!193 d!195))

(check-sat)
