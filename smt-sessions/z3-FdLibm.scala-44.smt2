; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445 () Bool)

(assert start!445)

(declare-fun lt!410 () (_ BitVec 32))

(declare-fun lt!409 () (_ BitVec 32))

(assert (=> start!445 (= lt!410 (bvand lt!409 #b01111111111111111111111111111111))))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!445 (= lt!409 (__HI!0 x!127))))

(assert (=> start!445 (and (bvslt lt!410 #b01111111111100000000000000000000) (bvsgt lt!410 #b00111111111010010010000111111011) (bvslt lt!410 #b01000000000000101101100101111100) (or (and (fp.lt (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127) (fp.lt x!127 (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (and (fp.lt (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127) (fp.lt x!127 (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000)))) (bvsle lt!409 #b00000000000000000000000000000000) (= lt!410 #b00111111111110010010000111111011) (let ((z!77 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven x!127 (fp #b0 #b01111111111 #b1001001000011111101101010100010000000000000000000000)) (fp #b0 #b01111011101 #b0000101101000110000100011010011000000000000000000000)))) (and (not (fp.isInfinite x!127)) (not (fp.isNaN x!127)) (or false false (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (fp.add roundNearestTiesToEven z!77 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)))) (not (fp.leq (fp.add roundNearestTiesToEven z!77 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!77 (fp.add roundNearestTiesToEven z!77 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011))) (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)))) (not (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!77 (fp.add roundNearestTiesToEven z!77 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011))) (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> start!445 true))

(declare-fun bs!127 () Bool)

(assert (= bs!127 start!445))

(declare-fun m!379 () Bool)

(assert (=> bs!127 m!379))

(check-sat (not start!445))
(check-sat)
(get-model)

(declare-fun d!357 () Bool)

(declare-fun c!161 () Bool)

(assert (=> d!357 (= c!161 (fp.isNaN x!127))))

(declare-fun e!287 () (_ BitVec 64))

(assert (=> d!357 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!287 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!391 () Bool)

(assert (=> b!391 (= e!287 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!392 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!392 (= e!287 (choose!3 x!127 x!127 false))))

(assert (= (and d!357 c!161) b!391))

(assert (= (and d!357 (not c!161)) b!392))

(declare-fun m!381 () Bool)

(assert (=> b!392 m!381))

(assert (=> start!445 d!357))

(check-sat (not b!392))
(check-sat)
(get-model)

(declare-fun d!359 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!359 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!128 () Bool)

(assert (= bs!128 d!359))

(declare-fun m!383 () Bool)

(assert (=> bs!128 m!383))

(assert (=> b!392 d!359))

(check-sat (not d!359))
(check-sat)
(get-model)

(declare-fun d!361 () Bool)

(declare-fun toBinary!124 () (_ BitVec 64))

(assert (=> d!361 (= ((_ to_fp 11 53) toBinary!124) x!127)))

(assert (=> d!361 true))

(assert (=> d!361 (= (choose!8 x!127 x!127 false) toBinary!124)))

(assert (=> d!359 d!361))

(check-sat)
