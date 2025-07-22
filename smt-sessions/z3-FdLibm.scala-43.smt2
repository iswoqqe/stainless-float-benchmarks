; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437 () Bool)

(assert start!437)

(declare-fun lt!404 () (_ BitVec 32))

(declare-fun lt!403 () (_ BitVec 32))

(assert (=> start!437 (= lt!404 (bvand lt!403 #b01111111111111111111111111111111))))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!437 (= lt!403 (__HI!0 x!127))))

(assert (=> start!437 (and (bvslt lt!404 #b01111111111100000000000000000000) (bvsgt lt!404 #b00111111111010010010000111111011) (bvslt lt!404 #b01000000000000101101100101111100) (or (and (fp.lt (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127) (fp.lt x!127 (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (and (fp.lt (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127) (fp.lt x!127 (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000)))) (bvsle lt!403 #b00000000000000000000000000000000) (not (= lt!404 #b00111111111110010010000111111011)) (let ((z!76 (fp.add roundNearestTiesToEven x!127 (fp #b0 #b01111111111 #b1001001000011111101101010100010000000000000000000000)))) (and (not (fp.isInfinite x!127)) (not (fp.isNaN x!127)) (or false false (not (fp.leq (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111) (fp.add roundNearestTiesToEven z!76 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)))) (not (fp.leq (fp.add roundNearestTiesToEven z!76 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)) (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111))) (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!76 (fp.add roundNearestTiesToEven z!76 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001))) (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)))) (not (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven z!76 (fp.add roundNearestTiesToEven z!76 (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001))) (fp #b0 #b01111011101 #b0000101101000110000100011010011000100110001100110001)) (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000)))))))))

(assert (=> start!437 true))

(declare-fun bs!124 () Bool)

(assert (= bs!124 start!437))

(declare-fun m!373 () Bool)

(assert (=> bs!124 m!373))

(check-sat (not start!437))
(check-sat)
(get-model)

(declare-fun d!351 () Bool)

(declare-fun c!158 () Bool)

(assert (=> d!351 (= c!158 (fp.isNaN x!127))))

(declare-fun e!284 () (_ BitVec 64))

(assert (=> d!351 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!284 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!385 () Bool)

(assert (=> b!385 (= e!284 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!386 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!386 (= e!284 (choose!3 x!127 x!127 false))))

(assert (= (and d!351 c!158) b!385))

(assert (= (and d!351 (not c!158)) b!386))

(declare-fun m!375 () Bool)

(assert (=> b!386 m!375))

(assert (=> start!437 d!351))

(check-sat (not b!386))
(check-sat)
(get-model)

(declare-fun d!353 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!353 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!125 () Bool)

(assert (= bs!125 d!353))

(declare-fun m!377 () Bool)

(assert (=> bs!125 m!377))

(assert (=> b!386 d!353))

(check-sat (not d!353))
(check-sat)
(get-model)

(declare-fun d!355 () Bool)

(declare-fun toBinary!121 () (_ BitVec 64))

(assert (=> d!355 (= ((_ to_fp 11 53) toBinary!121) x!127)))

(assert (=> d!355 true))

(assert (=> d!355 (= (choose!8 x!127 x!127 false) toBinary!121)))

(assert (=> d!353 d!355))

(check-sat)
