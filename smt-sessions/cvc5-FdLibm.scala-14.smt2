; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!147 () Bool)

(assert start!147)

(declare-fun res!336 () Bool)

(declare-fun e!115 () Bool)

(assert (=> start!147 (=> (not res!336) (not e!115))))

(declare-fun lt!145 () (_ BitVec 32))

(assert (=> start!147 (= res!336 (and (bvsgt lt!145 #b00111111111010010010000111111011) (bvslt lt!145 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!147 (= lt!145 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!147 e!115))

(assert (=> start!147 true))

(declare-fun b!130 () Bool)

(declare-fun e!116 () Bool)

(assert (=> b!130 (= e!115 e!116)))

(declare-fun res!337 () Bool)

(assert (=> b!130 (=> (not res!337) (not e!116))))

(declare-fun lt!146 () (_ BitVec 32))

(assert (=> b!130 (= res!337 (and (not (= lt!146 #b00000000000000000000000000000000)) (not (= lt!146 #b00000000000000000000000000000001)) (= lt!146 #b00000000000000000000000000000010)))))

(declare-datatypes ((tuple3!20 0))(
  ( (tuple3!21 (_1!10 (_ BitVec 32)) (_2!10 (_ FloatingPoint 11 53)) (_3!10 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!143 () tuple3!20)

(assert (=> b!130 (= lt!146 (bvand (_1!10 lt!143) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!20)

(assert (=> b!130 (= lt!143 (__ieee754_rem_pio2!0 x!109))))

(declare-fun b!131 () Bool)

(declare-fun lt!144 () (_ FloatingPoint 11 53))

(assert (=> b!131 (= e!116 (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN lt!144))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!144)) (not (fp.leq lt!144 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!144)))))))

(declare-fun __kernel_cos!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!131 (= lt!144 (fp.neg (__kernel_cos!0 (_2!10 lt!143) (_3!10 lt!143))))))

(assert (= (and start!147 res!336) b!130))

(assert (= (and b!130 res!337) b!131))

(declare-fun m!127 () Bool)

(assert (=> start!147 m!127))

(declare-fun m!129 () Bool)

(assert (=> b!130 m!129))

(declare-fun m!131 () Bool)

(assert (=> b!131 m!131))

(push 1)

(assert (not b!130))

(assert (not b!131))

(assert (not start!147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134 () Bool)

(declare-fun lt!149 () tuple3!20)

(assert (=> d!134 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!10 lt!149)) (bvslt (_1!10 lt!149) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!10 lt!149)) (fp.leq (_2!10 lt!149) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!10 lt!149)) (fp.leq (_3!10 lt!149) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!20)

(assert (=> d!134 (= lt!149 (choose!4 x!109))))

(assert (=> d!134 (= (__ieee754_rem_pio2!0 x!109) lt!149)))

(declare-fun bs!40 () Bool)

(assert (= bs!40 d!134))

(declare-fun m!133 () Bool)

(assert (=> bs!40 m!133))

(assert (=> b!130 d!134))

(declare-fun d!136 () Bool)

(declare-fun lt!152 () (_ FloatingPoint 11 53))

(assert (=> d!136 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!152) (fp.leq lt!152 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!5 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!136 (= lt!152 (choose!5 (_2!10 lt!143) (_3!10 lt!143)))))

(assert (=> d!136 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!10 lt!143)) (fp.leq (_2!10 lt!143) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!136 (= (__kernel_cos!0 (_2!10 lt!143) (_3!10 lt!143)) lt!152)))

(declare-fun bs!41 () Bool)

(assert (= bs!41 d!136))

(declare-fun m!135 () Bool)

(assert (=> bs!41 m!135))

(assert (=> b!131 d!136))

(declare-fun d!138 () Bool)

(declare-fun c!74 () Bool)

(assert (=> d!138 (= c!74 (fp.isNaN x!109))))

(declare-fun e!119 () (_ BitVec 64))

(assert (=> d!138 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!119 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!136 () Bool)

(assert (=> b!136 (= e!119 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!137 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!137 (= e!119 (choose!3 x!109 x!109 false))))

(assert (= (and d!138 c!74) b!136))

(assert (= (and d!138 (not c!74)) b!137))

(declare-fun m!137 () Bool)

(assert (=> b!137 m!137))

(assert (=> start!147 d!138))

(push 1)

(assert (not b!137))

(assert (not d!134))

(assert (not d!136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!140 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!42 () Bool)

(assert (= bs!42 d!140))

(declare-fun m!139 () Bool)

(assert (=> bs!42 m!139))

(assert (=> b!137 d!140))

(declare-fun d!142 () Bool)

(declare-fun res!340 () tuple3!20)

(assert (=> d!142 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!10 res!340)) (bvslt (_1!10 res!340) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!10 res!340)) (fp.leq (_2!10 res!340) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!10 res!340)) (fp.leq (_3!10 res!340) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!142 true))

(assert (=> d!142 (= (choose!4 x!109) res!340)))

(assert (=> d!134 d!142))

(declare-fun d!144 () Bool)

(declare-fun res!343 () (_ FloatingPoint 11 53))

(assert (=> d!144 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!343) (fp.leq res!343 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!144 true))

(assert (=> d!144 (= (choose!5 (_2!10 lt!143) (_3!10 lt!143)) res!343)))

(assert (=> d!136 d!144))

(push 1)

(assert (not d!140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146 () Bool)

(declare-fun toBinary!49 () (_ BitVec 64))

(assert (=> d!146 (= ((_ to_fp 11 53) toBinary!49) x!109)))

(assert (=> d!146 true))

(assert (=> d!146 (= (choose!8 x!109 x!109 false) toBinary!49)))

(assert (=> d!140 d!146))

(push 1)

(check-sat)

(pop 1)

