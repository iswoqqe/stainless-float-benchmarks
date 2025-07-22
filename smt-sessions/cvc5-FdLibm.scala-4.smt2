; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

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

(declare-fun lt!28 () (_ BitVec 32))

(declare-datatypes ((tuple3!4 0))(
  ( (tuple3!5 (_1!2 (_ BitVec 32)) (_2!2 (_ FloatingPoint 11 53)) (_3!2 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!27 () tuple3!4)

(assert (=> b!41 (= e!53 (and (not (= lt!28 #b00000000000000000000000000000000)) (= lt!28 #b00000000000000000000000000000001) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!2 lt!27))) (not (fp.leq (_2!2 lt!27) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111))))))))

(assert (=> b!41 (= lt!28 (bvand (_1!2 lt!27) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!4)

(assert (=> b!41 (= lt!27 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!35 res!271) b!41))

(declare-fun m!29 () Bool)

(assert (=> start!35 m!29))

(declare-fun m!31 () Bool)

(assert (=> b!41 m!31))

(push 1)

(assert (not start!35))

(assert (not b!41))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32 () Bool)

(declare-fun c!47 () Bool)

(assert (=> d!32 (= c!47 (fp.isNaN x!109))))

(declare-fun e!56 () (_ BitVec 64))

(assert (=> d!32 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!56 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!46 () Bool)

(assert (=> b!46 (= e!56 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!47 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!47 (= e!56 (choose!3 x!109 x!109 false))))

(assert (= (and d!32 c!47) b!46))

(assert (= (and d!32 (not c!47)) b!47))

(declare-fun m!33 () Bool)

(assert (=> b!47 m!33))

(assert (=> start!35 d!32))

(declare-fun d!34 () Bool)

(declare-fun lt!32 () tuple3!4)

(assert (=> d!34 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!2 lt!32)) (bvslt (_1!2 lt!32) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!2 lt!32)) (fp.leq (_2!2 lt!32) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!2 lt!32)) (fp.leq (_3!2 lt!32) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!4)

(assert (=> d!34 (= lt!32 (choose!4 x!109))))

(assert (=> d!34 (= (__ieee754_rem_pio2!0 x!109) lt!32)))

(declare-fun bs!10 () Bool)

(assert (= bs!10 d!34))

(declare-fun m!35 () Bool)

(assert (=> bs!10 m!35))

(assert (=> b!41 d!34))

(push 1)

(assert (not d!34))

(assert (not b!47))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!36 () Bool)

(declare-fun res!274 () tuple3!4)

(assert (=> d!36 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!2 res!274)) (bvslt (_1!2 res!274) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!2 res!274)) (fp.leq (_2!2 res!274) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!2 res!274)) (fp.leq (_3!2 res!274) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!36 true))

(assert (=> d!36 (= (choose!4 x!109) res!274)))

(assert (=> d!34 d!36))

(declare-fun d!38 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!38 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!11 () Bool)

(assert (= bs!11 d!38))

(declare-fun m!37 () Bool)

(assert (=> bs!11 m!37))

(assert (=> b!47 d!38))

(push 1)

(assert (not d!38))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!40 () Bool)

(declare-fun toBinary!25 () (_ BitVec 64))

(assert (=> d!40 (= ((_ to_fp 11 53) toBinary!25) x!109)))

(assert (=> d!40 true))

(assert (=> d!40 (= (choose!8 x!109 x!109 false) toBinary!25)))

(assert (=> d!38 d!40))

(push 1)

(check-sat)

(pop 1)

