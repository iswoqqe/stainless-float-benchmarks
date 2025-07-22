; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147 () Bool)

(assert start!147)

(declare-fun res!337 () Bool)

(declare-fun e!116 () Bool)

(assert (=> start!147 (=> (not res!337) (not e!116))))

(declare-fun lt!143 () (_ BitVec 32))

(assert (=> start!147 (= res!337 (and (bvsgt lt!143 #b00111111111010010010000111111011) (bvslt lt!143 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!147 (= lt!143 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!147 e!116))

(assert (=> start!147 true))

(declare-fun b!130 () Bool)

(declare-fun e!115 () Bool)

(assert (=> b!130 (= e!116 e!115)))

(declare-fun res!336 () Bool)

(assert (=> b!130 (=> (not res!336) (not e!115))))

(declare-fun lt!146 () (_ BitVec 32))

(assert (=> b!130 (= res!336 (and (not (= lt!146 #b00000000000000000000000000000000)) (not (= lt!146 #b00000000000000000000000000000001)) (= lt!146 #b00000000000000000000000000000010)))))

(declare-datatypes ((tuple3!20 0))(
  ( (tuple3!21 (_1!10 (_ BitVec 32)) (_2!10 (_ FloatingPoint 11 53)) (_3!10 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!145 () tuple3!20)

(assert (=> b!130 (= lt!146 (bvand (_1!10 lt!145) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!20)

(assert (=> b!130 (= lt!145 (__ieee754_rem_pio2!0 x!109))))

(declare-fun b!131 () Bool)

(declare-fun lt!144 () (_ FloatingPoint 11 53))

(assert (=> b!131 (= e!115 (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN lt!144))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!144)) (not (fp.leq lt!144 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!144)))))))

(declare-fun __kernel_cos!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!131 (= lt!144 (fp.neg (__kernel_cos!0 (_2!10 lt!145) (_3!10 lt!145))))))

(assert (= (and start!147 res!337) b!130))

(assert (= (and b!130 res!336) b!131))

(declare-fun m!127 () Bool)

(assert (=> start!147 m!127))

(declare-fun m!129 () Bool)

(assert (=> b!130 m!129))

(declare-fun m!131 () Bool)

(assert (=> b!131 m!131))

(check-sat (not start!147) (not b!130) (not b!131))
(check-sat)
(get-model)

(declare-fun d!119 () Bool)

(declare-fun c!74 () Bool)

(assert (=> d!119 (= c!74 (fp.isNaN x!109))))

(declare-fun e!119 () (_ BitVec 64))

(assert (=> d!119 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!119 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!136 () Bool)

(assert (=> b!136 (= e!119 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!137 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!137 (= e!119 (choose!3 x!109 x!109 false))))

(assert (= (and d!119 c!74) b!136))

(assert (= (and d!119 (not c!74)) b!137))

(declare-fun m!133 () Bool)

(assert (=> b!137 m!133))

(assert (=> start!147 d!119))

(declare-fun d!121 () Bool)

(declare-fun lt!149 () tuple3!20)

(assert (=> d!121 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!10 lt!149)) (bvslt (_1!10 lt!149) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!10 lt!149)) (fp.leq (_2!10 lt!149) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!10 lt!149)) (fp.leq (_3!10 lt!149) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!20)

(assert (=> d!121 (= lt!149 (choose!4 x!109))))

(assert (=> d!121 (= (__ieee754_rem_pio2!0 x!109) lt!149)))

(declare-fun bs!40 () Bool)

(assert (= bs!40 d!121))

(declare-fun m!135 () Bool)

(assert (=> bs!40 m!135))

(assert (=> b!130 d!121))

(declare-fun d!123 () Bool)

(declare-fun lt!152 () (_ FloatingPoint 11 53))

(assert (=> d!123 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!152) (fp.leq lt!152 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!5 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!123 (= lt!152 (choose!5 (_2!10 lt!145) (_3!10 lt!145)))))

(assert (=> d!123 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!10 lt!145)) (fp.leq (_2!10 lt!145) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!123 (= (__kernel_cos!0 (_2!10 lt!145) (_3!10 lt!145)) lt!152)))

(declare-fun bs!41 () Bool)

(assert (= bs!41 d!123))

(declare-fun m!137 () Bool)

(assert (=> bs!41 m!137))

(assert (=> b!131 d!123))

(check-sat (not b!137) (not d!123) (not d!121))
(check-sat)
(get-model)

(declare-fun d!125 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!125 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!42 () Bool)

(assert (= bs!42 d!125))

(declare-fun m!139 () Bool)

(assert (=> bs!42 m!139))

(assert (=> b!137 d!125))

(declare-fun d!127 () Bool)

(declare-fun res!340 () (_ FloatingPoint 11 53))

(assert (=> d!127 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!340) (fp.leq res!340 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!127 true))

(assert (=> d!127 (= (choose!5 (_2!10 lt!145) (_3!10 lt!145)) res!340)))

(assert (=> d!123 d!127))

(declare-fun d!129 () Bool)

(declare-fun res!343 () tuple3!20)

(assert (=> d!129 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!10 res!343)) (bvslt (_1!10 res!343) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!10 res!343)) (fp.leq (_2!10 res!343) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!10 res!343)) (fp.leq (_3!10 res!343) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!129 true))

(assert (=> d!129 (= (choose!4 x!109) res!343)))

(assert (=> d!121 d!129))

(check-sat (not d!125))
(check-sat)
(get-model)

(declare-fun d!131 () Bool)

(declare-fun toBinary!49 () (_ BitVec 64))

(assert (=> d!131 (= ((_ to_fp 11 53) toBinary!49) x!109)))

(assert (=> d!131 true))

(assert (=> d!131 (= (choose!8 x!109 x!109 false) toBinary!49)))

(assert (=> d!125 d!131))

(check-sat)
