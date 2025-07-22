; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131 () Bool)

(assert start!131)

(declare-fun res!324 () Bool)

(declare-fun e!107 () Bool)

(assert (=> start!131 (=> (not res!324) (not e!107))))

(declare-fun lt!128 () (_ BitVec 32))

(assert (=> start!131 (= res!324 (and (bvsgt lt!128 #b00111111111010010010000111111011) (bvslt lt!128 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!131 (= lt!128 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!131 e!107))

(assert (=> start!131 true))

(declare-fun b!118 () Bool)

(declare-fun e!106 () Bool)

(assert (=> b!118 (= e!107 e!106)))

(declare-fun res!325 () Bool)

(assert (=> b!118 (=> (not res!325) (not e!106))))

(declare-fun lt!126 () (_ BitVec 32))

(assert (=> b!118 (= res!325 (and (not (= lt!126 #b00000000000000000000000000000000)) (= lt!126 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple3!18 0))(
  ( (tuple3!19 (_1!9 (_ BitVec 32)) (_2!9 (_ FloatingPoint 11 53)) (_3!9 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!127 () tuple3!18)

(assert (=> b!118 (= lt!126 (bvand (_1!9 lt!127) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!18)

(assert (=> b!118 (= lt!127 (__ieee754_rem_pio2!0 x!109))))

(declare-fun b!119 () Bool)

(declare-fun lt!125 () (_ FloatingPoint 11 53))

(assert (=> b!119 (= e!106 (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN lt!125))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!125)) (not (fp.leq lt!125 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!125)))))))

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!119 (= lt!125 (fp.neg (__kernel_sin!0 (_2!9 lt!127) (_3!9 lt!127) #b00000000000000000000000000000001)))))

(assert (= (and start!131 res!324) b!118))

(assert (= (and b!118 res!325) b!119))

(declare-fun m!113 () Bool)

(assert (=> start!131 m!113))

(declare-fun m!115 () Bool)

(assert (=> b!118 m!115))

(declare-fun m!117 () Bool)

(assert (=> b!119 m!117))

(check-sat (not b!119) (not b!118) (not start!131))
(check-sat)
(get-model)

(declare-fun d!105 () Bool)

(declare-fun lt!131 () (_ FloatingPoint 11 53))

(assert (=> d!105 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!131) (fp.leq lt!131 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!105 (= lt!131 (choose!9 (_2!9 lt!127) (_3!9 lt!127) #b00000000000000000000000000000001))))

(assert (=> d!105 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!9 lt!127)) (fp.leq (_2!9 lt!127) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!105 (= (__kernel_sin!0 (_2!9 lt!127) (_3!9 lt!127) #b00000000000000000000000000000001) lt!131)))

(declare-fun bs!36 () Bool)

(assert (= bs!36 d!105))

(declare-fun m!119 () Bool)

(assert (=> bs!36 m!119))

(assert (=> b!119 d!105))

(declare-fun d!107 () Bool)

(declare-fun lt!134 () tuple3!18)

(assert (=> d!107 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!9 lt!134)) (bvslt (_1!9 lt!134) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!9 lt!134)) (fp.leq (_2!9 lt!134) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!9 lt!134)) (fp.leq (_3!9 lt!134) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!18)

(assert (=> d!107 (= lt!134 (choose!4 x!109))))

(assert (=> d!107 (= (__ieee754_rem_pio2!0 x!109) lt!134)))

(declare-fun bs!37 () Bool)

(assert (= bs!37 d!107))

(declare-fun m!121 () Bool)

(assert (=> bs!37 m!121))

(assert (=> b!118 d!107))

(declare-fun d!109 () Bool)

(declare-fun c!71 () Bool)

(assert (=> d!109 (= c!71 (fp.isNaN x!109))))

(declare-fun e!110 () (_ BitVec 64))

(assert (=> d!109 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!110 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!124 () Bool)

(assert (=> b!124 (= e!110 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!125 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!125 (= e!110 (choose!3 x!109 x!109 false))))

(assert (= (and d!109 c!71) b!124))

(assert (= (and d!109 (not c!71)) b!125))

(declare-fun m!123 () Bool)

(assert (=> b!125 m!123))

(assert (=> start!131 d!109))

(check-sat (not b!125) (not d!107) (not d!105))
(check-sat)
(get-model)

(declare-fun d!111 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!111 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!38 () Bool)

(assert (= bs!38 d!111))

(declare-fun m!125 () Bool)

(assert (=> bs!38 m!125))

(assert (=> b!125 d!111))

(declare-fun d!113 () Bool)

(declare-fun res!328 () tuple3!18)

(assert (=> d!113 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!9 res!328)) (bvslt (_1!9 res!328) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!9 res!328)) (fp.leq (_2!9 res!328) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!9 res!328)) (fp.leq (_3!9 res!328) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!113 true))

(assert (=> d!113 (= (choose!4 x!109) res!328)))

(assert (=> d!107 d!113))

(declare-fun d!115 () Bool)

(declare-fun res!331 () (_ FloatingPoint 11 53))

(assert (=> d!115 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!331) (fp.leq res!331 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!115 true))

(assert (=> d!115 (= (choose!9 (_2!9 lt!127) (_3!9 lt!127) #b00000000000000000000000000000001) res!331)))

(assert (=> d!105 d!115))

(check-sat (not d!111))
(check-sat)
(get-model)

(declare-fun d!117 () Bool)

(declare-fun toBinary!46 () (_ BitVec 64))

(assert (=> d!117 (= ((_ to_fp 11 53) toBinary!46) x!109)))

(assert (=> d!117 true))

(assert (=> d!117 (= (choose!8 x!109 x!109 false) toBinary!46)))

(assert (=> d!111 d!117))

(check-sat)
