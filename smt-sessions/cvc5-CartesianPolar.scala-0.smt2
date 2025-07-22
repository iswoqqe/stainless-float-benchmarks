; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1 () Bool)

(assert start!1)

(declare-datatypes ((Cartesian!4 0))(
  ( (Cartesian!5 (x!47 (_ FloatingPoint 11 53)) (y!9 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!7 () Cartesian!4)

(declare-fun that!1 () Cartesian!4)

(assert (=> start!1 (and (not (fp.isInfinite (x!47 thiss!7))) (not (fp.isNaN (x!47 thiss!7))) (not (fp.isInfinite (y!9 thiss!7))) (not (fp.isNaN (y!9 thiss!7))) (not (fp.isInfinite (x!47 that!1))) (not (fp.isNaN (x!47 that!1))) (not (fp.isInfinite (y!9 that!1))) (not (fp.isNaN (y!9 that!1))) (let ((dx!1 (fp.sub roundNearestTiesToEven (x!47 thiss!7) (x!47 that!1)))) (let ((dy!1 (fp.sub roundNearestTiesToEven (y!9 thiss!7) (y!9 that!1)))) (fp.isNaN (fp.sqrt roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven dx!1 dx!1) (fp.mul roundNearestTiesToEven dy!1 dy!1)))))))))

(assert (=> start!1 true))

(push 1)

(check-sat)

(pop 1)

