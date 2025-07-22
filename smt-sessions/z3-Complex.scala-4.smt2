; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9 () Bool)

(assert start!9)

(declare-fun res!37 () Bool)

(declare-fun e!4 () Bool)

(assert (=> start!9 (=> (not res!37) (not e!4))))

(declare-fun time!2 () (_ FloatingPoint 11 53))

(assert (=> start!9 (= res!37 (and (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) time!2) (fp.lt time!2 (fp #b0 #b10000000111 #b0010110000000000000000000000000000000000000000000000))))))

(assert (=> start!9 e!4))

(assert (=> start!9 true))

(declare-datatypes ((Circuit!4 0))(
  ( (Circuit!5 (maxVoltage!5 (_ FloatingPoint 11 53)) (frequency!5 (_ FloatingPoint 11 53)) (resistance!5 (_ FloatingPoint 11 53)) (inductance!5 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!22 () Circuit!4)

(declare-fun inv!0 (Circuit!4) Bool)

(assert (=> start!9 (inv!0 thiss!22)))

(declare-fun b!4 () Bool)

(declare-fun lt!2 () (_ FloatingPoint 11 53))

(assert (=> b!4 (= e!4 (or (fp.isInfinite lt!2) (fp.isNaN lt!2)))))

(declare-datatypes ((Complex!13 0))(
  ( (Complex!14 (realPart!14 (_ FloatingPoint 11 53)) (imaginaryPart!14 (_ FloatingPoint 11 53))) )
))
(declare-fun current!0 (Circuit!4) Complex!13)

(declare-fun cos!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(declare-fun atan!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!4 (= lt!2 (fp.mul roundNearestTiesToEven (fp.sqrt roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))) (fp.mul roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (imaginaryPart!14 (current!0 thiss!22))))) (cos!0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))))))))

(assert (= (and start!9 res!37) b!4))

(declare-fun m!11 () Bool)

(assert (=> start!9 m!11))

(declare-fun m!13 () Bool)

(assert (=> b!4 m!13))

(declare-fun m!15 () Bool)

(assert (=> b!4 m!15))

(declare-fun m!17 () Bool)

(assert (=> b!4 m!17))

(check-sat (not b!4) (not start!9))
(check-sat)
