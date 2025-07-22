; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!163 () Bool)

(assert start!163)

(declare-fun res!348 () Bool)

(declare-fun e!124 () Bool)

(assert (=> start!163 (=> (not res!348) (not e!124))))

(declare-fun lt!163 () (_ BitVec 32))

(assert (=> start!163 (= res!348 (and (bvsgt lt!163 #b00111111111010010010000111111011) (bvslt lt!163 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!163 (= lt!163 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!163 e!124))

(assert (=> start!163 true))

(declare-fun b!142 () Bool)

(declare-fun e!125 () Bool)

(assert (=> b!142 (= e!124 e!125)))

(declare-fun res!349 () Bool)

(assert (=> b!142 (=> (not res!349) (not e!125))))

(declare-fun lt!164 () (_ BitVec 32))

(assert (=> b!142 (= res!349 (and (not (= lt!164 #b00000000000000000000000000000000)) (not (= lt!164 #b00000000000000000000000000000001)) (not (= lt!164 #b00000000000000000000000000000010))))))

(declare-datatypes ((tuple3!22 0))(
  ( (tuple3!23 (_1!11 (_ BitVec 32)) (_2!11 (_ FloatingPoint 11 53)) (_3!11 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!161 () tuple3!22)

(assert (=> b!142 (= lt!164 (bvand (_1!11 lt!161) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!22)

(assert (=> b!142 (= lt!161 (__ieee754_rem_pio2!0 x!109))))

(declare-fun b!143 () Bool)

(declare-fun lt!162 () (_ FloatingPoint 11 53))

(assert (=> b!143 (= e!125 (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN lt!162))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!162)) (not (fp.leq lt!162 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!162)))))))

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!143 (= lt!162 (__kernel_sin!0 (_2!11 lt!161) (_3!11 lt!161) #b00000000000000000000000000000001))))

(assert (= (and start!163 res!348) b!142))

(assert (= (and b!142 res!349) b!143))

(declare-fun m!141 () Bool)

(assert (=> start!163 m!141))

(declare-fun m!143 () Bool)

(assert (=> b!142 m!143))

(declare-fun m!145 () Bool)

(assert (=> b!143 m!145))

(push 1)

(assert (not start!163))

(assert (not b!142))

(assert (not b!143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149 () Bool)

(declare-fun c!77 () Bool)

(assert (=> d!149 (= c!77 (fp.isNaN x!109))))

(declare-fun e!128 () (_ BitVec 64))

(assert (=> d!149 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!128 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!148 () Bool)

(assert (=> b!148 (= e!128 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!149 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!149 (= e!128 (choose!3 x!109 x!109 false))))

(assert (= (and d!149 c!77) b!148))

(assert (= (and d!149 (not c!77)) b!149))

(declare-fun m!147 () Bool)

(assert (=> b!149 m!147))

(assert (=> start!163 d!149))

(declare-fun d!151 () Bool)

(declare-fun lt!167 () tuple3!22)

(assert (=> d!151 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!11 lt!167)) (bvslt (_1!11 lt!167) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!11 lt!167)) (fp.leq (_2!11 lt!167) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!11 lt!167)) (fp.leq (_3!11 lt!167) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!22)

(assert (=> d!151 (= lt!167 (choose!4 x!109))))

(assert (=> d!151 (= (__ieee754_rem_pio2!0 x!109) lt!167)))

(declare-fun bs!44 () Bool)

(assert (= bs!44 d!151))

(declare-fun m!149 () Bool)

(assert (=> bs!44 m!149))

(assert (=> b!142 d!151))

(declare-fun d!153 () Bool)

(declare-fun lt!170 () (_ FloatingPoint 11 53))

(assert (=> d!153 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!170) (fp.leq lt!170 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!153 (= lt!170 (choose!9 (_2!11 lt!161) (_3!11 lt!161) #b00000000000000000000000000000001))))

(assert (=> d!153 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!11 lt!161)) (fp.leq (_2!11 lt!161) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!153 (= (__kernel_sin!0 (_2!11 lt!161) (_3!11 lt!161) #b00000000000000000000000000000001) lt!170)))

(declare-fun bs!45 () Bool)

(assert (= bs!45 d!153))

(declare-fun m!151 () Bool)

(assert (=> bs!45 m!151))

(assert (=> b!143 d!153))

(push 1)

(assert (not b!149))

(assert (not d!153))

(assert (not d!151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!155 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!155 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!46 () Bool)

(assert (= bs!46 d!155))

(declare-fun m!153 () Bool)

(assert (=> bs!46 m!153))

(assert (=> b!149 d!155))

(declare-fun d!157 () Bool)

(declare-fun res!352 () (_ FloatingPoint 11 53))

(assert (=> d!157 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!352) (fp.leq res!352 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!157 true))

(assert (=> d!157 (= (choose!9 (_2!11 lt!161) (_3!11 lt!161) #b00000000000000000000000000000001) res!352)))

(assert (=> d!153 d!157))

(declare-fun d!159 () Bool)

(declare-fun res!355 () tuple3!22)

(assert (=> d!159 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!11 res!355)) (bvslt (_1!11 res!355) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!11 res!355)) (fp.leq (_2!11 res!355) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!11 res!355)) (fp.leq (_3!11 res!355) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!159 true))

(assert (=> d!159 (= (choose!4 x!109) res!355)))

(assert (=> d!151 d!159))

(push 1)

(assert (not d!155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161 () Bool)

(declare-fun toBinary!52 () (_ BitVec 64))

(assert (=> d!161 (= ((_ to_fp 11 53) toBinary!52) x!109)))

(assert (=> d!161 true))

(assert (=> d!161 (= (choose!8 x!109 x!109 false) toBinary!52)))

(assert (=> d!155 d!161))

(push 1)

(check-sat)

(pop 1)

