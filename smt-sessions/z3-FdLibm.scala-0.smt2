; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1 () Bool)

(assert start!1)

(declare-fun res!253 () Bool)

(declare-fun e!32 () Bool)

(assert (=> start!1 (=> (not res!253) (not e!32))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!1 (= res!253 (bvsle (bvand (__HI!0 x!109) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!1 e!32))

(assert (=> start!1 true))

(declare-fun b!11 () Bool)

(assert (=> b!11 (= e!32 (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!109)) (not (fp.leq x!109 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))))

(assert (= (and start!1 res!253) b!11))

(declare-fun m!1 () Bool)

(assert (=> start!1 m!1))

(check-sat (not start!1))
(check-sat)
(get-model)

(declare-fun d!1 () Bool)

(declare-fun c!38 () Bool)

(assert (=> d!1 (= c!38 (fp.isNaN x!109))))

(declare-fun e!35 () (_ BitVec 64))

(assert (=> d!1 (= (__HI!0 x!109) ((_ extract 31 0) (bvashr e!35 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!16 () Bool)

(assert (=> b!16 (= e!35 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!17 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!17 (= e!35 (choose!3 x!109 x!109 false))))

(assert (= (and d!1 c!38) b!16))

(assert (= (and d!1 (not c!38)) b!17))

(declare-fun m!3 () Bool)

(assert (=> b!17 m!3))

(assert (=> start!1 d!1))

(check-sat (not b!17))
(check-sat)
(get-model)

(declare-fun d!3 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!3 (= (choose!3 x!109 x!109 false) (choose!8 x!109 x!109 false))))

(declare-fun bs!1 () Bool)

(assert (= bs!1 d!3))

(declare-fun m!5 () Bool)

(assert (=> bs!1 m!5))

(assert (=> b!17 d!3))

(check-sat (not d!3))
(check-sat)
(get-model)

(declare-fun d!5 () Bool)

(declare-fun toBinary!16 () (_ BitVec 64))

(assert (=> d!5 (= ((_ to_fp 11 53) toBinary!16) x!109)))

(assert (=> d!5 true))

(assert (=> d!5 (= (choose!8 x!109 x!109 false) toBinary!16)))

(assert (=> d!3 d!5))

(check-sat)
