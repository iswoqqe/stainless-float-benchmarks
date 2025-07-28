; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2021 () Bool)

(assert start!2021)

(declare-fun b!10407 () Bool)

(declare-fun e!5877 () Bool)

(declare-fun lt!5315 () (_ FloatingPoint 11 53))

(assert (=> b!10407 (= e!5877 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5315)) (not (fp.leq lt!5315 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)))))))

(declare-fun lt!5316 () (_ FloatingPoint 11 53))

(assert (=> b!10407 (= lt!5315 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5316 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5316 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5316 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5316 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!10407 (= lt!5316 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun res!8388 () Bool)

(assert (=> start!2021 (=> (not res!8388) (not e!5877))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2021 (= res!8388 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2021 e!5877))

(assert (=> start!2021 true))

(declare-fun b!10408 () Bool)

(declare-fun res!8386 () Bool)

(assert (=> b!10408 (=> (not res!8386) (not e!5877))))

(declare-datatypes ((Unit!1212 0))(
  ( (Unit!1213) )
))
(declare-datatypes ((ControlFlow!5 0))(
  ( (Return!4 (value!395 (_ FloatingPoint 11 53))) (Proceed!4 (value!396 Unit!1212)) )
))
(declare-fun e!5876 () ControlFlow!5)

(get-info :version)

(assert (=> b!10408 (= res!8386 (not ((_ is Return!4) e!5876)))))

(declare-fun c!1217 () Bool)

(declare-fun e!5875 () Bool)

(assert (=> b!10408 (= c!1217 e!5875)))

(declare-fun res!8387 () Bool)

(assert (=> b!10408 (=> (not res!8387) (not e!5875))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10408 (= res!8387 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10409 () Bool)

(assert (=> b!10409 (= e!5876 (Return!4 x!106))))

(declare-fun b!10410 () Bool)

(assert (=> b!10410 (= e!5875 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!10411 () Bool)

(declare-fun Unit!1214 () Unit!1212)

(assert (=> b!10411 (= e!5876 (Proceed!4 Unit!1214))))

(assert (= (and start!2021 res!8388) b!10408))

(assert (= (and b!10408 res!8387) b!10410))

(assert (= (and b!10408 c!1217) b!10409))

(assert (= (and b!10408 (not c!1217)) b!10411))

(assert (= (and b!10408 res!8386) b!10407))

(declare-fun m!16233 () Bool)

(assert (=> b!10408 m!16233))

(check-sat (not b!10408))
(check-sat)
