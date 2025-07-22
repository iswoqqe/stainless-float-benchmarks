; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293 () Bool)

(assert start!293)

(declare-fun b!272 () Bool)

(declare-fun e!215 () Bool)

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun lt!289 () (_ FloatingPoint 11 53))

(assert (=> b!272 (= e!215 (or (not (= (or (fp.isInfinite x!86) (fp.isNaN x!86)) (fp.isNaN lt!289))) (and (= x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!289 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (= x!86 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= lt!289 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!289)) (not (fp.leq lt!289 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN lt!289)))))))

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!272 (= lt!289 (__kernel_sin!0 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9 0))(
  ( (Unit!10) )
))
(declare-fun lt!290 () Unit!9)

(declare-fun Unit!11 () Unit!9)

(assert (=> b!272 (= lt!290 Unit!11)))

(declare-datatypes ((ControlFlow!4 0))(
  ( (Return!3 (value!74 (_ FloatingPoint 11 53))) (Proceed!3 (value!75 Unit!9)) )
))
(declare-fun lt!288 () ControlFlow!4)

(get-info :version)

(assert (=> b!272 (= (__kernel_sin!0 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000) (ite ((_ is Return!3) lt!288) (value!74 lt!288) (let ((z!38 (fp.mul roundNearestTiesToEven x!86 x!86))) (fp.add roundNearestTiesToEven x!86 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven z!38 x!86) (fp.add roundNearestTiesToEven (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven z!38 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))))))))

(declare-fun e!214 () ControlFlow!4)

(assert (=> b!272 (= lt!288 e!214)))

(declare-fun c!116 () Bool)

(declare-fun e!213 () Bool)

(assert (=> b!272 (= c!116 e!213)))

(declare-fun res!426 () Bool)

(assert (=> b!272 (=> (not res!426) (not e!213))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!272 (= res!426 (bvslt (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!274 () Bool)

(declare-fun Unit!12 () Unit!9)

(assert (=> b!274 (= e!214 (Proceed!3 Unit!12))))

(declare-fun b!273 () Bool)

(assert (=> b!273 (= e!214 (Return!3 x!86))))

(declare-fun res!427 () Bool)

(assert (=> start!293 (=> (not res!427) (not e!215))))

(assert (=> start!293 (= res!427 (bvsle (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!293 e!215))

(assert (=> start!293 true))

(declare-fun b!275 () Bool)

(assert (=> b!275 (= e!213 (= (ite (fp.isNaN x!86) #b00000000000000000000000000000000 (ite (fp.gt x!86 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!86 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!86)))) #b00000000000000000000000000000000))))

(assert (= (and start!293 res!427) b!272))

(assert (= (and b!272 res!426) b!275))

(assert (= (and b!272 c!116) b!273))

(assert (= (and b!272 (not c!116)) b!274))

(declare-fun m!255 () Bool)

(assert (=> b!272 m!255))

(declare-fun m!257 () Bool)

(assert (=> b!272 m!257))

(assert (=> start!293 m!257))

(check-sat (not b!272) (not start!293))
(check-sat)
(get-model)

(declare-fun d!237 () Bool)

(declare-fun lt!293 () (_ FloatingPoint 11 53))

(assert (=> d!237 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!293) (fp.leq lt!293 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun choose!9 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> d!237 (= lt!293 (choose!9 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(assert (=> d!237 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!86) (fp.leq x!86 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)))))

(assert (=> d!237 (= (__kernel_sin!0 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000) lt!293)))

(declare-fun bs!78 () Bool)

(assert (= bs!78 d!237))

(declare-fun m!259 () Bool)

(assert (=> bs!78 m!259))

(assert (=> b!272 d!237))

(declare-fun d!239 () Bool)

(declare-fun c!119 () Bool)

(assert (=> d!239 (= c!119 (fp.isNaN x!86))))

(declare-fun e!218 () (_ BitVec 64))

(assert (=> d!239 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!218 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!280 () Bool)

(assert (=> b!280 (= e!218 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!281 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!281 (= e!218 (choose!3 x!86 x!86 false))))

(assert (= (and d!239 c!119) b!280))

(assert (= (and d!239 (not c!119)) b!281))

(declare-fun m!261 () Bool)

(assert (=> b!281 m!261))

(assert (=> b!272 d!239))

(assert (=> start!293 d!239))

(check-sat (not d!237) (not b!281))
(check-sat)
(get-model)

(declare-fun d!241 () Bool)

(declare-fun res!430 () (_ FloatingPoint 11 53))

(assert (=> d!241 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!430) (fp.leq res!430 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!241 true))

(assert (=> d!241 (= (choose!9 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000) res!430)))

(assert (=> d!237 d!241))

(declare-fun d!243 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!243 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!79 () Bool)

(assert (= bs!79 d!243))

(declare-fun m!263 () Bool)

(assert (=> bs!79 m!263))

(assert (=> b!281 d!243))

(check-sat (not d!243))
(check-sat)
(get-model)

(declare-fun d!245 () Bool)

(declare-fun toBinary!82 () (_ BitVec 64))

(assert (=> d!245 (= ((_ to_fp 11 53) toBinary!82) x!86)))

(assert (=> d!245 true))

(assert (=> d!245 (= (choose!8 x!86 x!86 false) toBinary!82)))

(assert (=> d!243 d!245))

(check-sat)
