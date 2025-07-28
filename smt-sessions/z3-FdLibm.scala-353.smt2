; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2033 () Bool)

(assert start!2033)

(declare-fun b!10467 () Bool)

(declare-datatypes ((Unit!1221 0))(
  ( (Unit!1222) )
))
(declare-datatypes ((ControlFlow!8 0))(
  ( (Return!7 (value!407 (_ FloatingPoint 11 53))) (Proceed!7 (value!408 Unit!1221)) )
))
(declare-fun e!5913 () ControlFlow!8)

(declare-fun Unit!1223 () Unit!1221)

(assert (=> b!10467 (= e!5913 (Proceed!7 Unit!1223))))

(declare-fun res!8430 () Bool)

(declare-fun e!5912 () Bool)

(assert (=> start!2033 (=> (not res!8430) (not e!5912))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2033 (= res!8430 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2033 e!5912))

(assert (=> start!2033 true))

(declare-fun lt!5332 () (_ FloatingPoint 11 53))

(declare-fun lt!5334 () (_ FloatingPoint 11 53))

(declare-fun iy!11 () (_ BitVec 32))

(declare-fun b!10468 () Bool)

(declare-fun lt!5333 () (_ FloatingPoint 11 53))

(assert (=> b!10468 (= e!5912 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5332) (fp.leq lt!5332 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)) (not (= iy!11 #b00000000000000000000000000000000)) (let ((res!106 (fp.sub roundNearestTiesToEven x!106 (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5334 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.mul roundNearestTiesToEven lt!5333 lt!5332))) y!16) (fp.mul roundNearestTiesToEven lt!5333 (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001)))))) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!106)) (not (fp.leq res!106 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!10468 (= lt!5332 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5334 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5334 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5334 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5334 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(assert (=> b!10468 (= lt!5333 (fp.mul roundNearestTiesToEven lt!5334 x!106))))

(assert (=> b!10468 (= lt!5334 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun b!10469 () Bool)

(declare-fun res!8428 () Bool)

(assert (=> b!10469 (=> (not res!8428) (not e!5912))))

(get-info :version)

(assert (=> b!10469 (= res!8428 (not ((_ is Return!7) e!5913)))))

(declare-fun c!1226 () Bool)

(declare-fun e!5911 () Bool)

(assert (=> b!10469 (= c!1226 e!5911)))

(declare-fun res!8429 () Bool)

(assert (=> b!10469 (=> (not res!8429) (not e!5911))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10469 (= res!8429 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10470 () Bool)

(assert (=> b!10470 (= e!5911 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!10471 () Bool)

(assert (=> b!10471 (= e!5913 (Return!7 x!106))))

(assert (= (and start!2033 res!8430) b!10469))

(assert (= (and b!10469 res!8429) b!10470))

(assert (= (and b!10469 c!1226) b!10471))

(assert (= (and b!10469 (not c!1226)) b!10467))

(assert (= (and b!10469 res!8428) b!10468))

(declare-fun m!16245 () Bool)

(assert (=> b!10469 m!16245))

(check-sat (not b!10469))
(check-sat)
