; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3 () Bool)

(assert start!3)

(declare-datatypes ((Complex!7 0))(
  ( (Complex!8 (realPart!11 (_ FloatingPoint 11 53)) (imaginaryPart!11 (_ FloatingPoint 11 53))) )
))
(declare-fun c!7 () Complex!7)

(declare-fun thiss!38 () Complex!7)

(assert (=> start!3 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!11 c!7)) (fp.leq (realPart!11 c!7) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!11 thiss!38)) (fp.leq (realPart!11 thiss!38) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b10000000000 #b0000000000000000000000000000000000000000000000000000) (imaginaryPart!11 thiss!38)) (fp.lt (imaginaryPart!11 thiss!38) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b10000000000 #b0000000000000000000000000000000000000000000000000000) (imaginaryPart!11 c!7)) (fp.lt (imaginaryPart!11 c!7) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.eq (realPart!11 thiss!38) (realPart!11 c!7)) (let ((_$3!1 (fp.sub roundNearestTiesToEven (imaginaryPart!11 thiss!38) (imaginaryPart!11 c!7)))) (or (fp.isInfinite _$3!1) (fp.isNaN _$3!1))))))

(assert (=> start!3 true))

(check-sat)
