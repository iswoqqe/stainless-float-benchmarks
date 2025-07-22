; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!23 () Bool)

(assert start!23)

(declare-fun res!265 () Bool)

(declare-fun e!47 () Bool)

(assert (=> start!23 (=> (not res!265) (not e!47))))

(declare-fun lt!16 () (_ BitVec 32))

(assert (=> start!23 (= res!265 (and (bvsgt lt!16 #b00111111111010010010000111111011) (bvslt lt!16 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!23 (= lt!16 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!23 e!47))

(assert (=> start!23 true))

(declare-fun b!32 () Bool)

(declare-datatypes ((tuple3!2 0))(
  ( (tuple3!3 (_1!1 (_ BitVec 32)) (_2!1 (_ FloatingPoint 11 53)) (_3!1 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!17 () tuple3!2)

(assert (=> b!32 (= e!47 (and (= (bvand (_1!1 lt!17) #b00000000000000000000000000000011) #b00000000000000000000000000000000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!1 lt!17)) (fp.leq (_2!1 lt!17) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!1 lt!17))) (not (fp.leq (_3!1 lt!17) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!2)

(assert (=> b!32 (= lt!17 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!23 res!265) b!32))

(declare-fun m!19 () Bool)

(assert (=> start!23 m!19))

(declare-fun m!21 () Bool)

(assert (=> b!32 m!21))

(push 1)

(assert (not b!32))

(assert (not start!23))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!21 () Bool)

(declare-fun lt!20 () tuple3!2)

(assert (=> d!21 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!1 lt!20)) (bvslt (_1!1 lt!20) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!1 lt!20)) (fp.leq (_2!1 lt!20) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!1 lt!20)) (fp.leq (_3!1 lt!20) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!2)

(assert (=> d!21 (= lt!20 (choose!4 x!109))))

(assert (=> d!21 (= (__ieee754_rem_pio2!0 x!109) lt!20)))

(declare-fun bs!7 () Bool)

(assert (= bs!7 d!21))

(declare-fun m!23 () Bool)

(assert (=> bs!7 m!23))

(assert (=> b!32 d!21))

(declare-fun d!23 () Bool)

(declare-fun c!44 () Bool)

(assert (=> d!23 (= c!44 (fp.isNaN x!109))))

(declare-fun e!50 () (_ BitVec 64))

(assert (=> d!23 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!50 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!37 () Bool)

(assert (=> b!37 (= e!50 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!38 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!38 (= e!50 (choose!3 x!109 x!109 false))))

(assert (= (and d!23 c!44) b!37))

(assert (= (and d!23 (not c!44)) b!38))

(declare-fun m!25 () Bool)

(assert (=> b!38 m!25))

(assert (=> start!23 d!23))

(push 1)

(assert (not d!21))

(assert (not b!38))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!25 () Bool)

(declare-fun res!268 () tuple3!2)

(assert (=> d!25 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!1 res!268)) (bvslt (_1!1 res!268) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!1 res!268)) (fp.leq (_2!1 res!268) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!1 res!268)) (fp.leq (_3!1 res!268) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!25 true))

(assert (=> d!25 (= (choose!4 x!109) res!268)))

(assert (=> d!21 d!25))

(declare-fun d!27 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!27 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!8 () Bool)

(assert (= bs!8 d!27))

(declare-fun m!27 () Bool)

(assert (=> bs!8 m!27))

(assert (=> b!38 d!27))

(push 1)

(assert (not d!27))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!29 () Bool)

(declare-fun toBinary!22 () (_ BitVec 64))

(assert (=> d!29 (= ((_ to_fp 11 53) toBinary!22) x!109)))

(assert (=> d!29 true))

(assert (=> d!29 (= (choose!8 x!109 x!109 false) toBinary!22)))

(assert (=> d!27 d!29))

(push 1)

(check-sat)

(pop 1)

