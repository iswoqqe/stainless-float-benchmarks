; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2049 () Bool)

(assert start!2049)

(declare-fun b!10530 () Bool)

(declare-fun e!5955 () Bool)

(declare-fun lt!5346 () (_ FloatingPoint 11 53))

(assert (=> b!10530 (= e!5955 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5346)) (not (fp.leq lt!5346 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)))))))

(declare-fun lt!5345 () (_ FloatingPoint 11 53))

(assert (=> b!10530 (= lt!5346 (fp.mul roundNearestTiesToEven lt!5345 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven lt!5345 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven lt!5345 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven lt!5345 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven lt!5345 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven lt!5345 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(assert (=> b!10530 (= lt!5345 (fp.mul roundNearestTiesToEven x!124 x!124))))

(declare-fun res!8485 () Bool)

(assert (=> start!2049 (=> (not res!8485) (not e!5955))))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2049 (= res!8485 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2049 e!5955))

(assert (=> start!2049 true))

(declare-fun b!10531 () Bool)

(declare-datatypes ((Unit!1224 0))(
  ( (Unit!1225) )
))
(declare-datatypes ((ControlFlow!9 0))(
  ( (Return!8 (value!417 (_ FloatingPoint 11 53))) (Proceed!8 (value!418 Unit!1224)) )
))
(declare-fun e!5953 () ControlFlow!9)

(declare-fun Unit!1226 () Unit!1224)

(assert (=> b!10531 (= e!5953 (Proceed!8 Unit!1226))))

(declare-fun b!10532 () Bool)

(declare-fun e!5954 () Bool)

(assert (=> b!10532 (= e!5954 (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000))))

(declare-fun b!10533 () Bool)

(declare-fun res!8487 () Bool)

(assert (=> b!10533 (=> (not res!8487) (not e!5955))))

(get-info :version)

(assert (=> b!10533 (= res!8487 (not ((_ is Return!8) e!5953)))))

(declare-fun c!1229 () Bool)

(assert (=> b!10533 (= c!1229 e!5954)))

(declare-fun res!8486 () Bool)

(assert (=> b!10533 (=> (not res!8486) (not e!5954))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10533 (= res!8486 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10534 () Bool)

(assert (=> b!10534 (= e!5953 (Return!8 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!2049 res!8485) b!10533))

(assert (= (and b!10533 res!8486) b!10532))

(assert (= (and b!10533 c!1229) b!10534))

(assert (= (and b!10533 (not c!1229)) b!10531))

(assert (= (and b!10533 res!8487) b!10530))

(declare-fun m!16301 () Bool)

(assert (=> b!10533 m!16301))

(check-sat (not b!10533))
(check-sat)
