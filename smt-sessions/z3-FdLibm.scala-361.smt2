; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2023 () Bool)

(assert start!2023)

(declare-fun b!10162 () Bool)

(declare-fun e!5883 () Bool)

(declare-fun x!124 () (_ FloatingPoint 11 53))

(assert (=> b!10162 (= e!5883 (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000))))

(declare-fun res!8148 () Bool)

(declare-fun e!5882 () Bool)

(assert (=> start!2023 (=> (not res!8148) (not e!5882))))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2023 (= res!8148 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2023 e!5882))

(assert (=> start!2023 true))

(declare-fun b!10163 () Bool)

(declare-datatypes ((Unit!1209 0))(
  ( (Unit!1210) )
))
(declare-datatypes ((ControlFlow!9 0))(
  ( (Return!8 (value!417 (_ FloatingPoint 11 53))) (Proceed!8 (value!418 Unit!1209)) )
))
(declare-fun e!5884 () ControlFlow!9)

(assert (=> b!10163 (= e!5884 (Return!8 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun b!10164 () Bool)

(declare-fun res!8147 () Bool)

(assert (=> b!10164 (=> (not res!8147) (not e!5882))))

(get-info :version)

(assert (=> b!10164 (= res!8147 (not ((_ is Return!8) e!5884)))))

(declare-fun c!1214 () Bool)

(assert (=> b!10164 (= c!1214 e!5883)))

(declare-fun res!8149 () Bool)

(assert (=> b!10164 (=> (not res!8149) (not e!5883))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10164 (= res!8149 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10165 () Bool)

(declare-fun lt!5274 () (_ FloatingPoint 11 53))

(assert (=> b!10165 (= e!5882 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5274)) (not (fp.leq lt!5274 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)))))))

(declare-fun lt!5273 () (_ FloatingPoint 11 53))

(assert (=> b!10165 (= lt!5274 (fp.mul roundNearestTiesToEven lt!5273 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven lt!5273 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven lt!5273 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven lt!5273 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven lt!5273 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven lt!5273 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))))

(assert (=> b!10165 (= lt!5273 (fp.mul roundNearestTiesToEven x!124 x!124))))

(declare-fun b!10166 () Bool)

(declare-fun Unit!1211 () Unit!1209)

(assert (=> b!10166 (= e!5884 (Proceed!8 Unit!1211))))

(assert (= (and start!2023 res!8148) b!10164))

(assert (= (and b!10164 res!8149) b!10162))

(assert (= (and b!10164 c!1214) b!10163))

(assert (= (and b!10164 (not c!1214)) b!10166))

(assert (= (and b!10164 res!8147) b!10165))

(declare-fun m!14477 () Bool)

(assert (=> b!10164 m!14477))

(check-sat (not b!10164))
(check-sat)
