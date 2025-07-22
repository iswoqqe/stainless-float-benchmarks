; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!7 () Bool)

(assert start!7)

(declare-fun res!15 () Bool)

(declare-fun e!16 () Bool)

(assert (=> start!7 (=> (not res!15) (not e!16))))

(declare-fun lt!17 () (_ FloatingPoint 11 53))

(assert (=> start!7 (= res!15 (and (not (fp.isInfinite lt!17)) (not (fp.isNaN lt!17))))))

(declare-datatypes ((Matrix3!7 0))(
  ( (Matrix3!8 (a!8 (_ FloatingPoint 11 53)) (b!17 (_ FloatingPoint 11 53)) (c!8 (_ FloatingPoint 11 53)) (d!16 (_ FloatingPoint 11 53)) (e!17 (_ FloatingPoint 11 53)) (f!12 (_ FloatingPoint 11 53)) (g!8 (_ FloatingPoint 11 53)) (h!8 (_ FloatingPoint 11 53)) (i!8 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!16 () Matrix3!7)

(declare-fun determinant!0 (Matrix3!7) (_ FloatingPoint 11 53))

(assert (=> start!7 (= lt!17 (determinant!0 lt!16))))

(declare-fun thiss!13 () Matrix3!7)

(assert (=> start!7 (= lt!16 (Matrix3!8 (a!8 thiss!13) (d!16 thiss!13) (g!8 thiss!13) (b!17 thiss!13) (e!17 thiss!13) (h!8 thiss!13) (c!8 thiss!13) (f!12 thiss!13) (i!8 thiss!13)))))

(assert (=> start!7 e!16))

(assert (=> start!7 true))

(declare-fun b!16 () Bool)

(assert (=> b!16 (= e!16 (not (fp.eq (determinant!0 lt!16) (determinant!0 thiss!13))))))

(assert (= (and start!7 res!15) b!16))

(declare-fun m!11 () Bool)

(assert (=> start!7 m!11))

(assert (=> b!16 m!11))

(declare-fun m!13 () Bool)

(assert (=> b!16 m!13))

(push 1)

(assert (not b!16))

(assert (not start!7))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18 () Bool)

(assert (=> d!18 (= (determinant!0 lt!16) (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!8 lt!16) (fp.mul roundNearestTiesToEven (e!17 lt!16) (i!8 lt!16))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (g!8 lt!16) (fp.mul roundNearestTiesToEven (b!17 lt!16) (f!12 lt!16))) (fp.mul roundNearestTiesToEven (c!8 lt!16) (fp.mul roundNearestTiesToEven (d!16 lt!16) (h!8 lt!16))))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (e!17 lt!16) (fp.mul roundNearestTiesToEven (c!8 lt!16) (g!8 lt!16))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (i!8 lt!16) (fp.mul roundNearestTiesToEven (b!17 lt!16) (d!16 lt!16))) (fp.mul roundNearestTiesToEven (a!8 lt!16) (fp.mul roundNearestTiesToEven (f!12 lt!16) (h!8 lt!16)))))))))

(assert (=> b!16 d!18))

(declare-fun d!20 () Bool)

(assert (=> d!20 (= (determinant!0 thiss!13) (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!8 thiss!13) (fp.mul roundNearestTiesToEven (e!17 thiss!13) (i!8 thiss!13))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (g!8 thiss!13) (fp.mul roundNearestTiesToEven (b!17 thiss!13) (f!12 thiss!13))) (fp.mul roundNearestTiesToEven (c!8 thiss!13) (fp.mul roundNearestTiesToEven (d!16 thiss!13) (h!8 thiss!13))))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (e!17 thiss!13) (fp.mul roundNearestTiesToEven (c!8 thiss!13) (g!8 thiss!13))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (i!8 thiss!13) (fp.mul roundNearestTiesToEven (b!17 thiss!13) (d!16 thiss!13))) (fp.mul roundNearestTiesToEven (a!8 thiss!13) (fp.mul roundNearestTiesToEven (f!12 thiss!13) (h!8 thiss!13)))))))))

(assert (=> b!16 d!20))

(assert (=> start!7 d!18))

(push 1)

(check-sat)

(pop 1)

