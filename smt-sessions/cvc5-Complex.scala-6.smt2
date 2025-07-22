; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!35 () Bool)

(assert start!35)

(declare-datatypes ((Complex!17 0))(
  ( (Complex!18 (realPart!16 (_ FloatingPoint 11 53)) (imaginaryPart!16 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!37 () Complex!17)

(declare-fun c!6 () Complex!17)

(declare-fun lt!35 () (_ FloatingPoint 11 53))

(declare-fun lt!33 () (_ FloatingPoint 11 53))

(assert (=> start!35 (= lt!35 (fp.div roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (imaginaryPart!16 thiss!37) (realPart!16 c!6)) (fp.mul roundNearestTiesToEven (realPart!16 thiss!37) (imaginaryPart!16 c!6))) lt!33))))

(declare-fun lt!34 () (_ FloatingPoint 11 53))

(assert (=> start!35 (= lt!34 (fp.div roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!16 thiss!37) (realPart!16 c!6)) (fp.mul roundNearestTiesToEven (imaginaryPart!16 thiss!37) (imaginaryPart!16 c!6))) lt!33))))

(assert (=> start!35 (= lt!33 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!16 c!6) (realPart!16 c!6)) (fp.mul roundNearestTiesToEven (imaginaryPart!16 c!6) (imaginaryPart!16 c!6))))))

(assert (=> start!35 (or (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!16 c!6)) (fp.lt (realPart!16 c!6) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (imaginaryPart!16 c!6)) (fp.lt (imaginaryPart!16 c!6) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!16 thiss!37)) (fp.lt (realPart!16 thiss!37) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000)) (fp.eq (imaginaryPart!16 thiss!37) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (or (fp.isInfinite lt!34) (fp.isNaN lt!34) (fp.isInfinite lt!35) (fp.isNaN lt!35) (fp.eq lt!34 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.eq lt!35 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))) (and (fp.eq (realPart!16 c!6) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.eq (imaginaryPart!16 c!6) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (not (fp.isNaN lt!34))))))

(assert (=> start!35 true))

(push 1)

(check-sat)

(pop 1)

