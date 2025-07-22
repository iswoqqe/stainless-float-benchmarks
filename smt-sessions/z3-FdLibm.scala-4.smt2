; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35 () Bool)

(assert start!35)

(declare-fun res!271 () Bool)

(declare-fun e!53 () Bool)

(assert (=> start!35 (=> (not res!271) (not e!53))))

(declare-fun lt!29 () (_ BitVec 32))

(assert (=> start!35 (= res!271 (and (bvsgt lt!29 #b00111111111010010010000111111011) (bvslt lt!29 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!35 (= lt!29 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!35 e!53))

(assert (=> start!35 true))

(declare-fun b!41 () Bool)

(declare-fun lt!27 () (_ BitVec 32))

(declare-datatypes ((tuple3!4 0))(
  ( (tuple3!5 (_1!2 (_ BitVec 32)) (_2!2 (_ FloatingPoint 11 53)) (_3!2 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!28 () tuple3!4)

(assert (=> b!41 (= e!53 (and (not (= lt!27 #b00000000000000000000000000000000)) (= lt!27 #b00000000000000000000000000000001) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!2 lt!28))) (not (fp.leq (_2!2 lt!28) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(assert (=> b!41 (= lt!27 (bvand (_1!2 lt!28) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!4)

(assert (=> b!41 (= lt!28 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!35 res!271) b!41))

(declare-fun m!29 () Bool)

(assert (=> start!35 m!29))

(declare-fun m!31 () Bool)

(assert (=> b!41 m!31))

(check-sat (not b!41) (not start!35))
(check-sat)
(get-model)

(declare-fun d!27 () Bool)

(declare-fun lt!32 () tuple3!4)

(assert (=> d!27 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!2 lt!32)) (bvslt (_1!2 lt!32) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!2 lt!32)) (fp.leq (_2!2 lt!32) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!2 lt!32)) (fp.leq (_3!2 lt!32) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!4)

(assert (=> d!27 (= lt!32 (choose!4 x!109))))

(assert (=> d!27 (= (__ieee754_rem_pio2!0 x!109) lt!32)))

(declare-fun bs!10 () Bool)

(assert (= bs!10 d!27))

(declare-fun m!33 () Bool)

(assert (=> bs!10 m!33))

(assert (=> b!41 d!27))

(declare-fun d!29 () Bool)

(declare-fun c!47 () Bool)

(assert (=> d!29 (= c!47 (fp.isNaN x!109))))

(declare-fun e!56 () (_ BitVec 64))

(assert (=> d!29 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!56 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!46 () Bool)

(assert (=> b!46 (= e!56 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!47 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!47 (= e!56 (choose!3 x!109 x!109 false))))

(assert (= (and d!29 c!47) b!46))

(assert (= (and d!29 (not c!47)) b!47))

(declare-fun m!35 () Bool)

(assert (=> b!47 m!35))

(assert (=> start!35 d!29))

(check-sat (not d!27) (not b!47))
(check-sat)
(get-model)

(declare-fun d!31 () Bool)

(declare-fun res!274 () tuple3!4)

(assert (=> d!31 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!2 res!274)) (bvslt (_1!2 res!274) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!2 res!274)) (fp.leq (_2!2 res!274) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!2 res!274)) (fp.leq (_3!2 res!274) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!31 true))

(assert (=> d!31 (= (choose!4 x!109) res!274)))

(assert (=> d!27 d!31))

(declare-fun d!33 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!33 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!11 () Bool)

(assert (= bs!11 d!33))

(declare-fun m!37 () Bool)

(assert (=> bs!11 m!37))

(assert (=> b!47 d!33))

(check-sat (not d!33))
(check-sat)
(get-model)

(declare-fun d!35 () Bool)

(declare-fun toBinary!25 () (_ BitVec 64))

(assert (=> d!35 (= ((_ to_fp 11 53) toBinary!25) x!109)))

(assert (=> d!35 true))

(assert (=> d!35 (= (choose!8 x!109 x!109 false) toBinary!25)))

(assert (=> d!33 d!35))

(check-sat)
