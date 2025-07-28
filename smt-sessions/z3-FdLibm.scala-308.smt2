; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1817 () Bool)

(assert start!1817)

(declare-fun res!8097 () Bool)

(declare-fun e!5400 () Bool)

(assert (=> start!1817 (=> (not res!8097) (not e!5400))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1817 (= res!8097 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1817 e!5400))

(assert (=> start!1817 true))

(declare-fun b!9748 () Bool)

(declare-fun lt!4779 () (_ BitVec 32))

(assert (=> b!9748 (= e!5400 (or (bvsgt #b11111111111111111111111111101001 lt!4779) (bvsgt lt!4779 #b00000000000000000000001111101000)))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9748 (= lt!4779 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1817 res!8097) b!9748))

(declare-fun m!15727 () Bool)

(assert (=> b!9748 m!15727))

(check-sat (not b!9748))
(check-sat)
(get-model)

(declare-fun d!4743 () Bool)

(declare-fun c!1034 () Bool)

(assert (=> d!4743 (= c!1034 (fp.isNaN x!143))))

(declare-fun e!5403 () (_ BitVec 64))

(assert (=> d!4743 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5403 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9753 () Bool)

(assert (=> b!9753 (= e!5403 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9754 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9754 (= e!5403 (choose!3 x!143 x!143 false))))

(assert (= (and d!4743 c!1034) b!9753))

(assert (= (and d!4743 (not c!1034)) b!9754))

(declare-fun m!15729 () Bool)

(assert (=> b!9754 m!15729))

(assert (=> b!9748 d!4743))

(check-sat (not b!9754))
(check-sat)
(get-model)

(declare-fun d!4745 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!4745 (= (choose!3 x!143 x!143 false) (choose!8 x!143 x!143 false))))

(declare-fun bs!2099 () Bool)

(assert (= bs!2099 d!4745))

(declare-fun m!15731 () Bool)

(assert (=> bs!2099 m!15731))

(assert (=> b!9754 d!4745))

(check-sat (not d!4745))
(check-sat)
(get-model)

(declare-fun d!4747 () Bool)

(declare-fun toBinary!127 () (_ BitVec 64))

(assert (=> d!4747 (= ((_ to_fp 11 53) toBinary!127) x!143)))

(assert (=> d!4747 true))

(assert (=> d!4747 (= (choose!8 x!143 x!143 false) toBinary!127)))

(assert (=> d!4745 d!4747))

(check-sat)
