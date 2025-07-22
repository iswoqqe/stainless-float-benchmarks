; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!305 () Bool)

(assert start!305)

(declare-fun lt!296 () (_ BitVec 32))

(declare-fun x!86 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!305 (= lt!296 (bvand (__HI!0 x!86) #b01111111111111111111111111111111))))

(assert (=> start!305 (and (bvsgt lt!296 #b00111111111010010010000111111011) (bvsge lt!296 #b01111111111100000000000000000000) (let ((res!93 (fp.sub roundNearestTiesToEven x!86 x!86))) (or (not (= (or (fp.isInfinite x!86) (fp.isNaN x!86)) (fp.isNaN res!93))) (and (= x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= res!93 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (= x!86 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (= res!93 (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!93)) (not (fp.leq res!93 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN res!93))))))))

(assert (=> start!305 true))

(declare-fun bs!81 () Bool)

(assert (= bs!81 start!305))

(declare-fun m!265 () Bool)

(assert (=> bs!81 m!265))

(check-sat (not start!305))
(check-sat)
(get-model)

(declare-fun d!247 () Bool)

(declare-fun c!122 () Bool)

(assert (=> d!247 (= c!122 (fp.isNaN x!86))))

(declare-fun e!221 () (_ BitVec 64))

(assert (=> d!247 (= (__HI!0 x!86) ((_ extract 31 0) (bvashr e!221 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!286 () Bool)

(assert (=> b!286 (= e!221 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!287 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!287 (= e!221 (choose!3 x!86 x!86 false))))

(assert (= (and d!247 c!122) b!286))

(assert (= (and d!247 (not c!122)) b!287))

(declare-fun m!267 () Bool)

(assert (=> b!287 m!267))

(assert (=> start!305 d!247))

(check-sat (not b!287))
(check-sat)
(get-model)

(declare-fun d!249 () Bool)

(declare-fun choose!8 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> d!249 (= (choose!3 x!86 x!86 false) (choose!8 x!86 x!86 false))))

(declare-fun bs!82 () Bool)

(assert (= bs!82 d!249))

(declare-fun m!269 () Bool)

(assert (=> bs!82 m!269))

(assert (=> b!287 d!249))

(check-sat (not d!249))
(check-sat)
(get-model)

(declare-fun d!251 () Bool)

(declare-fun toBinary!85 () (_ BitVec 64))

(assert (=> d!251 (= ((_ to_fp 11 53) toBinary!85) x!86)))

(assert (=> d!251 true))

(assert (=> d!251 (= (choose!8 x!86 x!86 false) toBinary!85)))

(assert (=> d!249 d!251))

(check-sat)
