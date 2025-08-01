; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2061 () Bool)

(assert start!2061)

(declare-fun res!8517 () Bool)

(declare-fun e!5979 () Bool)

(assert (=> start!2061 (=> (not res!8517) (not e!5979))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2061 (= res!8517 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2061 e!5979))

(assert (=> start!2061 true))

(declare-fun b!10570 () Bool)

(declare-fun lt!5355 () (_ BitVec 32))

(get-info :version)

(declare-datatypes ((Unit!1233 0))(
  ( (Unit!1234) )
))
(declare-datatypes ((ControlFlow!12 0))(
  ( (Return!11 (value!429 (_ FloatingPoint 11 53))) (Proceed!11 (value!430 Unit!1233)) )
))
(declare-fun Unit!1235 () Unit!1233)

(assert (=> b!10570 (= e!5979 (and (not ((_ is Return!11) (ite (and (bvslt lt!5355 #b00111110010000000000000000000000) (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000)) (Return!11 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (Proceed!11 Unit!1235)))) (let ((z!73 (fp.mul roundNearestTiesToEven x!124 x!124))) (let ((r!16 (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven z!73 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) r!16) (fp.leq r!16 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)) (bvsge lt!5355 #b00111111110100110011001100110011) (bvsle lt!5355 #b00111111111010010000000000000000) (not (= (bvand lt!5355 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand lt!5355 #b10000000000000000000000000000000) (bvand (bvsub lt!5355 #b00000000001000000000000000000000) #b10000000000000000000000000000000))))))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10570 (= lt!5355 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2061 res!8517) b!10570))

(declare-fun m!16313 () Bool)

(assert (=> b!10570 m!16313))

(check-sat (not b!10570))
(check-sat)
