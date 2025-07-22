; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!429 () Bool)

(assert start!429)

(declare-fun lt!398 () (_ BitVec 32))

(declare-fun lt!397 () (_ BitVec 32))

(assert (=> start!429 (= lt!398 (bvand lt!397 #b01111111111111111111111111111111))))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!429 (= lt!397 (__HI!0 x!127))))

(assert (=> start!429 (and (bvslt lt!398 #b01111111111100000000000000000000) (bvsgt lt!398 #b00111111111010010010000111111011) (bvslt lt!398 #b01000000000000101101100101111100) (or (and (fp.lt (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127) (fp.lt x!127 (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (and (fp.lt (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127) (fp.lt x!127 (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000)))) (bvsgt lt!397 #b00000000000000000000000000000000) (= lt!398 #b00111111111110010010000111111011) (let ((z!75 (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven x!127 (fp #b0 #b01111111111 #b1001001000011111101101010100010000000000000000000000)) (fp #b0 #b01111011101 #b0000101101000110000100011010011000000000000000000000)))) (and (not (fp.isInfinite x!127)) (not (fp.isNaN x!127)) (or false false (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (fp.sub roundNearestTiesToEven z!75 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)))) (not (fp.leq (fp.sub roundNearestTiesToEven z!75 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!75 (fp.sub roundNearestTiesToEven z!75 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011))) (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)))) (not (fp.leq (fp.sub roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!75 (fp.sub roundNearestTiesToEven z!75 (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011))) (fp #b0 #b01110111010 #b0011000110011000101000101110000000110111000001110011)) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> start!429 true))

(declare-fun bs!121 () Bool)

(assert (= bs!121 start!429))

(declare-fun m!367 () Bool)

(assert (=> bs!121 m!367))

(push 1)

(assert (not start!429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!388 () Bool)

(declare-fun c!155 () Bool)

(assert (=> d!388 (= c!155 (fp.isNaN x!127))))

(declare-fun e!281 () (_ BitVec 64))

(assert (=> d!388 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!281 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!379 () Bool)

(assert (=> b!379 (= e!281 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!380 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!380 (= e!281 (choose!3 x!127 x!127 false))))

(assert (= (and d!388 c!155) b!379))

(assert (= (and d!388 (not c!155)) b!380))

(declare-fun m!369 () Bool)

(assert (=> b!380 m!369))

(assert (=> start!429 d!388))

(push 1)

(assert (not b!380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!390 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!390 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!122 () Bool)

(assert (= bs!122 d!390))

(declare-fun m!371 () Bool)

(assert (=> bs!122 m!371))

(assert (=> b!380 d!390))

(push 1)

(assert (not d!390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!392 () Bool)

(declare-fun toBinary!118 () (_ BitVec 64))

(assert (=> d!392 (= ((_ to_fp 11 53) toBinary!118) x!127)))

(assert (=> d!392 true))

(assert (=> d!392 (= (choose!8 x!127 x!127 false) toBinary!118)))

(assert (=> d!390 d!392))

(push 1)

(check-sat)

(pop 1)

