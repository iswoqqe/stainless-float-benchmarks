; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!385 () Bool)

(assert start!385)

(declare-fun res!481 () Bool)

(declare-fun e!263 () Bool)

(assert (=> start!385 (=> (not res!481) (not e!263))))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!385 (= res!481 (bvsge (bvand (__HI!0 x!127) #b01111111111111111111111111111111) #b01111111111100000000000000000000))))

(assert (=> start!385 e!263))

(assert (=> start!385 true))

(declare-fun b!344 () Bool)

(assert (=> b!344 (= e!263 (and (not (fp.isInfinite x!127)) (not (fp.isNaN x!127))))))

(assert (= (and start!385 res!481) b!344))

(declare-fun m!333 () Bool)

(assert (=> start!385 m!333))

(push 1)

(assert (not start!385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!351 () Bool)

(declare-fun c!140 () Bool)

(assert (=> d!351 (= c!140 (fp.isNaN x!127))))

(declare-fun e!266 () (_ BitVec 64))

(assert (=> d!351 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!266 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!349 () Bool)

(assert (=> b!349 (= e!266 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!350 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!350 (= e!266 (choose!3 x!127 x!127 false))))

(assert (= (and d!351 c!140) b!349))

(assert (= (and d!351 (not c!140)) b!350))

(declare-fun m!335 () Bool)

(assert (=> b!350 m!335))

(assert (=> start!385 d!351))

(push 1)

(assert (not b!350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!353 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!353 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!103 () Bool)

(assert (= bs!103 d!353))

(declare-fun m!337 () Bool)

(assert (=> bs!103 m!337))

(assert (=> b!350 d!353))

(push 1)

(assert (not d!353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355 () Bool)

(declare-fun toBinary!103 () (_ BitVec 64))

(assert (=> d!355 (= ((_ to_fp 11 53) toBinary!103) x!127)))

(assert (=> d!355 true))

(assert (=> d!355 (= (choose!8 x!127 x!127 false) toBinary!103)))

(assert (=> d!353 d!355))

(push 1)

(check-sat)

(pop 1)

