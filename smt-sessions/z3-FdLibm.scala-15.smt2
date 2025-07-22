; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!163 () Bool)

(assert start!163)

(declare-fun res!348 () Bool)

(declare-fun e!124 () Bool)

(assert (=> start!163 (=> (not res!348) (not e!124))))

(declare-fun lt!161 () (_ BitVec 32))

(assert (=> start!163 (= res!348 (and (bvsgt lt!161 #b00111111111010010010000111111011) (bvslt lt!161 #b01111111111100000000000000000000)))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!163 (= lt!161 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!163 e!124))

(assert (=> start!163 true))

(declare-fun b!142 () Bool)

(declare-fun e!125 () Bool)

(assert (=> b!142 (= e!124 e!125)))

(declare-fun res!349 () Bool)

(assert (=> b!142 (=> (not res!349) (not e!125))))

(declare-fun lt!162 () (_ BitVec 32))

(assert (=> b!142 (= res!349 (and (not (= lt!162 #b00000000000000000000000000000000)) (not (= lt!162 #b00000000000000000000000000000001)) (not (= lt!162 #b00000000000000000000000000000010))))))

(declare-datatypes ((tuple3!22 0))(
  ( (tuple3!23 (_1!11 (_ BitVec 32)) (_2!11 (_ FloatingPoint 11 53)) (_3!11 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!163 () tuple3!22)

(assert (=> b!142 (= lt!162 (bvand (_1!11 lt!163) #b00000000000000000000000000000011))))

(declare-fun __ieee754_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!22)

(assert (=> b!142 (= lt!163 (__ieee754_rem_pio2!0 x!109))))

(declare-fun b!143 () Bool)

(declare-fun lt!164 () (_ FloatingPoint 11 53))

(assert (=> b!143 (= e!125 (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN lt!164))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!164)) (not (fp.leq lt!164 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!164)))))))

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!143 (= lt!164 (__kernel_sin!0 (_2!11 lt!163) (_3!11 lt!163) #b00000000000000000000000000000001))))

(assert (= (and start!163 res!348) b!142))

(assert (= (and b!142 res!349) b!143))

(declare-fun m!141 () Bool)

(assert (=> start!163 m!141))

(declare-fun m!143 () Bool)

(assert (=> b!142 m!143))

(declare-fun m!145 () Bool)

(assert (=> b!143 m!145))

(check-sat (not start!163) (not b!142) (not b!143))
(check-sat)
(get-model)

(declare-fun d!133 () Bool)

(declare-fun c!77 () Bool)

(assert (=> d!133 (= c!77 (fp.isNaN x!109))))

(declare-fun e!128 () (_ BitVec 64))

(assert (=> d!133 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!128 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!148 () Bool)

(assert (=> b!148 (= e!128 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!149 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!149 (= e!128 (choose!3 x!109 x!109 false))))

(assert (= (and d!133 c!77) b!148))

(assert (= (and d!133 (not c!77)) b!149))

(declare-fun m!147 () Bool)

(assert (=> b!149 m!147))

(assert (=> start!163 d!133))

(declare-fun d!135 () Bool)

(declare-fun lt!167 () tuple3!22)

(assert (=> d!135 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!11 lt!167)) (bvslt (_1!11 lt!167) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!11 lt!167)) (fp.leq (_2!11 lt!167) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!11 lt!167)) (fp.leq (_3!11 lt!167) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) tuple3!22)

(assert (=> d!135 (= lt!167 (choose!4 x!109))))

(assert (=> d!135 (= (__ieee754_rem_pio2!0 x!109) lt!167)))

(declare-fun bs!44 () Bool)

(assert (= bs!44 d!135))

(declare-fun m!149 () Bool)

(assert (=> bs!44 m!149))

(assert (=> b!142 d!135))

(declare-fun d!137 () Bool)

(declare-fun lt!170 () (_ FloatingPoint 11 53))

(assert (=> d!137 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!170) (fp.leq lt!170 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!137 (= lt!170 (choose!9 (_2!11 lt!163) (_3!11 lt!163) #b00000000000000000000000000000001))))

(assert (=> d!137 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) (_2!11 lt!163)) (fp.leq (_2!11 lt!163) (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!137 (= (__kernel_sin!0 (_2!11 lt!163) (_3!11 lt!163) #b00000000000000000000000000000001) lt!170)))

(declare-fun bs!45 () Bool)

(assert (= bs!45 d!137))

(declare-fun m!151 () Bool)

(assert (=> bs!45 m!151))

(assert (=> b!143 d!137))

(check-sat (not b!149) (not d!137) (not d!135))
(check-sat)
(get-model)

(declare-fun d!139 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!139 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!46 () Bool)

(assert (= bs!46 d!139))

(declare-fun m!153 () Bool)

(assert (=> bs!46 m!153))

(assert (=> b!149 d!139))

(declare-fun d!141 () Bool)

(declare-fun res!352 () (_ FloatingPoint 11 53))

(assert (=> d!141 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!352) (fp.leq res!352 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141 true))

(assert (=> d!141 (= (choose!9 (_2!11 lt!163) (_3!11 lt!163) #b00000000000000000000000000000001) res!352)))

(assert (=> d!137 d!141))

(declare-fun d!143 () Bool)

(declare-fun res!355 () tuple3!22)

(assert (=> d!143 (or (fp.isInfinite x!109) (fp.isNaN x!109) (and (bvslt #b11111111111111111111111111111000 (_1!11 res!355)) (bvslt (_1!11 res!355) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!11 res!355)) (fp.leq (_2!11 res!355) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!11 res!355)) (fp.leq (_3!11 res!355) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> d!143 true))

(assert (=> d!143 (= (choose!4 x!109) res!355)))

(assert (=> d!135 d!143))

(check-sat (not d!139))
(check-sat)
(get-model)

(declare-fun d!145 () Bool)

(declare-fun toBinary!52 () (_ BitVec 64))

(assert (=> d!145 (= ((_ to_fp 11 53) toBinary!52) x!109)))

(assert (=> d!145 true))

(assert (=> d!145 (= (choose!8 x!109 x!109 false) toBinary!52)))

(assert (=> d!139 d!145))

(check-sat)
