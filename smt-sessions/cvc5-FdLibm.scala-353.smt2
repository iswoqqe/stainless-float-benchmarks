; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2187 () Bool)

(assert start!2187)

(declare-fun b!11337 () Bool)

(declare-datatypes ((Unit!1267 0))(
  ( (Unit!1268) )
))
(declare-datatypes ((ControlFlow!8 0))(
  ( (Return!7 (value!761 (_ FloatingPoint 11 53))) (Proceed!7 (value!762 Unit!1267)) )
))
(declare-fun e!6164 () ControlFlow!8)

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!11337 (= e!6164 (Return!7 x!106))))

(declare-fun b!11338 () Bool)

(declare-fun res!9180 () Bool)

(declare-fun e!6165 () Bool)

(assert (=> b!11338 (=> (not res!9180) (not e!6165))))

(assert (=> b!11338 (= res!9180 (not (is-Return!7 e!6164)))))

(declare-fun c!1286 () Bool)

(declare-fun e!6166 () Bool)

(assert (=> b!11338 (= c!1286 e!6166)))

(declare-fun res!9178 () Bool)

(assert (=> b!11338 (=> (not res!9178) (not e!6166))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11338 (= res!9178 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun lt!5550 () (_ FloatingPoint 11 53))

(declare-fun b!11339 () Bool)

(declare-fun lt!5551 () (_ FloatingPoint 11 53))

(declare-fun lt!5552 () (_ FloatingPoint 11 53))

(declare-fun iy!11 () (_ BitVec 32))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> b!11339 (= e!6165 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5551) (fp.leq lt!5551 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)) (not (= iy!11 #b00000000000000000000000000000000)) (let ((res!106 (fp.sub roundNearestTiesToEven x!106 (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5552 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.mul roundNearestTiesToEven lt!5550 lt!5551))) y!16) (fp.mul roundNearestTiesToEven lt!5550 (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001)))))) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!106)) (not (fp.leq res!106 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!11339 (= lt!5551 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5552 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5552 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5552 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5552 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(assert (=> b!11339 (= lt!5550 (fp.mul roundNearestTiesToEven lt!5552 x!106))))

(assert (=> b!11339 (= lt!5552 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun b!11340 () Bool)

(declare-fun Unit!1269 () Unit!1267)

(assert (=> b!11340 (= e!6164 (Proceed!7 Unit!1269))))

(declare-fun res!9179 () Bool)

(assert (=> start!2187 (=> (not res!9179) (not e!6165))))

(assert (=> start!2187 (= res!9179 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2187 e!6165))

(assert (=> start!2187 true))

(declare-fun b!11341 () Bool)

(assert (=> b!11341 (= e!6166 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(assert (= (and start!2187 res!9179) b!11338))

(assert (= (and b!11338 res!9178) b!11341))

(assert (= (and b!11338 c!1286) b!11337))

(assert (= (and b!11338 (not c!1286)) b!11340))

(assert (= (and b!11338 res!9180) b!11339))

(declare-fun m!19089 () Bool)

(assert (=> b!11338 m!19089))

(push 1)

(assert (not b!11338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

