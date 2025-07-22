; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2203 () Bool)

(assert start!2203)

(declare-fun b!11400 () Bool)

(declare-fun res!9235 () Bool)

(declare-fun e!6207 () Bool)

(assert (=> b!11400 (=> (not res!9235) (not e!6207))))

(declare-datatypes ((Unit!1270 0))(
  ( (Unit!1271) )
))
(declare-datatypes ((ControlFlow!9 0))(
  ( (Return!8 (value!779 (_ FloatingPoint 11 53))) (Proceed!8 (value!780 Unit!1270)) )
))
(declare-fun e!6206 () ControlFlow!9)

(assert (=> b!11400 (= res!9235 (not (is-Return!8 e!6206)))))

(declare-fun c!1289 () Bool)

(declare-fun e!6208 () Bool)

(assert (=> b!11400 (= c!1289 e!6208)))

(declare-fun res!9237 () Bool)

(assert (=> b!11400 (=> (not res!9237) (not e!6208))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11400 (= res!9237 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11401 () Bool)

(declare-fun Unit!1272 () Unit!1270)

(assert (=> b!11401 (= e!6206 (Proceed!8 Unit!1272))))

(declare-fun b!11402 () Bool)

(declare-fun lt!5563 () (_ FloatingPoint 11 53))

(assert (=> b!11402 (= e!6207 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5563)) (not (fp.leq lt!5563 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)))))))

(declare-fun lt!5564 () (_ FloatingPoint 11 53))

(assert (=> b!11402 (= lt!5563 (fp.mul roundNearestTiesToEven lt!5564 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven lt!5564 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven lt!5564 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven lt!5564 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven lt!5564 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven lt!5564 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))))

(assert (=> b!11402 (= lt!5564 (fp.mul roundNearestTiesToEven x!124 x!124))))

(declare-fun b!11403 () Bool)

(assert (=> b!11403 (= e!6208 (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000))))

(declare-fun b!11404 () Bool)

(assert (=> b!11404 (= e!6206 (Return!8 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun res!9236 () Bool)

(assert (=> start!2203 (=> (not res!9236) (not e!6207))))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2203 (= res!9236 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2203 e!6207))

(assert (=> start!2203 true))

(assert (= (and start!2203 res!9236) b!11400))

(assert (= (and b!11400 res!9237) b!11403))

(assert (= (and b!11400 c!1289) b!11404))

(assert (= (and b!11400 (not c!1289)) b!11401))

(assert (= (and b!11400 res!9235) b!11402))

(declare-fun m!19145 () Bool)

(assert (=> b!11400 m!19145))

(push 1)

(assert (not b!11400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

