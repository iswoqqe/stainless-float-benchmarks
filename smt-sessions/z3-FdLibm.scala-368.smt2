; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2037 () Bool)

(assert start!2037)

(declare-fun b!10213 () Bool)

(declare-fun e!5918 () (_ FloatingPoint 11 53))

(assert (=> b!10213 (= e!5918 (fp #b0 #b01111111101 #b0010000000000000000000000000000000000000000000000000))))

(declare-fun b!10214 () Bool)

(declare-fun e!5919 () Bool)

(declare-fun e!5920 () Bool)

(assert (=> b!10214 (= e!5919 e!5920)))

(declare-fun res!8188 () Bool)

(assert (=> b!10214 (=> (not res!8188) (not e!5920))))

(declare-fun lt!5298 () (_ FloatingPoint 11 53))

(declare-fun lt!5295 () (_ BitVec 32))

(assert (=> b!10214 (= res!8188 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5298) (fp.leq lt!5298 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)) (bvsge lt!5295 #b00111111110100110011001100110011)))))

(declare-fun lt!5297 () (_ FloatingPoint 11 53))

(assert (=> b!10214 (= lt!5298 (fp.mul roundNearestTiesToEven lt!5297 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven lt!5297 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven lt!5297 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven lt!5297 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven lt!5297 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven lt!5297 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(assert (=> b!10214 (= lt!5297 (fp.mul roundNearestTiesToEven x!124 x!124))))

(declare-fun res!8187 () Bool)

(declare-fun e!5917 () Bool)

(assert (=> start!2037 (=> (not res!8187) (not e!5917))))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2037 (= res!8187 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2037 e!5917))

(assert (=> start!2037 true))

(declare-fun b!10215 () Bool)

(declare-fun lt!5296 () (_ FloatingPoint 11 53))

(assert (=> b!10215 (= e!5920 (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!5296)) (not (fp.leq lt!5296 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!5294 () (_ FloatingPoint 11 53))

(assert (=> b!10215 (= lt!5296 (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!5294) (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) lt!5297) lt!5294) (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5297 lt!5298) (fp.mul roundNearestTiesToEven x!124 y!27)))))))

(assert (=> b!10215 (= lt!5294 e!5918)))

(declare-fun c!1220 () Bool)

(assert (=> b!10215 (= c!1220 (bvsgt lt!5295 #b00111111111010010000000000000000))))

(declare-fun b!10216 () Bool)

(declare-fun __HI_LO!0 ((_ BitVec 32) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!10216 (= e!5918 (__HI_LO!0 (bvsub lt!5295 #b00000000001000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun b!10217 () Bool)

(assert (=> b!10217 (= e!5917 e!5919)))

(declare-fun res!8186 () Bool)

(assert (=> b!10217 (=> (not res!8186) (not e!5919))))

(get-info :version)

(declare-datatypes ((Unit!1221 0))(
  ( (Unit!1222) )
))
(declare-datatypes ((ControlFlow!13 0))(
  ( (Return!12 (value!432 (_ FloatingPoint 11 53))) (Proceed!12 (value!433 Unit!1221)) )
))
(declare-fun Unit!1223 () Unit!1221)

(assert (=> b!10217 (= res!8186 (not ((_ is Return!12) (ite (and (bvslt lt!5295 #b00111110010000000000000000000000) (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000)) (Return!12 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (Proceed!12 Unit!1223)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10217 (= lt!5295 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2037 res!8187) b!10217))

(assert (= (and b!10217 res!8186) b!10214))

(assert (= (and b!10214 res!8188) b!10215))

(assert (= (and b!10215 c!1220) b!10213))

(assert (= (and b!10215 (not c!1220)) b!10216))

(declare-fun m!14491 () Bool)

(assert (=> b!10216 m!14491))

(declare-fun m!14493 () Bool)

(assert (=> b!10217 m!14493))

(check-sat (not b!10216) (not b!10217))
(check-sat)
