; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377 () Bool)

(assert start!377)

(declare-fun lt!371 () (_ BitVec 32))

(declare-fun lt!370 () (_ BitVec 32))

(assert (=> start!377 (= lt!371 (bvand lt!370 #b01111111111111111111111111111111))))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!377 (= lt!370 (__HI!0 x!127))))

(assert (=> start!377 (and (bvslt lt!371 #b01111111111100000000000000000000) (bvsgt lt!371 #b00111111111010010010000111111011) (bvsge lt!371 #b01000000000000101101100101111100) (or (fp.leq x!127 (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000)) (fp.leq (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127)) (let ((abs!3 (ite (bvslt lt!370 #b00000000000000000000000000000000) (fp.neg x!127) x!127))) (or (not (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) abs!3)) (fp.isInfinite abs!3) (fp.isNaN abs!3))))))

(assert (=> start!377 true))

(declare-fun bs!100 () Bool)

(assert (= bs!100 start!377))

(declare-fun m!327 () Bool)

(assert (=> bs!100 m!327))

(check-sat (not start!377))
(check-sat)
(get-model)

(declare-fun d!309 () Bool)

(declare-fun c!137 () Bool)

(assert (=> d!309 (= c!137 (fp.isNaN x!127))))

(declare-fun e!260 () (_ BitVec 64))

(assert (=> d!309 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!260 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!340 () Bool)

(assert (=> b!340 (= e!260 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!341 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!341 (= e!260 (choose!3 x!127 x!127 false))))

(assert (= (and d!309 c!137) b!340))

(assert (= (and d!309 (not c!137)) b!341))

(declare-fun m!329 () Bool)

(assert (=> b!341 m!329))

(assert (=> start!377 d!309))

(check-sat (not b!341))
(check-sat)
(get-model)

(declare-fun d!311 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!311 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!101 () Bool)

(assert (= bs!101 d!311))

(declare-fun m!331 () Bool)

(assert (=> bs!101 m!331))

(assert (=> b!341 d!311))

(check-sat (not d!311))
(check-sat)
(get-model)

(declare-fun d!313 () Bool)

(declare-fun toBinary!100 () (_ BitVec 64))

(assert (=> d!313 (= ((_ to_fp 11 53) toBinary!100) x!127)))

(assert (=> d!313 true))

(assert (=> d!313 (= (choose!8 x!127 x!127 false) toBinary!100)))

(assert (=> d!311 d!313))

(check-sat)
