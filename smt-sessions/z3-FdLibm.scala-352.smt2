; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2031 () Bool)

(assert start!2031)

(declare-fun b!10452 () Bool)

(declare-fun e!5902 () Bool)

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!10452 (= e!5902 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!10453 () Bool)

(declare-fun lt!5325 () (_ FloatingPoint 11 53))

(declare-fun e!5903 () Bool)

(declare-fun iy!11 () (_ BitVec 32))

(declare-fun lt!5324 () (_ FloatingPoint 11 53))

(assert (=> b!10453 (= e!5903 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5324) (fp.leq lt!5324 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)) (= iy!11 #b00000000000000000000000000000000) (let ((res!105 (fp.add roundNearestTiesToEven x!106 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5325 x!106) (fp.add roundNearestTiesToEven (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001) (fp.mul roundNearestTiesToEven lt!5325 lt!5324)))))) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!105)) (not (fp.leq res!105 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!10453 (= lt!5324 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5325 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5325 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5325 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5325 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(assert (=> b!10453 (= lt!5325 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun b!10454 () Bool)

(declare-datatypes ((Unit!1218 0))(
  ( (Unit!1219) )
))
(declare-datatypes ((ControlFlow!7 0))(
  ( (Return!6 (value!404 (_ FloatingPoint 11 53))) (Proceed!6 (value!405 Unit!1218)) )
))
(declare-fun e!5904 () ControlFlow!7)

(assert (=> b!10454 (= e!5904 (Return!6 x!106))))

(declare-fun res!8419 () Bool)

(assert (=> start!2031 (=> (not res!8419) (not e!5903))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2031 (= res!8419 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2031 e!5903))

(assert (=> start!2031 true))

(declare-fun b!10455 () Bool)

(declare-fun res!8420 () Bool)

(assert (=> b!10455 (=> (not res!8420) (not e!5903))))

(get-info :version)

(assert (=> b!10455 (= res!8420 (not ((_ is Return!6) e!5904)))))

(declare-fun c!1223 () Bool)

(assert (=> b!10455 (= c!1223 e!5902)))

(declare-fun res!8421 () Bool)

(assert (=> b!10455 (=> (not res!8421) (not e!5902))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10455 (= res!8421 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10456 () Bool)

(declare-fun Unit!1220 () Unit!1218)

(assert (=> b!10456 (= e!5904 (Proceed!6 Unit!1220))))

(assert (= (and start!2031 res!8419) b!10455))

(assert (= (and b!10455 res!8421) b!10452))

(assert (= (and b!10455 c!1223) b!10454))

(assert (= (and b!10455 (not c!1223)) b!10456))

(assert (= (and b!10455 res!8420) b!10453))

(declare-fun m!16243 () Bool)

(assert (=> b!10455 m!16243))

(check-sat (not b!10455))
(check-sat)
