; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2007 () Bool)

(assert start!2007)

(declare-fun b!10099 () Bool)

(declare-datatypes ((Unit!1206 0))(
  ( (Unit!1207) )
))
(declare-datatypes ((ControlFlow!8 0))(
  ( (Return!7 (value!407 (_ FloatingPoint 11 53))) (Proceed!7 (value!408 Unit!1206)) )
))
(declare-fun e!5840 () ControlFlow!8)

(declare-fun Unit!1208 () Unit!1206)

(assert (=> b!10099 (= e!5840 (Proceed!7 Unit!1208))))

(declare-fun b!10100 () Bool)

(declare-fun e!5841 () Bool)

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!10100 (= e!5841 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!10101 () Bool)

(assert (=> b!10101 (= e!5840 (Return!7 x!106))))

(declare-fun b!10102 () Bool)

(declare-fun res!8091 () Bool)

(declare-fun e!5842 () Bool)

(assert (=> b!10102 (=> (not res!8091) (not e!5842))))

(get-info :version)

(assert (=> b!10102 (= res!8091 (not ((_ is Return!7) e!5840)))))

(declare-fun c!1211 () Bool)

(assert (=> b!10102 (= c!1211 e!5841)))

(declare-fun res!8092 () Bool)

(assert (=> b!10102 (=> (not res!8092) (not e!5841))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10102 (= res!8092 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun res!8090 () Bool)

(assert (=> start!2007 (=> (not res!8090) (not e!5842))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2007 (= res!8090 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2007 e!5842))

(assert (=> start!2007 true))

(declare-fun lt!5261 () (_ FloatingPoint 11 53))

(declare-fun b!10103 () Bool)

(declare-fun lt!5262 () (_ FloatingPoint 11 53))

(declare-fun lt!5260 () (_ FloatingPoint 11 53))

(declare-fun iy!11 () (_ BitVec 32))

(assert (=> b!10103 (= e!5842 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5260) (fp.leq lt!5260 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)) (not (= iy!11 #b00000000000000000000000000000000)) (let ((res!106 (fp.sub roundNearestTiesToEven x!106 (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5262 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.mul roundNearestTiesToEven lt!5261 lt!5260))) y!16) (fp.mul roundNearestTiesToEven lt!5261 (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001)))))) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!106)) (not (fp.leq res!106 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!10103 (= lt!5260 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5262 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5262 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5262 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5262 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(assert (=> b!10103 (= lt!5261 (fp.mul roundNearestTiesToEven lt!5262 x!106))))

(assert (=> b!10103 (= lt!5262 (fp.mul roundNearestTiesToEven x!106 x!106))))

(assert (= (and start!2007 res!8090) b!10102))

(assert (= (and b!10102 res!8092) b!10100))

(assert (= (and b!10102 c!1211) b!10101))

(assert (= (and b!10102 (not c!1211)) b!10099))

(assert (= (and b!10102 res!8091) b!10103))

(declare-fun m!14421 () Bool)

(assert (=> b!10102 m!14421))

(check-sat (not b!10102))
(check-sat)
