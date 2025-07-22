; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!465 () Bool)

(assert start!465)

(declare-fun res!490 () Bool)

(declare-fun e!302 () Bool)

(assert (=> start!465 (=> (not res!490) (not e!302))))

(declare-fun lt!441 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(assert (=> start!465 (= res!490 (and (bvslt lt!441 #b01111111111100000000000000000000) (bvsgt lt!441 #b00111111111010010010000111111011) (bvsge lt!441 #b01000000000000101101100101111100) (or (fp.leq x!127 (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000)) (fp.leq (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127))))))

(declare-fun lt!443 () (_ BitVec 32))

(assert (=> start!465 (= lt!441 (bvand lt!443 #b01111111111111111111111111111111))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!465 (= lt!443 (__HI!0 x!127))))

(assert (=> start!465 e!302))

(assert (=> start!465 true))

(declare-fun b!413 () Bool)

(declare-datatypes ((tuple3!52 0))(
  ( (tuple3!53 (_1!26 (_ BitVec 32)) (_2!26 (_ FloatingPoint 11 53)) (_3!26 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!442 () tuple3!52)

(assert (=> b!413 (= e!302 (and (bvsge lt!443 #b00000000000000000000000000000000) (not (fp.isInfinite x!127)) (not (fp.isNaN x!127)) (or (bvsge #b11111111111111111111111111111000 (_1!26 lt!442)) (bvsge (_1!26 lt!442) #b00000000000000000000000000001000) (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (_2!26 lt!442))) (not (fp.leq (_2!26 lt!442) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (_3!26 lt!442))) (not (fp.leq (_3!26 lt!442) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(declare-fun __kernel_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!52)

(assert (=> b!413 (= lt!442 (__kernel_rem_pio2!0 (ite (bvslt lt!443 #b00000000000000000000000000000000) (fp.neg x!127) x!127)))))

(assert (= (and start!465 res!490) b!413))

(declare-fun m!401 () Bool)

(assert (=> start!465 m!401))

(declare-fun m!403 () Bool)

(assert (=> b!413 m!403))

(push 1)

(assert (not b!413))

(assert (not start!465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!419 () Bool)

(declare-fun lt!446 () tuple3!52)

(assert (=> d!419 (and (bvsle #b00000000000000000000000000000000 (_1!26 lt!446)) (bvslt (_1!26 lt!446) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101101010100010001000010110100011000) (_2!26 lt!446)) (fp.leq (_2!26 lt!446) (fp #b0 #b01111111110 #b1001001000011111101101010100010001000010110100011000)) (fp.eq (fp.add roundNearestTiesToEven (_2!26 lt!446) (_3!26 lt!446)) (_2!26 lt!446)))))

(declare-fun choose!7 ((_ FloatingPoint 11 53)) tuple3!52)

(assert (=> d!419 (= lt!446 (choose!7 (ite (bvslt lt!443 #b00000000000000000000000000000000) (fp.neg x!127) x!127)))))

(assert (=> d!419 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (ite (bvslt lt!443 #b00000000000000000000000000000000) (fp.neg x!127) x!127)) (not (fp.isInfinite (ite (bvslt lt!443 #b00000000000000000000000000000000) (fp.neg x!127) x!127))) (not (fp.isNaN (ite (bvslt lt!443 #b00000000000000000000000000000000) (fp.neg x!127) x!127))))))

(assert (=> d!419 (= (__kernel_rem_pio2!0 (ite (bvslt lt!443 #b00000000000000000000000000000000) (fp.neg x!127) x!127)) lt!446)))

(declare-fun bs!134 () Bool)

(assert (= bs!134 d!419))

(declare-fun m!405 () Bool)

(assert (=> bs!134 m!405))

(assert (=> b!413 d!419))

(declare-fun d!421 () Bool)

(declare-fun c!170 () Bool)

(assert (=> d!421 (= c!170 (fp.isNaN x!127))))

(declare-fun e!305 () (_ BitVec 64))

(assert (=> d!421 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!305 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!418 () Bool)

(assert (=> b!418 (= e!305 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!419 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!419 (= e!305 (choose!3 x!127 x!127 false))))

(assert (= (and d!421 c!170) b!418))

(assert (= (and d!421 (not c!170)) b!419))

(declare-fun m!407 () Bool)

(assert (=> b!419 m!407))

(assert (=> start!465 d!421))

(push 1)

(assert (not d!419))

(assert (not b!419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

