; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2059 () Bool)

(assert start!2059)

(declare-fun res!8514 () Bool)

(declare-fun e!5976 () Bool)

(assert (=> start!2059 (=> (not res!8514) (not e!5976))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2059 (= res!8514 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2059 e!5976))

(assert (=> start!2059 true))

(declare-fun lt!5352 () (_ BitVec 32))

(declare-fun b!10567 () Bool)

(get-info :version)

(declare-datatypes ((Unit!1230 0))(
  ( (Unit!1231) )
))
(declare-datatypes ((ControlFlow!11 0))(
  ( (Return!10 (value!426 (_ FloatingPoint 11 53))) (Proceed!10 (value!427 Unit!1230)) )
))
(declare-fun Unit!1232 () Unit!1230)

(assert (=> b!10567 (= e!5976 (and (not ((_ is Return!10) (ite (and (bvslt lt!5352 #b00111110010000000000000000000000) (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000)) (Return!10 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (Proceed!10 Unit!1232)))) (let ((z!73 (fp.mul roundNearestTiesToEven x!124 x!124))) (let ((r!16 (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven z!73 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven z!73 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) r!16) (fp.leq r!16 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)) (bvslt lt!5352 #b00111111110100110011001100110011) (let ((res!121 (fp.sub roundNearestTiesToEven (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) z!73) (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven z!73 r!16) (fp.mul roundNearestTiesToEven x!124 y!27)))))) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!121)) (not (fp.leq res!121 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10567 (= lt!5352 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2059 res!8514) b!10567))

(declare-fun m!16311 () Bool)

(assert (=> b!10567 m!16311))

(check-sat (not b!10567))
(check-sat)
