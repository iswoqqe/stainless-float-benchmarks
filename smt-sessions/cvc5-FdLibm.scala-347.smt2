; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2175 () Bool)

(assert start!2175)

(declare-fun b!11277 () Bool)

(declare-fun e!6128 () Bool)

(declare-fun lt!5533 () (_ FloatingPoint 11 53))

(assert (=> b!11277 (= e!6128 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5533)) (not (fp.leq lt!5533 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)))))))

(declare-fun lt!5534 () (_ FloatingPoint 11 53))

(assert (=> b!11277 (= lt!5533 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5534 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5534 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5534 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5534 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!11277 (= lt!5534 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun res!9136 () Bool)

(assert (=> start!2175 (=> (not res!9136) (not e!6128))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2175 (= res!9136 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2175 e!6128))

(assert (=> start!2175 true))

(declare-fun b!11278 () Bool)

(declare-datatypes ((Unit!1258 0))(
  ( (Unit!1259) )
))
(declare-datatypes ((ControlFlow!5 0))(
  ( (Return!4 (value!743 (_ FloatingPoint 11 53))) (Proceed!4 (value!744 Unit!1258)) )
))
(declare-fun e!6130 () ControlFlow!5)

(assert (=> b!11278 (= e!6130 (Return!4 x!106))))

(declare-fun b!11279 () Bool)

(declare-fun Unit!1260 () Unit!1258)

(assert (=> b!11279 (= e!6130 (Proceed!4 Unit!1260))))

(declare-fun b!11280 () Bool)

(declare-fun e!6129 () Bool)

(assert (=> b!11280 (= e!6129 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!11281 () Bool)

(declare-fun res!9137 () Bool)

(assert (=> b!11281 (=> (not res!9137) (not e!6128))))

(assert (=> b!11281 (= res!9137 (not (is-Return!4 e!6130)))))

(declare-fun c!1277 () Bool)

(assert (=> b!11281 (= c!1277 e!6129)))

(declare-fun res!9138 () Bool)

(assert (=> b!11281 (=> (not res!9138) (not e!6129))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11281 (= res!9138 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(assert (= (and start!2175 res!9136) b!11281))

(assert (= (and b!11281 res!9138) b!11280))

(assert (= (and b!11281 c!1277) b!11278))

(assert (= (and b!11281 (not c!1277)) b!11279))

(assert (= (and b!11281 res!9137) b!11277))

(declare-fun m!19077 () Bool)

(assert (=> b!11281 m!19077))

(push 1)

(assert (not b!11281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

