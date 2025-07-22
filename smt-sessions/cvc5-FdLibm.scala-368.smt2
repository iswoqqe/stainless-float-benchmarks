; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2217 () Bool)

(assert start!2217)

(declare-fun res!9276 () Bool)

(declare-fun e!6242 () Bool)

(assert (=> start!2217 (=> (not res!9276) (not e!6242))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2217 (= res!9276 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2217 e!6242))

(assert (=> start!2217 true))

(declare-fun b!11451 () Bool)

(declare-fun e!6241 () Bool)

(declare-fun lt!5586 () (_ FloatingPoint 11 53))

(assert (=> b!11451 (= e!6241 (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!5586)) (not (fp.leq lt!5586 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!5588 () (_ FloatingPoint 11 53))

(declare-fun lt!5587 () (_ FloatingPoint 11 53))

(declare-fun lt!5584 () (_ FloatingPoint 11 53))

(assert (=> b!11451 (= lt!5586 (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!5588) (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) lt!5584) lt!5588) (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven lt!5584 lt!5587) (fp.mul roundNearestTiesToEven x!124 y!27)))))))

(declare-fun e!6244 () (_ FloatingPoint 11 53))

(assert (=> b!11451 (= lt!5588 e!6244)))

(declare-fun c!1295 () Bool)

(declare-fun lt!5585 () (_ BitVec 32))

(assert (=> b!11451 (= c!1295 (bvsgt lt!5585 #b00111111111010010000000000000000))))

(declare-fun b!11452 () Bool)

(declare-fun __HI_LO!0 ((_ BitVec 32) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!11452 (= e!6244 (__HI_LO!0 (bvsub lt!5585 #b00000000001000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun b!11453 () Bool)

(declare-fun e!6243 () Bool)

(assert (=> b!11453 (= e!6243 e!6241)))

(declare-fun res!9275 () Bool)

(assert (=> b!11453 (=> (not res!9275) (not e!6241))))

(assert (=> b!11453 (= res!9275 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!5587) (fp.leq lt!5587 (fp #b0 #b01111111001 #b1010010100011010011111001010000000001010101010011100)) (bvsge lt!5585 #b00111111110100110011001100110011)))))

(assert (=> b!11453 (= lt!5587 (fp.mul roundNearestTiesToEven lt!5584 (fp.add roundNearestTiesToEven (fp #b0 #b01111111010 #b0101010101010101010101010101010101010101010101001100) (fp.mul roundNearestTiesToEven lt!5584 (fp.add roundNearestTiesToEven (fp #b1 #b01111110101 #b0110110000010110110000010110110000010101000101110111) (fp.mul roundNearestTiesToEven lt!5584 (fp.add roundNearestTiesToEven (fp #b0 #b01111101111 #b1010000000011010000000011001110010110001010110010000) (fp.mul roundNearestTiesToEven lt!5584 (fp.add roundNearestTiesToEven (fp #b1 #b01111101001 #b0010011111100100111110000000100111000101001010101101) (fp.mul roundNearestTiesToEven lt!5584 (fp.add roundNearestTiesToEven (fp #b0 #b01111100010 #b0001111011101001111010111101101101001011000111000100) (fp.mul roundNearestTiesToEven lt!5584 (fp #b1 #b01111011010 #b1000111110101110100110111110100010000011100011010100)))))))))))))))

(assert (=> b!11453 (= lt!5584 (fp.mul roundNearestTiesToEven x!124 x!124))))

(declare-fun b!11454 () Bool)

(assert (=> b!11454 (= e!6244 (fp #b0 #b01111111101 #b0010000000000000000000000000000000000000000000000000))))

(declare-fun b!11455 () Bool)

(assert (=> b!11455 (= e!6242 e!6243)))

(declare-fun res!9274 () Bool)

(assert (=> b!11455 (=> (not res!9274) (not e!6243))))

(declare-datatypes ((Unit!1282 0))(
  ( (Unit!1283) )
))
(declare-datatypes ((ControlFlow!13 0))(
  ( (Return!12 (value!801 (_ FloatingPoint 11 53))) (Proceed!12 (value!802 Unit!1282)) )
))
(declare-fun Unit!1284 () Unit!1282)

(assert (=> b!11455 (= res!9274 (not (is-Return!12 (ite (and (bvslt lt!5585 #b00111110010000000000000000000000) (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000)) (Return!12 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (Proceed!12 Unit!1284)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11455 (= lt!5585 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2217 res!9276) b!11455))

(assert (= (and b!11455 res!9274) b!11453))

(assert (= (and b!11453 res!9275) b!11451))

(assert (= (and b!11451 c!1295) b!11454))

(assert (= (and b!11451 (not c!1295)) b!11452))

(declare-fun m!19159 () Bool)

(assert (=> b!11452 m!19159))

(declare-fun m!19161 () Bool)

(assert (=> b!11455 m!19161))

(push 1)

(assert (not b!11455))

(assert (not b!11452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6494 () Bool)

(declare-fun c!1298 () Bool)

(assert (=> d!6494 (= c!1298 (fp.isNaN x!124))))

(declare-fun e!6247 () (_ BitVec 64))

(assert (=> d!6494 (= (__HI!0 x!124) ((_ extract 31 0) (bvashr e!6247 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!11460 () Bool)

(assert (=> b!11460 (= e!6247 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11461 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11461 (= e!6247 (choose!3 x!124 x!124 false))))

(assert (= (and d!6494 c!1298) b!11460))

(assert (= (and d!6494 (not c!1298)) b!11461))

(declare-fun m!19163 () Bool)

(assert (=> b!11461 m!19163))

(assert (=> b!11455 d!6494))

(declare-fun d!6496 () Bool)

(assert (=> d!6496 (= (__HI_LO!0 (bvsub lt!5585 #b00000000001000000000000000000000) #b00000000000000000000000000000000) ((_ to_fp 11 53) (bvor (bvshl ((_ sign_extend 32) (bvsub lt!5585 #b00000000001000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000100000) (bvand ((_ sign_extend 32) #b00000000000000000000000000000000) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(assert (=> b!11452 d!6496))

(push 1)

(assert (not b!11461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

