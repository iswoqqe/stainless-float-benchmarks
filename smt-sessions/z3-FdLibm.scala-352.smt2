; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2005 () Bool)

(assert start!2005)

(declare-fun lt!5253 () (_ FloatingPoint 11 53))

(declare-fun iy!11 () (_ BitVec 32))

(declare-fun e!5832 () Bool)

(declare-fun b!10084 () Bool)

(declare-fun lt!5252 () (_ FloatingPoint 11 53))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!10084 (= e!5832 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5252) (fp.leq lt!5252 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)) (= iy!11 #b00000000000000000000000000000000) (let ((res!105 (fp.add roundNearestTiesToEven x!106 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5253 x!106) (fp.add roundNearestTiesToEven (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001) (fp.mul roundNearestTiesToEven lt!5253 lt!5252)))))) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!105)) (not (fp.leq res!105 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!10084 (= lt!5252 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5253 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5253 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5253 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5253 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(assert (=> b!10084 (= lt!5253 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun res!8081 () Bool)

(assert (=> start!2005 (=> (not res!8081) (not e!5832))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2005 (= res!8081 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2005 e!5832))

(assert (=> start!2005 true))

(declare-fun b!10085 () Bool)

(declare-datatypes ((Unit!1203 0))(
  ( (Unit!1204) )
))
(declare-datatypes ((ControlFlow!7 0))(
  ( (Return!6 (value!404 (_ FloatingPoint 11 53))) (Proceed!6 (value!405 Unit!1203)) )
))
(declare-fun e!5831 () ControlFlow!7)

(assert (=> b!10085 (= e!5831 (Return!6 x!106))))

(declare-fun b!10086 () Bool)

(declare-fun Unit!1205 () Unit!1203)

(assert (=> b!10086 (= e!5831 (Proceed!6 Unit!1205))))

(declare-fun b!10087 () Bool)

(declare-fun res!8083 () Bool)

(assert (=> b!10087 (=> (not res!8083) (not e!5832))))

(get-info :version)

(assert (=> b!10087 (= res!8083 (not ((_ is Return!6) e!5831)))))

(declare-fun c!1208 () Bool)

(declare-fun e!5833 () Bool)

(assert (=> b!10087 (= c!1208 e!5833)))

(declare-fun res!8082 () Bool)

(assert (=> b!10087 (=> (not res!8082) (not e!5833))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10087 (= res!8082 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10088 () Bool)

(assert (=> b!10088 (= e!5833 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(assert (= (and start!2005 res!8081) b!10087))

(assert (= (and b!10087 res!8082) b!10088))

(assert (= (and b!10087 c!1208) b!10085))

(assert (= (and b!10087 (not c!1208)) b!10086))

(assert (= (and b!10087 res!8083) b!10084))

(declare-fun m!14419 () Bool)

(assert (=> b!10087 m!14419))

(check-sat (not b!10087))
(check-sat)
