; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1941 () Bool)

(assert start!1941)

(declare-fun res!8832 () Bool)

(declare-fun e!5635 () Bool)

(assert (=> start!1941 (=> (not res!8832) (not e!5635))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1941 (= res!8832 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1941 e!5635))

(assert (=> start!1941 true))

(declare-fun b!10579 () Bool)

(declare-fun lt!4997 () (_ BitVec 32))

(assert (=> b!10579 (= e!5635 (or (bvsgt #b11111111111111111111111111101001 lt!4997) (bvsgt lt!4997 #b00000000000000000000001111101000)))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10579 (= lt!4997 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1941 res!8832) b!10579))

(declare-fun m!18523 () Bool)

(assert (=> b!10579 m!18523))

(push 1)

(assert (not b!10579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6260 () Bool)

(declare-fun c!1082 () Bool)

(assert (=> d!6260 (= c!1082 (fp.isNaN x!143))))

(declare-fun e!5638 () (_ BitVec 64))

(assert (=> d!6260 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5638 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10584 () Bool)

(assert (=> b!10584 (= e!5638 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10585 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10585 (= e!5638 (choose!3 x!143 x!143 false))))

(assert (= (and d!6260 c!1082) b!10584))

(assert (= (and d!6260 (not c!1082)) b!10585))

(declare-fun m!18525 () Bool)

(assert (=> b!10585 m!18525))

(assert (=> b!10579 d!6260))

(push 1)

(assert (not b!10585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6262 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!6262 (= (choose!3 x!143 x!143 false) (choose!8 x!143 x!143 false))))

(declare-fun bs!2632 () Bool)

(assert (= bs!2632 d!6262))

(declare-fun m!18527 () Bool)

(assert (=> bs!2632 m!18527))

(assert (=> b!10585 d!6262))

(push 1)

(assert (not d!6262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6264 () Bool)

(declare-fun toBinary!127 () (_ BitVec 64))

(assert (=> d!6264 (= ((_ to_fp 11 53) toBinary!127) x!143)))

(assert (=> d!6264 true))

(assert (=> d!6264 (= (choose!8 x!143 x!143 false) toBinary!127)))

(assert (=> d!6262 d!6264))

(push 1)

(check-sat)

(pop 1)

