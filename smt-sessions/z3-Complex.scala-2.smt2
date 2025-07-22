; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5 () Bool)

(assert start!5)

(declare-datatypes ((Complex!9 0))(
  ( (Complex!10 (realPart!12 (_ FloatingPoint 11 53)) (imaginaryPart!12 (_ FloatingPoint 11 53))) )
))
(declare-fun c!7 () Complex!9)

(declare-fun thiss!38 () Complex!9)

(assert (=> start!5 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!12 c!7)) (fp.leq (realPart!12 c!7) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!12 thiss!38)) (fp.leq (realPart!12 thiss!38) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b10000000000 #b0000000000000000000000000000000000000000000000000000) (imaginaryPart!12 thiss!38)) (fp.lt (imaginaryPart!12 thiss!38) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b10000000000 #b0000000000000000000000000000000000000000000000000000) (imaginaryPart!12 c!7)) (fp.lt (imaginaryPart!12 c!7) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (fp.eq (realPart!12 thiss!38) (realPart!12 c!7))) (let ((_$3!2 (fp.sub roundNearestTiesToEven (realPart!12 thiss!38) (realPart!12 c!7)))) (or (fp.isInfinite _$3!2) (fp.isNaN _$3!2))))))

(assert (=> start!5 true))

(check-sat)
