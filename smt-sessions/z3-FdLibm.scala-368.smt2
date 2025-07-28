; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2063 () Bool)

(assert start!2063)

(declare-fun b!10581 () Bool)

(declare-fun e!5989 () Bool)

(declare-fun lt!5370 () (_ FloatingPoint 11 53))

(assert (=> b!10581 (= e!5989 (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!5370)) (not (fp.leq lt!5370 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!5366 () (_ FloatingPoint 11 53))

(declare-fun lt!5368 () (_ FloatingPoint 11 53))

(declare-fun lt!5367 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(assert (=> b!10581 (= lt!5370 (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!5366) (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) lt!5368) lt!5366) (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5368 lt!5367) (fp.mul roundNearestTiesToEven x!124 y!27)))))))

(declare-fun e!5991 () (_ FloatingPoint 11 53))

(assert (=> b!10581 (= lt!5366 e!5991)))

(declare-fun c!1235 () Bool)

(declare-fun lt!5369 () (_ BitVec 32))

(assert (=> b!10581 (= c!1235 (bvsgt lt!5369 #b00111111111010010000000000000000))))

(declare-fun b!10582 () Bool)

(declare-fun e!5990 () Bool)

(assert (=> b!10582 (= e!5990 e!5989)))

(declare-fun res!8524 () Bool)

(assert (=> b!10582 (=> (not res!8524) (not e!5989))))

(assert (=> b!10582 (= res!8524 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5367) (fp.leq lt!5367 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)) (bvsge lt!5369 #b00111111110100110011001100110011)))))

(assert (=> b!10582 (= lt!5367 (fp.mul roundNearestTiesToEven lt!5368 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven lt!5368 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven lt!5368 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven lt!5368 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven lt!5368 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven lt!5368 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))))

(assert (=> b!10582 (= lt!5368 (fp.mul roundNearestTiesToEven x!124 x!124))))

(declare-fun b!10583 () Bool)

(declare-fun __HI_LO!0 ((_ BitVec 32) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!10583 (= e!5991 (__HI_LO!0 (bvsub lt!5369 #b00000000001000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun res!8525 () Bool)

(declare-fun e!5988 () Bool)

(assert (=> start!2063 (=> (not res!8525) (not e!5988))))

(assert (=> start!2063 (= res!8525 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2063 e!5988))

(assert (=> start!2063 true))

(declare-fun b!10584 () Bool)

(assert (=> b!10584 (= e!5991 (fp #b0 #b01111111101 #b0010000000000000000000000000000000000000000000000000))))

(declare-fun b!10585 () Bool)

(assert (=> b!10585 (= e!5988 e!5990)))

(declare-fun res!8526 () Bool)

(assert (=> b!10585 (=> (not res!8526) (not e!5990))))

(get-info :version)

(declare-datatypes ((Unit!1236 0))(
  ( (Unit!1237) )
))
(declare-datatypes ((ControlFlow!13 0))(
  ( (Return!12 (value!432 (_ FloatingPoint 11 53))) (Proceed!12 (value!433 Unit!1236)) )
))
(declare-fun Unit!1238 () Unit!1236)

(assert (=> b!10585 (= res!8526 (not ((_ is Return!12) (ite (and (bvslt lt!5369 #b00111110010000000000000000000000) (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000)) (Return!12 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (Proceed!12 Unit!1238)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10585 (= lt!5369 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2063 res!8525) b!10585))

(assert (= (and b!10585 res!8526) b!10582))

(assert (= (and b!10582 res!8524) b!10581))

(assert (= (and b!10581 c!1235) b!10584))

(assert (= (and b!10581 (not c!1235)) b!10583))

(declare-fun m!16315 () Bool)

(assert (=> b!10583 m!16315))

(declare-fun m!16317 () Bool)

(assert (=> b!10585 m!16317))

(check-sat (not b!10585) (not b!10583))
(check-sat)
(get-model)

(declare-fun d!4869 () Bool)

(declare-fun c!1238 () Bool)

(assert (=> d!4869 (= c!1238 (fp.isNaN x!124))))

(declare-fun e!5994 () (_ BitVec 64))

(assert (=> d!4869 (= (__HI!0 x!124) ((_ extract 31 0) (bvashr e!5994 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10590 () Bool)

(assert (=> b!10590 (= e!5994 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10591 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10591 (= e!5994 (choose!3 x!124 x!124 false))))

(assert (= (and d!4869 c!1238) b!10590))

(assert (= (and d!4869 (not c!1238)) b!10591))

(declare-fun m!16319 () Bool)

(assert (=> b!10591 m!16319))

(assert (=> b!10585 d!4869))

(declare-fun d!4871 () Bool)

(assert (=> d!4871 (= (__HI_LO!0 (bvsub lt!5369 #b00000000001000000000000000000000) #b00000000000000000000000000000000) ((_ to_fp 11 53) (bvor (bvshl ((_ sign_extend 32) (bvsub lt!5369 #b00000000001000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000100000) (bvand ((_ sign_extend 32) #b00000000000000000000000000000000) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(assert (=> b!10583 d!4871))

(check-sat (not b!10591))
(check-sat)
