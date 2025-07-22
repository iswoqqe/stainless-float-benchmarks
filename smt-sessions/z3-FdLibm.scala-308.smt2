; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1791 () Bool)

(assert start!1791)

(declare-fun res!7759 () Bool)

(declare-fun e!5329 () Bool)

(assert (=> start!1791 (=> (not res!7759) (not e!5329))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1791 (= res!7759 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1791 e!5329))

(assert (=> start!1791 true))

(declare-fun b!9380 () Bool)

(declare-fun lt!4707 () (_ BitVec 32))

(assert (=> b!9380 (= e!5329 (or (bvsgt #b11111111111111111111111111101001 lt!4707) (bvsgt lt!4707 #b00000000000000000000001111101000)))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9380 (= lt!4707 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1791 res!7759) b!9380))

(declare-fun m!13903 () Bool)

(assert (=> b!9380 m!13903))

(check-sat (not b!9380))
(check-sat)
(get-model)

(declare-fun d!4037 () Bool)

(declare-fun c!1019 () Bool)

(assert (=> d!4037 (= c!1019 (fp.isNaN x!143))))

(declare-fun e!5332 () (_ BitVec 64))

(assert (=> d!4037 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5332 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9385 () Bool)

(assert (=> b!9385 (= e!5332 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9386 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9386 (= e!5332 (choose!3 x!143 x!143 false))))

(assert (= (and d!4037 c!1019) b!9385))

(assert (= (and d!4037 (not c!1019)) b!9386))

(declare-fun m!13905 () Bool)

(assert (=> b!9386 m!13905))

(assert (=> b!9380 d!4037))

(check-sat (not b!9386))
(check-sat)
(get-model)

(declare-fun d!4039 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!4039 (= (choose!3 x!143 x!143 false) (choose!8 x!143 x!143 false))))

(declare-fun bs!1640 () Bool)

(assert (= bs!1640 d!4039))

(declare-fun m!13907 () Bool)

(assert (=> bs!1640 m!13907))

(assert (=> b!9386 d!4039))

(check-sat (not d!4039))
(check-sat)
(get-model)

(declare-fun d!4041 () Bool)

(declare-fun toBinary!127 () (_ BitVec 64))

(assert (=> d!4041 (= ((_ to_fp 11 53) toBinary!127) x!143)))

(assert (=> d!4041 true))

(assert (=> d!4041 (= (choose!8 x!143 x!143 false) toBinary!127)))

(assert (=> d!4039 d!4041))

(check-sat)
