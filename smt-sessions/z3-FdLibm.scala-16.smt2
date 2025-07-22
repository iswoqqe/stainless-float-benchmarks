; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179 () Bool)

(assert start!179)

(declare-fun res!358 () Bool)

(declare-fun e!131 () Bool)

(assert (=> start!179 (=> (not res!358) (not e!131))))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!179 (= res!358 (bvsle (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!179 e!131))

(assert (=> start!179 true))

(declare-fun b!152 () Bool)

(assert (=> b!152 (= e!131 (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!86)) (not (fp.leq x!86 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))))

(assert (= (and start!179 res!358) b!152))

(declare-fun m!155 () Bool)

(assert (=> start!179 m!155))

(check-sat (not start!179))
(check-sat)
(get-model)

(declare-fun d!147 () Bool)

(declare-fun c!80 () Bool)

(assert (=> d!147 (= c!80 (fp.isNaN x!86))))

(declare-fun e!134 () (_ BitVec 64))

(assert (=> d!147 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!134 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!157 () Bool)

(assert (=> b!157 (= e!134 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!158 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!158 (= e!134 (choose!3 x!86 x!86 false))))

(assert (= (and d!147 c!80) b!157))

(assert (= (and d!147 (not c!80)) b!158))

(declare-fun m!157 () Bool)

(assert (=> b!158 m!157))

(assert (=> start!179 d!147))

(check-sat (not b!158))
(check-sat)
(get-model)

(declare-fun d!149 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!149 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!48 () Bool)

(assert (= bs!48 d!149))

(declare-fun m!159 () Bool)

(assert (=> bs!48 m!159))

(assert (=> b!158 d!149))

(check-sat (not d!149))
(check-sat)
(get-model)

(declare-fun d!151 () Bool)

(declare-fun toBinary!55 () (_ BitVec 64))

(assert (=> d!151 (= ((_ to_fp 11 53) toBinary!55) x!86)))

(assert (=> d!151 true))

(assert (=> d!151 (= (choose!8 x!86 x!86 false) toBinary!55)))

(assert (=> d!149 d!151))

(check-sat)
