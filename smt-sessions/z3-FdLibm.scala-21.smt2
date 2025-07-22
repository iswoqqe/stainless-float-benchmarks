; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209 () Bool)

(assert start!209)

(declare-fun res!382 () Bool)

(declare-fun e!167 () Bool)

(assert (=> start!209 (=> (not res!382) (not e!167))))

(declare-fun lt!205 () (_ BitVec 32))

(assert (=> start!209 (= res!382 (and (bvsgt lt!205 #b00111111111010010010000111111011) (bvslt lt!205 #b01111111111100000000000000000000)))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!209 (= lt!205 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!209 e!167))

(assert (=> start!209 true))

(declare-fun b!203 () Bool)

(declare-datatypes ((tuple3!26 0))(
  ( (tuple3!27 (_1!13 (_ BitVec 32)) (_2!13 (_ FloatingPoint 11 53)) (_3!13 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!206 () tuple3!26)

(assert (=> b!203 (= e!167 (and (= (bvand (_1!13 lt!206) #b00000000000000000000000000000011) #b00000000000000000000000000000000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!13 lt!206)) (fp.leq (_2!13 lt!206) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!13 lt!206))) (not (fp.leq (_3!13 lt!206) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!26)

(assert (=> b!203 (= lt!206 (__ieee754_rem_pio2!0 x!86))))

(assert (= (and start!209 res!382) b!203))

(declare-fun m!185 () Bool)

(assert (=> start!209 m!185))

(declare-fun m!187 () Bool)

(assert (=> b!203 m!187))

(check-sat (not b!203) (not start!209))
(check-sat)
(get-model)

(declare-fun d!167 () Bool)

(declare-fun lt!209 () tuple3!26)

(assert (=> d!167 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!13 lt!209)) (bvslt (_1!13 lt!209) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!13 lt!209)) (fp.leq (_2!13 lt!209) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!13 lt!209)) (fp.leq (_3!13 lt!209) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!26)

(assert (=> d!167 (= lt!209 (choose!4 x!86))))

(assert (=> d!167 (= (__ieee754_rem_pio2!0 x!86) lt!209)))

(declare-fun bs!57 () Bool)

(assert (= bs!57 d!167))

(declare-fun m!189 () Bool)

(assert (=> bs!57 m!189))

(assert (=> b!203 d!167))

(declare-fun d!169 () Bool)

(declare-fun c!95 () Bool)

(assert (=> d!169 (= c!95 (fp.isNaN x!86))))

(declare-fun e!170 () (_ BitVec 64))

(assert (=> d!169 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!170 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!208 () Bool)

(assert (=> b!208 (= e!170 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!209 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!209 (= e!170 (choose!3 x!86 x!86 false))))

(assert (= (and d!169 c!95) b!208))

(assert (= (and d!169 (not c!95)) b!209))

(declare-fun m!191 () Bool)

(assert (=> b!209 m!191))

(assert (=> start!209 d!169))

(check-sat (not d!167) (not b!209))
(check-sat)
(get-model)

(declare-fun d!171 () Bool)

(declare-fun res!385 () tuple3!26)

(assert (=> d!171 (or (fp.isInfinite x!86) (fp.isNaN x!86) (and (bvslt #b11111111111111111111111111111000 (_1!13 res!385)) (bvslt (_1!13 res!385) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!13 res!385)) (fp.leq (_2!13 res!385) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!13 res!385)) (fp.leq (_3!13 res!385) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!171 true))

(assert (=> d!171 (= (choose!4 x!86) res!385)))

(assert (=> d!167 d!171))

(declare-fun d!173 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!173 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!58 () Bool)

(assert (= bs!58 d!173))

(declare-fun m!193 () Bool)

(assert (=> bs!58 m!193))

(assert (=> b!209 d!173))

(check-sat (not d!173))
(check-sat)
(get-model)

(declare-fun d!175 () Bool)

(declare-fun toBinary!61 () (_ BitVec 64))

(assert (=> d!175 (= ((_ to_fp 11 53) toBinary!61) x!86)))

(assert (=> d!175 true))

(assert (=> d!175 (= (choose!8 x!86 x!86 false) toBinary!61)))

(assert (=> d!173 d!175))

(check-sat)
