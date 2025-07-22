; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!47 () Bool)

(assert start!47)

(declare-fun res!277 () Bool)

(declare-fun e!59 () Bool)

(assert (=> start!47 (=> (not res!277) (not e!59))))

(declare-fun lt!40 () (_ BitVec 32))

(assert (=> start!47 (= res!277 (and (bvsgt lt!40 #b00111111111010010010000111111011) (bvslt lt!40 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!47 (= lt!40 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!47 e!59))

(assert (=> start!47 true))

(declare-fun b!50 () Bool)

(declare-fun lt!41 () (_ BitVec 32))

(declare-datatypes ((tuple3!6 0))(
  ( (tuple3!7 (_1!3 (_ BitVec 32)) (_2!3 (_ FloatingPoint 11 53)) (_3!3 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!39 () tuple3!6)

(assert (=> b!50 (= e!59 (and (not (= lt!41 #b00000000000000000000000000000000)) (= lt!41 #b00000000000000000000000000000001) (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!3 lt!39)) (fp.leq (_2!3 lt!39) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!3 lt!39))) (not (fp.leq (_3!3 lt!39) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!50 (= lt!41 (bvand (_1!3 lt!39) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!6)

(assert (=> b!50 (= lt!39 (__ieee754_rem_pio2!0 x!109))))

(assert (= (and start!47 res!277) b!50))

(declare-fun m!39 () Bool)

(assert (=> start!47 m!39))

(declare-fun m!41 () Bool)

(assert (=> b!50 m!41))

(push 1)

(assert (not b!50))

(assert (not start!47))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43 () Bool)

(declare-fun lt!44 () tuple3!6)

(assert (=> d!43 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!3 lt!44)) (bvslt (_1!3 lt!44) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!3 lt!44)) (fp.leq (_2!3 lt!44) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!3 lt!44)) (fp.leq (_3!3 lt!44) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!6)

(assert (=> d!43 (= lt!44 (choose!4 x!109))))

(assert (=> d!43 (= (__ieee754_rem_pio2!0 x!109) lt!44)))

(declare-fun bs!13 () Bool)

(assert (= bs!13 d!43))

(declare-fun m!43 () Bool)

(assert (=> bs!13 m!43))

(assert (=> b!50 d!43))

(declare-fun d!45 () Bool)

(declare-fun c!50 () Bool)

(assert (=> d!45 (= c!50 (fp.isNaN x!109))))

(declare-fun e!62 () (_ BitVec 64))

(assert (=> d!45 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!62 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!55 () Bool)

(assert (=> b!55 (= e!62 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!56 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!56 (= e!62 (choose!3 x!109 x!109 false))))

(assert (= (and d!45 c!50) b!55))

(assert (= (and d!45 (not c!50)) b!56))

(declare-fun m!45 () Bool)

(assert (=> b!56 m!45))

(assert (=> start!47 d!45))

(push 1)

(assert (not d!43))

(assert (not b!56))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!47 () Bool)

(declare-fun res!280 () tuple3!6)

(assert (=> d!47 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!3 res!280)) (bvslt (_1!3 res!280) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!3 res!280)) (fp.leq (_2!3 res!280) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!3 res!280)) (fp.leq (_3!3 res!280) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!47 true))

(assert (=> d!47 (= (choose!4 x!109) res!280)))

(assert (=> d!43 d!47))

(declare-fun d!49 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!49 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!14 () Bool)

(assert (= bs!14 d!49))

(declare-fun m!47 () Bool)

(assert (=> bs!14 m!47))

(assert (=> b!56 d!49))

(push 1)

(assert (not d!49))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51 () Bool)

(declare-fun toBinary!28 () (_ BitVec 64))

(assert (=> d!51 (= ((_ to_fp 11 53) toBinary!28) x!109)))

(assert (=> d!51 true))

(assert (=> d!51 (= (choose!8 x!109 x!109 false) toBinary!28)))

(assert (=> d!49 d!51))

(push 1)

(check-sat)

(pop 1)

