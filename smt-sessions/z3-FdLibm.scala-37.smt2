; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401 () Bool)

(assert start!401)

(declare-fun lt!377 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!401 (= lt!377 (bvand (__HI!0 x!127) #b01111111111111111111111111111111))))

(assert (=> start!401 (and (bvslt lt!377 #b01111111111100000000000000000000) (bvsgt lt!377 #b00111111111010010010000111111011) (bvslt lt!377 #b01000000000000101101100101111100) (or (not (fp.lt (fp #b1 #b10000000000 #b0010110110010111110000000000000000000000000000000000) x!127)) (not (fp.lt x!127 (fp #b1 #b01111111110 #b1001001000011111101111111111111111111111111111111111)))) (or (not (fp.lt (fp #b0 #b01111111110 #b1001001000011111101111111111111111111111111111111111) x!127)) (not (fp.lt x!127 (fp #b0 #b10000000000 #b0010110110010111110000000000000000000000000000000000)))))))

(assert (=> start!401 true))

(declare-fun bs!108 () Bool)

(assert (= bs!108 start!401))

(declare-fun m!345 () Bool)

(assert (=> bs!108 m!345))

(check-sat (not start!401))
(check-sat)
(get-model)

(declare-fun d!327 () Bool)

(declare-fun c!146 () Bool)

(assert (=> d!327 (= c!146 (fp.isNaN x!127))))

(declare-fun e!272 () (_ BitVec 64))

(assert (=> d!327 (= (__HI!0 x!127) ((_ extract 31 0) (bvashr e!272 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!361 () Bool)

(assert (=> b!361 (= e!272 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!362 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!362 (= e!272 (choose!3 x!127 x!127 false))))

(assert (= (and d!327 c!146) b!361))

(assert (= (and d!327 (not c!146)) b!362))

(declare-fun m!347 () Bool)

(assert (=> b!362 m!347))

(assert (=> start!401 d!327))

(check-sat (not b!362))
(check-sat)
(get-model)

(declare-fun d!329 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!329 (= (choose!3 x!127 x!127 false) (choose!8 x!127 x!127 false))))

(declare-fun bs!109 () Bool)

(assert (= bs!109 d!329))

(declare-fun m!349 () Bool)

(assert (=> bs!109 m!349))

(assert (=> b!362 d!329))

(check-sat (not d!329))
(check-sat)
(get-model)

(declare-fun d!331 () Bool)

(declare-fun toBinary!109 () (_ BitVec 64))

(assert (=> d!331 (= ((_ to_fp 11 53) toBinary!109) x!127)))

(assert (=> d!331 true))

(assert (=> d!331 (= (choose!8 x!127 x!127 false) toBinary!109)))

(assert (=> d!329 d!331))

(check-sat)
