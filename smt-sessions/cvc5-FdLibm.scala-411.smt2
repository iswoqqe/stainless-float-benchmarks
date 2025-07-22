; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2377 () Bool)

(assert start!2377)

(declare-fun lt!5893 () (_ FloatingPoint 11 53))

(declare-fun a!22 () (_ FloatingPoint 11 53))

(declare-fun b!2 () (_ FloatingPoint 11 53))

(assert (=> start!2377 (= lt!5893 (fp.add roundNearestTiesToEven a!22 b!2))))

(assert (=> start!2377 (and (not (fp.isInfinite lt!5893)) (not (fp.isNaN lt!5893)) (fp.geq (ite (fp.lt a!22 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.neg a!22) a!22) (ite (fp.lt b!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.neg b!2) b!2)) (let ((s!17 (fp.add roundNearestTiesToEven a!22 b!2))) (not (fp.eq (fp.add roundNearestTiesToEven s!17 (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven a!22 s!17) b!2)) s!17))))))

(assert (=> start!2377 true))

(push 1)

(check-sat)

(pop 1)

