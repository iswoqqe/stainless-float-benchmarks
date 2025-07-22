; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!459 () Bool)

(assert start!459)

(declare-fun res!487 () Bool)

(declare-fun e!296 () Bool)

(assert (=> start!459 (=> (not res!487) (not e!296))))

(declare-fun lt!430 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(assert (=> start!459 (= res!487 (and (bvslt lt!430 #b01111111111100000000000000000000) (bvsgt lt!430 #b00111111111010010010000111111011) (bvsge lt!430 #b01000000000000101101100101111100) (or (fp.leq x!127 (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000)) (fp.leq (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127))))))

(declare-fun lt!429 () (_ BitVec 32))

(assert (=> start!459 (= lt!430 (bvand lt!429 #b01111111111111111111111111111111))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!459 (= lt!429 (__HI!0 x!127))))

(assert (=> start!459 e!296))

(assert (=> start!459 true))

(declare-datatypes ((tuple3!50 0))(
  ( (tuple3!51 (_1!25 (_ BitVec 32)) (_2!25 (_ FloatingPoint 11 53)) (_3!25 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!431 () tuple3!50)

(declare-fun b!404 () Bool)

(assert (=> b!404 (= e!296 (and (bvslt lt!429 #b00000000000000000000000000000000) (not (fp.isInfinite x!127)) (not (fp.isNaN x!127)) (or (bvsge #b11111111111111111111111111111000 (bvneg (_1!25 lt!431))) (bvsge (bvneg (_1!25 lt!431)) #b00000000000000000000000000001000) (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (fp.neg (_2!25 lt!431)))) (not (fp.leq (fp.neg (_2!25 lt!431)) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (fp.neg (_3!25 lt!431)))) (not (fp.leq (fp.neg (_3!25 lt!431)) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(declare-fun __kernel_rem_pio2!0 ((_ FloatingPoint 11 53)) tuple3!50)

(assert (=> b!404 (= lt!431 (__kernel_rem_pio2!0 (ite (bvslt lt!429 #b00000000000000000000000000000000) (fp.neg x!127) x!127)))))

(assert (= (and start!459 res!487) b!404))

(declare-fun m!393 () Bool)

(assert (=> start!459 m!393))

(declare-fun m!395 () Bool)

(assert (=> b!404 m!395))

(push 1)

(assert (not start!459))

(assert (not b!404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!414 () Bool)

(declare-fun c!167 () Bool)

(assert (=> d!414 (= c!167 (fp.isNaN x!127))))

(declare-fun e!299 () (_ BitVec 64))

(assert (=> d!414 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!299 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!409 () Bool)

(assert (=> b!409 (= e!299 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!410 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!410 (= e!299 (choose!3 x!127 x!127 false))))

(assert (= (and d!414 c!167) b!409))

(assert (= (and d!414 (not c!167)) b!410))

(declare-fun m!397 () Bool)

(assert (=> b!410 m!397))

(assert (=> start!459 d!414))

(declare-fun d!416 () Bool)

(declare-fun lt!434 () tuple3!50)

(assert (=> d!416 (and (bvsle #b00000000000000000000000000000000 (_1!25 lt!434)) (bvslt (_1!25 lt!434) #b00000000000000000000000000001000) (fp.leq (fp #b1 #b01111111110 #b1001001000011111101101010100010001000010110100011000) (_2!25 lt!434)) (fp.leq (_2!25 lt!434) (fp #b0 #b01111111110 #b1001001000011111101101010100010001000010110100011000)) (fp.eq (fp.add roundNearestTiesToEven (_2!25 lt!434) (_3!25 lt!434)) (_2!25 lt!434)))))

(declare-fun choose!7 ((_ FloatingPoint 11 53)) tuple3!50)

(assert (=> d!416 (= lt!434 (choose!7 (ite (bvslt lt!429 #b00000000000000000000000000000000) (fp.neg x!127) x!127)))))

(assert (=> d!416 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (ite (bvslt lt!429 #b00000000000000000000000000000000) (fp.neg x!127) x!127)) (not (fp.isInfinite (ite (bvslt lt!429 #b00000000000000000000000000000000) (fp.neg x!127) x!127))) (not (fp.isNaN (ite (bvslt lt!429 #b00000000000000000000000000000000) (fp.neg x!127) x!127))))))

(assert (=> d!416 (= (__kernel_rem_pio2!0 (ite (bvslt lt!429 #b00000000000000000000000000000000) (fp.neg x!127) x!127)) lt!434)))

(declare-fun bs!132 () Bool)

(assert (= bs!132 d!416))

(declare-fun m!399 () Bool)

(assert (=> bs!132 m!399))

(assert (=> b!404 d!416))

(push 1)

(assert (not d!416))

(assert (not b!410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

