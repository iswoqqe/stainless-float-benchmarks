; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!107 () Bool)

(assert start!107)

(declare-fun res!307 () Bool)

(declare-fun e!89 () Bool)

(assert (=> start!107 (=> (not res!307) (not e!89))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!107 (= res!307 (bvsle (bvand (__HI!0 x!109) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!107 e!89))

(assert (=> start!107 true))

(declare-fun b!95 () Bool)

(declare-fun lt!95 () (_ FloatingPoint 11 53))

(assert (=> b!95 (= e!89 (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN lt!95))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!95)) (not (fp.leq lt!95 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!95)))))))

(declare-fun __kernel_cos!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!95 (= lt!95 (__kernel_cos!0 x!109 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!107 res!307) b!95))

(declare-fun m!89 () Bool)

(assert (=> start!107 m!89))

(declare-fun m!91 () Bool)

(assert (=> b!95 m!91))

(push 1)

(assert (not start!107))

(assert (not b!95))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98 () Bool)

(declare-fun c!65 () Bool)

(assert (=> d!98 (= c!65 (fp.isNaN x!109))))

(declare-fun e!92 () (_ BitVec 64))

(assert (=> d!98 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!92 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!100 () Bool)

(assert (=> b!100 (= e!92 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!101 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!101 (= e!92 (choose!3 x!109 x!109 false))))

(assert (= (and d!98 c!65) b!100))

(assert (= (and d!98 (not c!65)) b!101))

(declare-fun m!93 () Bool)

(assert (=> b!101 m!93))

(assert (=> start!107 d!98))

(declare-fun d!100 () Bool)

(declare-fun lt!98 () (_ FloatingPoint 11 53))

(assert (=> d!100 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!98) (fp.leq lt!98 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!5 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!100 (= lt!98 (choose!5 x!109 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!100 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!109) (fp.leq x!109 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!100 (= (__kernel_cos!0 x!109 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) lt!98)))

(declare-fun bs!28 () Bool)

(assert (= bs!28 d!100))

(declare-fun m!95 () Bool)

(assert (=> bs!28 m!95))

(assert (=> b!95 d!100))

(push 1)

(assert (not d!100))

(assert (not b!101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

