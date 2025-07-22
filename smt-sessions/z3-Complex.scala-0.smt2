; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1 () Bool)

(assert start!1)

(declare-datatypes ((Complex!5 0))(
  ( (Complex!6 (realPart!10 (_ FloatingPoint 11 53)) (imaginaryPart!10 (_ FloatingPoint 11 53))) )
))
(declare-fun c!5 () Complex!5)

(declare-fun thiss!36 () Complex!5)

(assert (=> start!1 (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!10 c!5)) (fp.leq (realPart!10 c!5) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!10 thiss!36)) (fp.leq (realPart!10 thiss!36) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b10000000000 #b0000000000000000000000000000000000000000000000000000) (imaginaryPart!10 thiss!36)) (fp.lt (imaginaryPart!10 thiss!36) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b1 #b10000000000 #b0000000000000000000000000000000000000000000000000000) (imaginaryPart!10 c!5)) (fp.lt (imaginaryPart!10 c!5) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (or (fp.isInfinite (fp.add roundNearestTiesToEven (realPart!10 thiss!36) (realPart!10 c!5))) (fp.isNaN (fp.add roundNearestTiesToEven (realPart!10 thiss!36) (realPart!10 c!5))) (fp.isInfinite (fp.add roundNearestTiesToEven (imaginaryPart!10 thiss!36) (imaginaryPart!10 c!5))) (fp.isNaN (fp.add roundNearestTiesToEven (imaginaryPart!10 thiss!36) (imaginaryPart!10 c!5)))))))

(assert (=> start!1 true))

(check-sat)
