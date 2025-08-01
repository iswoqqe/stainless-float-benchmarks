; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2223 () Bool)

(assert start!2223)

(declare-fun lt!5675 () (_ FloatingPoint 11 53))

(declare-fun a!22 () (_ FloatingPoint 11 53))

(declare-fun b!2 () (_ FloatingPoint 11 53))

(assert (=> start!2223 (= lt!5675 (fp.add roundNearestTiesToEven a!22 b!2))))

(assert (=> start!2223 (and (not (fp.isInfinite lt!5675)) (not (fp.isNaN lt!5675)) (fp.geq (ite (fp.lt a!22 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.neg a!22) a!22) (ite (fp.lt b!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.neg b!2) b!2)) (let ((s!17 (fp.add roundNearestTiesToEven a!22 b!2))) (not (fp.eq (fp.add roundNearestTiesToEven s!17 (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven a!22 s!17) b!2)) s!17))))))

(assert (=> start!2223 true))

(check-sat)
