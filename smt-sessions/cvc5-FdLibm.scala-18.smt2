; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!189 () Bool)

(assert start!189)

(declare-fun b!170 () Bool)

(declare-fun e!146 () Bool)

(declare-fun x!86 () (_ FloatingPoint 11 53))

(assert (=> b!170 (= e!146 (or (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!86)) (not (fp.leq x!86 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))))

(declare-datatypes ((Unit!1 0))(
  ( (Unit!2) )
))
(declare-fun lt!179 () Unit!1)

(declare-fun Unit!3 () Unit!1)

(assert (=> b!170 (= lt!179 Unit!3)))

(declare-datatypes ((ControlFlow!2 0))(
  ( (Return!1 (value!79 (_ FloatingPoint 11 53))) (Proceed!1 (value!80 Unit!1)) )
))
(declare-fun lt!178 () ControlFlow!2)

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!170 (= (__kernel_sin!0 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000) (ite (is-Return!1 lt!178) (value!79 lt!178) (let ((z!38 (fp.mul roundNearestTiesToEven x!86 x!86))) (fp.add roundNearestTiesToEven x!86 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven z!38 x!86) (fp.add roundNearestTiesToEven (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven z!38 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))))))))

(declare-fun e!144 () ControlFlow!2)

(assert (=> b!170 (= lt!178 e!144)))

(declare-fun c!83 () Bool)

(declare-fun e!145 () Bool)

(assert (=> b!170 (= c!83 e!145)))

(declare-fun res!367 () Bool)

(assert (=> b!170 (=> (not res!367) (not e!145))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!170 (= res!367 (bvslt (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun res!366 () Bool)

(assert (=> start!189 (=> (not res!366) (not e!146))))

(assert (=> start!189 (= res!366 (bvsle (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!189 e!146))

(assert (=> start!189 true))

(declare-fun b!171 () Bool)

(assert (=> b!171 (= e!144 (Return!1 x!86))))

(declare-fun b!173 () Bool)

(assert (=> b!173 (= e!145 (= (ite (fp.isNaN x!86) #b00000000000000000000000000000000 (ite (fp.gt x!86 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!86 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!86)))) #b00000000000000000000000000000000))))

(declare-fun b!172 () Bool)

(declare-fun Unit!4 () Unit!1)

(assert (=> b!172 (= e!144 (Proceed!1 Unit!4))))

(assert (= (and start!189 res!366) b!170))

(assert (= (and b!170 res!367) b!173))

(assert (= (and b!170 c!83) b!171))

(assert (= (and b!170 (not c!83)) b!172))

(declare-fun m!163 () Bool)

(assert (=> b!170 m!163))

(declare-fun m!165 () Bool)

(assert (=> b!170 m!165))

(assert (=> start!189 m!165))

(push 1)

(assert (not start!189))

(assert (not b!170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!172 () Bool)

(declare-fun c!86 () Bool)

(assert (=> d!172 (= c!86 (fp.isNaN x!86))))

(declare-fun e!149 () (_ BitVec 64))

(assert (=> d!172 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!149 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!178 () Bool)

(assert (=> b!178 (= e!149 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!179 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!179 (= e!149 (choose!3 x!86 x!86 false))))

(assert (= (and d!172 c!86) b!178))

(assert (= (and d!172 (not c!86)) b!179))

(declare-fun m!167 () Bool)

(assert (=> b!179 m!167))

(assert (=> start!189 d!172))

(declare-fun d!174 () Bool)

(declare-fun lt!182 () (_ FloatingPoint 11 53))

(assert (=> d!174 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!182) (fp.leq lt!182 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!174 (= lt!182 (choose!9 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(assert (=> d!174 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!86) (fp.leq x!86 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!174 (= (__kernel_sin!0 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000) lt!182)))

(declare-fun bs!51 () Bool)

(assert (= bs!51 d!174))

(declare-fun m!169 () Bool)

(assert (=> bs!51 m!169))

(assert (=> b!170 d!174))

(assert (=> b!170 d!172))

(push 1)

(assert (not d!174))

(assert (not b!179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

