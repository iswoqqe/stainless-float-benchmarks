; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1 () Bool)

(assert start!1)

(declare-fun res!6 () Bool)

(declare-fun e!2 () Bool)

(assert (=> start!1 (=> (not res!6) (not e!2))))

(declare-fun lt!5 () (_ FloatingPoint 11 53))

(assert (=> start!1 (= res!6 (and (not (fp.isInfinite lt!5)) (not (fp.isNaN lt!5))))))

(declare-datatypes ((Matrix2!5 0))(
  ( (Matrix2!6 (a!6 (_ FloatingPoint 11 53)) (b!9 (_ FloatingPoint 11 53)) (c!6 (_ FloatingPoint 11 53)) (d!6 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!4 () Matrix2!5)

(declare-fun determinant!0 (Matrix2!5) (_ FloatingPoint 11 53))

(assert (=> start!1 (= lt!5 (determinant!0 lt!4))))

(declare-fun thiss!7 () Matrix2!5)

(assert (=> start!1 (= lt!4 (Matrix2!6 (a!6 thiss!7) (c!6 thiss!7) (b!9 thiss!7) (d!6 thiss!7)))))

(assert (=> start!1 e!2))

(assert (=> start!1 true))

(declare-fun b!8 () Bool)

(assert (=> b!8 (= e!2 (not (fp.eq (determinant!0 lt!4) (determinant!0 thiss!7))))))

(assert (= (and start!1 res!6) b!8))

(declare-fun m!1 () Bool)

(assert (=> start!1 m!1))

(assert (=> b!8 m!1))

(declare-fun m!3 () Bool)

(assert (=> b!8 m!3))

(check-sat (not b!8) (not start!1))
(check-sat)
(get-model)

(declare-fun d!8 () Bool)

(assert (=> d!8 (= (determinant!0 lt!4) (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!6 lt!4) (d!6 lt!4)) (fp.mul roundNearestTiesToEven (b!9 lt!4) (c!6 lt!4))))))

(assert (=> b!8 d!8))

(declare-fun d!10 () Bool)

(assert (=> d!10 (= (determinant!0 thiss!7) (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!6 thiss!7) (d!6 thiss!7)) (fp.mul roundNearestTiesToEven (b!9 thiss!7) (c!6 thiss!7))))))

(assert (=> b!8 d!10))

(assert (=> start!1 d!8))

(check-sat)
