; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1995 () Bool)

(assert start!1995)

(declare-fun b!10039 () Bool)

(declare-datatypes ((Unit!1197 0))(
  ( (Unit!1198) )
))
(declare-datatypes ((ControlFlow!5 0))(
  ( (Return!4 (value!395 (_ FloatingPoint 11 53))) (Proceed!4 (value!396 Unit!1197)) )
))
(declare-fun e!5806 () ControlFlow!5)

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!10039 (= e!5806 (Return!4 x!106))))

(declare-fun b!10040 () Bool)

(declare-fun e!5805 () Bool)

(declare-fun lt!5243 () (_ FloatingPoint 11 53))

(assert (=> b!10040 (= e!5805 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5243)) (not (fp.leq lt!5243 (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110)))))))

(declare-fun lt!5244 () (_ FloatingPoint 11 53))

(assert (=> b!10040 (= lt!5243 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven lt!5244 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven lt!5244 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven lt!5244 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven lt!5244 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))

(assert (=> b!10040 (= lt!5244 (fp.mul roundNearestTiesToEven x!106 x!106))))

(declare-fun b!10041 () Bool)

(declare-fun res!8049 () Bool)

(assert (=> b!10041 (=> (not res!8049) (not e!5805))))

(get-info :version)

(assert (=> b!10041 (= res!8049 (not ((_ is Return!4) e!5806)))))

(declare-fun c!1202 () Bool)

(declare-fun e!5804 () Bool)

(assert (=> b!10041 (= c!1202 e!5804)))

(declare-fun res!8048 () Bool)

(assert (=> b!10041 (=> (not res!8048) (not e!5804))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10041 (= res!8048 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10042 () Bool)

(assert (=> b!10042 (= e!5804 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!10043 () Bool)

(declare-fun Unit!1199 () Unit!1197)

(assert (=> b!10043 (= e!5806 (Proceed!4 Unit!1199))))

(declare-fun res!8050 () Bool)

(assert (=> start!1995 (=> (not res!8050) (not e!5805))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!1995 (= res!8050 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!1995 e!5805))

(assert (=> start!1995 true))

(assert (= (and start!1995 res!8050) b!10041))

(assert (= (and b!10041 res!8048) b!10042))

(assert (= (and b!10041 c!1202) b!10039))

(assert (= (and b!10041 (not c!1202)) b!10043))

(assert (= (and b!10041 res!8049) b!10040))

(declare-fun m!14409 () Bool)

(assert (=> b!10041 m!14409))

(check-sat (not b!10041))
(check-sat)
