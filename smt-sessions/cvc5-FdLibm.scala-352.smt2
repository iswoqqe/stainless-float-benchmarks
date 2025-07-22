; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2185 () Bool)

(assert start!2185)

(declare-fun b!11322 () Bool)

(declare-datatypes ((Unit!1264 0))(
  ( (Unit!1265) )
))
(declare-datatypes ((ControlFlow!7 0))(
  ( (Return!6 (value!757 (_ FloatingPoint 11 53))) (Proceed!6 (value!758 Unit!1264)) )
))
(declare-fun e!6156 () ControlFlow!7)

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!11322 (= e!6156 (Return!6 x!106))))

(declare-fun b!11323 () Bool)

(declare-fun e!6155 () Bool)

(assert (=> b!11323 (= e!6155 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!11324 () Bool)

(declare-fun Unit!1266 () Unit!1264)

(assert (=> b!11324 (= e!6156 (Proceed!6 Unit!1266))))

(declare-fun b!11325 () Bool)

(declare-fun res!9170 () Bool)

(declare-fun e!6157 () Bool)

(assert (=> b!11325 (=> (not res!9170) (not e!6157))))

(assert (=> b!11325 (= res!9170 (not (is-Return!6 e!6156)))))

(declare-fun c!1283 () Bool)

(assert (=> b!11325 (= c!1283 e!6155)))

(declare-fun res!9169 () Bool)

(assert (=> b!11325 (=> (not res!9169) (not e!6155))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11325 (= res!9169 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11326 () Bool)

(declare-fun lt!5542 () (_ FloatingPoint 11 53))

(declare-fun lt!5543 () (_ FloatingPoint 11 53))

(declare-fun iy!11 () (_ BitVec 32))

(assert (=> b!11326 (= e!6157 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5542) (fp.leq lt!5542 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)) (= iy!11 #b00000000000000000000000000000000) (let ((res!105 (fp.add roundNearestTiesToEven x!106 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5543 x!106) (fp.add roundNearestTiesToEven (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001) (fp.mul roundNearestTiesToEven lt!5543 lt!5542)))))) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!105)) (not (fp.leq res!105 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!11326 (= lt!5542 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5543 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5543 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5543 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5543 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(assert (=> b!11326 (= lt!5543 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun res!9171 () Bool)

(assert (=> start!2185 (=> (not res!9171) (not e!6157))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2185 (= res!9171 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2185 e!6157))

(assert (=> start!2185 true))

(assert (= (and start!2185 res!9171) b!11325))

(assert (= (and b!11325 res!9169) b!11323))

(assert (= (and b!11325 c!1283) b!11322))

(assert (= (and b!11325 (not c!1283)) b!11324))

(assert (= (and b!11325 res!9170) b!11326))

(declare-fun m!19087 () Bool)

(assert (=> b!11325 m!19087))

(push 1)

(assert (not b!11325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

