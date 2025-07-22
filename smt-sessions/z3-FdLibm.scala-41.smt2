; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!421 () Bool)

(assert start!421)

(declare-fun lt!392 () (_ BitVec 32))

(declare-fun lt!391 () (_ BitVec 32))

(assert (=> start!421 (= lt!392 (bvand lt!391 #b01111111111111111111111111111111))))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!421 (= lt!391 (__HI!0 x!127))))

(assert (=> start!421 (and (bvslt lt!392 #b01111111111100000000000000000000) (bvsgt lt!392 #b00111111111010010010000111111011) (bvslt lt!392 #b01000000000000101101100101111100) (or (and (fp.lt (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127) (fp.lt x!127 (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (and (fp.lt (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127) (fp.lt x!127 (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000)))) (bvsgt lt!391 #b00000000000000000000000000000000) (not (= lt!392 #b00111111111110010010000111111011)) (let ((z!74 (fp.sub roundNearestTiesToEven x!127 (fp #b0 #b01111111111 #b1001001000011111101101010100010000000000000000000000)))) (and (not (fp.isInfinite x!127)) (not (fp.isNaN x!127)) (or false false (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (fp.sub roundNearestTiesToEven z!74 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)))) (not (fp.leq (fp.sub roundNearestTiesToEven z!74 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!74 (fp.sub roundNearestTiesToEven z!74 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001))) (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)))) (not (fp.leq (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!74 (fp.sub roundNearestTiesToEven z!74 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001))) (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> start!421 true))

(declare-fun bs!118 () Bool)

(assert (= bs!118 start!421))

(declare-fun m!361 () Bool)

(assert (=> bs!118 m!361))

(check-sat (not start!421))
(check-sat)
(get-model)

(declare-fun d!339 () Bool)

(declare-fun c!152 () Bool)

(assert (=> d!339 (= c!152 (fp.isNaN x!127))))

(declare-fun e!278 () (_ BitVec 64))

(assert (=> d!339 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!278 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!373 () Bool)

(assert (=> b!373 (= e!278 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!374 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!374 (= e!278 (choose!3 x!127 x!127 false))))

(assert (= (and d!339 c!152) b!373))

(assert (= (and d!339 (not c!152)) b!374))

(declare-fun m!363 () Bool)

(assert (=> b!374 m!363))

(assert (=> start!421 d!339))

(check-sat (not b!374))
(check-sat)
(get-model)

(declare-fun d!341 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!341 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!119 () Bool)

(assert (= bs!119 d!341))

(declare-fun m!365 () Bool)

(assert (=> bs!119 m!365))

(assert (=> b!374 d!341))

(check-sat (not d!341))
(check-sat)
(get-model)

(declare-fun d!343 () Bool)

(declare-fun toBinary!115 () (_ BitVec 64))

(assert (=> d!343 (= ((_ to_fp 11 53) toBinary!115) x!127)))

(assert (=> d!343 true))

(assert (=> d!343 (= (choose!8 x!127 x!127 false) toBinary!115)))

(assert (=> d!341 d!343))

(check-sat)
