; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!393 () Bool)

(assert start!393)

(declare-fun lt!374 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!393 (= lt!374 (bvand (__HI!0 x!127) #b01111111111111111111111111111111))))

(assert (=> start!393 (and (bvslt lt!374 #b01111111111100000000000000000000) (bvsle lt!374 #b00111111111010010010000111111011) (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127)) (not (fp.leq x!127 (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111)))))))

(assert (=> start!393 true))

(declare-fun bs!105 () Bool)

(assert (= bs!105 start!393))

(declare-fun m!339 () Bool)

(assert (=> bs!105 m!339))

(push 1)

(assert (not start!393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!358 () Bool)

(declare-fun c!143 () Bool)

(assert (=> d!358 (= c!143 (fp.isNaN x!127))))

(declare-fun e!269 () (_ BitVec 64))

(assert (=> d!358 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!269 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!355 () Bool)

(assert (=> b!355 (= e!269 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!356 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!356 (= e!269 (choose!3 x!127 x!127 false))))

(assert (= (and d!358 c!143) b!355))

(assert (= (and d!358 (not c!143)) b!356))

(declare-fun m!341 () Bool)

(assert (=> b!356 m!341))

(assert (=> start!393 d!358))

(push 1)

(assert (not b!356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!360 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!360 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!106 () Bool)

(assert (= bs!106 d!360))

(declare-fun m!343 () Bool)

(assert (=> bs!106 m!343))

(assert (=> b!356 d!360))

(push 1)

(assert (not d!360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!362 () Bool)

(declare-fun toBinary!106 () (_ BitVec 64))

(assert (=> d!362 (= ((_ to_fp 11 53) toBinary!106) x!127)))

(assert (=> d!362 true))

(assert (=> d!362 (= (choose!8 x!127 x!127 false) toBinary!106)))

(assert (=> d!360 d!362))

(push 1)

(check-sat)

(pop 1)

