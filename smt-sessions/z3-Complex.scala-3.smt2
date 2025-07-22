; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7 () Bool)

(assert start!7)

(declare-datatypes ((Complex!11 0))(
  ( (Complex!12 (realPart!13 (_ FloatingPoint 11 53)) (imaginaryPart!13 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!39 () Complex!11)

(assert (=> start!7 (and (not (fp.isInfinite (realPart!13 thiss!39))) (not (fp.isNaN (realPart!13 thiss!39))) (not (fp.isInfinite (imaginaryPart!13 thiss!39))) (not (fp.isNaN (imaginaryPart!13 thiss!39))) (let ((squareRadius!1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!13 thiss!39) (realPart!13 thiss!39)) (fp.mul roundNearestTiesToEven (imaginaryPart!13 thiss!39) (imaginaryPart!13 thiss!39))))) (or (and (not (fp.eq (realPart!13 thiss!39) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!13 thiss!39) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (or (fp.isNaN (fp.div roundNearestTiesToEven (realPart!13 thiss!39) squareRadius!1)) (fp.isNaN (fp.div roundNearestTiesToEven (fp.neg (imaginaryPart!13 thiss!39)) squareRadius!1)))) (and (fp.eq (realPart!13 thiss!39) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.eq (imaginaryPart!13 thiss!39) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (or (not (fp.isNaN (fp.div roundNearestTiesToEven (realPart!13 thiss!39) squareRadius!1))) (not (fp.isNaN (fp.div roundNearestTiesToEven (fp.neg (imaginaryPart!13 thiss!39)) squareRadius!1))))))))))

(assert (=> start!7 true))

(check-sat)
