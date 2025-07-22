; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!409 () Bool)

(assert start!409)

(declare-fun lt!380 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!409 (= lt!380 (bvand (__HI!0 x!127) #b01111111111111111111111111111111))))

(assert (=> start!409 (and (bvslt lt!380 #b01111111111100000000000000000000) (bvsgt lt!380 #b00111111111010010010000111111011) (bvsge lt!380 #b01000000000000101101100101111100) (not (fp.leq x!127 (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000))) (not (fp.leq (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127)))))

(assert (=> start!409 true))

(declare-fun bs!111 () Bool)

(assert (= bs!111 start!409))

(declare-fun m!351 () Bool)

(assert (=> bs!111 m!351))

(push 1)

(assert (not start!409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!372 () Bool)

(declare-fun c!149 () Bool)

(assert (=> d!372 (= c!149 (fp.isNaN x!127))))

(declare-fun e!275 () (_ BitVec 64))

(assert (=> d!372 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!275 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!367 () Bool)

(assert (=> b!367 (= e!275 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!368 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!368 (= e!275 (choose!3 x!127 x!127 false))))

(assert (= (and d!372 c!149) b!367))

(assert (= (and d!372 (not c!149)) b!368))

(declare-fun m!353 () Bool)

(assert (=> b!368 m!353))

(assert (=> start!409 d!372))

(push 1)

(assert (not b!368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!374 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!374 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!112 () Bool)

(assert (= bs!112 d!374))

(declare-fun m!355 () Bool)

(assert (=> bs!112 m!355))

(assert (=> b!368 d!374))

(push 1)

(assert (not d!374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!376 () Bool)

(declare-fun toBinary!112 () (_ BitVec 64))

(assert (=> d!376 (= ((_ to_fp 11 53) toBinary!112) x!127)))

(assert (=> d!376 true))

(assert (=> d!376 (= (choose!8 x!127 x!127 false) toBinary!112)))

(assert (=> d!374 d!376))

(push 1)

(check-sat)

(pop 1)

