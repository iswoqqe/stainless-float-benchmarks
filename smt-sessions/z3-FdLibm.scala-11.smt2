; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113 () Bool)

(assert start!113)

(declare-fun lt!101 () (_ BitVec 32))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!113 (= lt!101 (bvand (__HI!0 x!109) #b01111111111111111111111111111111))))

(assert (=> start!113 (and (bvsgt lt!101 #b00111111111010010010000111111011) (bvsge lt!101 #b01111111111100000000000000000000) (let ((res!110 (fp.sub roundNearestTiesToEven x!109 x!109))) (or (not (= (or (fp.isInfinite x!109) (fp.isNaN x!109)) (fp.isNaN res!110))) (and (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!110)) (not (fp.leq res!110 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (not (fp.isNaN res!110))))))))

(assert (=> start!113 true))

(declare-fun bs!30 () Bool)

(assert (= bs!30 start!113))

(declare-fun m!97 () Bool)

(assert (=> bs!30 m!97))

(check-sat (not start!113))
(check-sat)
