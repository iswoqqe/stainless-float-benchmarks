; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1 () Bool)

(assert start!1)

(declare-fun res!9 () Bool)

(declare-fun e!9 () Bool)

(assert (=> start!1 (=> res!9 e!9)))

(declare-fun lt!5 () (_ FloatingPoint 11 53))

(assert (=> start!1 (= res!9 (or (fp.isInfinite lt!5) (fp.isNaN lt!5)))))

(declare-datatypes ((Matrix3!5 0))(
  ( (Matrix3!6 (a!7 (_ FloatingPoint 11 53)) (b!10 (_ FloatingPoint 11 53)) (c!7 (_ FloatingPoint 11 53)) (d!7 (_ FloatingPoint 11 53)) (e!10 (_ FloatingPoint 11 53)) (f!7 (_ FloatingPoint 11 53)) (g!7 (_ FloatingPoint 11 53)) (h!7 (_ FloatingPoint 11 53)) (i!7 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!4 () Matrix3!5)

(declare-fun leftAssocDeterminant!0 (Matrix3!5) (_ FloatingPoint 11 53))

(assert (=> start!1 (= lt!5 (leftAssocDeterminant!0 lt!4))))

(assert (=> start!1 (= lt!4 (Matrix3!6 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (fp #b1 #b00111100110 #b1000000001000000000000000110000000000000000000000000) (fp #b0 #b10111111111 #b0000000000000000000000000000110111111111111111011111) (fp #b1 #b00111100110 #b1000000001000000000000000110000000000000000000000000) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000001) (fp #b0 #b00000000000 #b0000000000000000001100000000000000000000000000000000) (fp #b0 #b10111111111 #b0000000000000000000000000000110111111111111111011111) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (fp #b1 #b11111111110 #b0000000000000000000000000001101111111111111110111110)))))

(assert (=> start!1 e!9))

(declare-fun b!9 () Bool)

(declare-fun transpose!0 (Matrix3!5) Matrix3!5)

(assert (=> b!9 (= e!9 (fp.eq (leftAssocDeterminant!0 lt!4) (leftAssocDeterminant!0 (transpose!0 lt!4))))))

(assert (= (and start!1 (not res!9)) b!9))

(declare-fun m!1 () Bool)

(assert (=> start!1 m!1))

(assert (=> b!9 m!1))

(declare-fun m!3 () Bool)

(assert (=> b!9 m!3))

(assert (=> b!9 m!3))

(declare-fun m!5 () Bool)

(assert (=> b!9 m!5))

(check-sat (not start!1) (not b!9))
(check-sat)
(get-model)

(declare-fun d!9 () Bool)

(assert (=> d!9 (= (leftAssocDeterminant!0 lt!4) (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!7 lt!4) (e!10 lt!4)) (i!7 lt!4)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (b!10 lt!4) (f!7 lt!4)) (g!7 lt!4))) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (c!7 lt!4) (d!7 lt!4)) (h!7 lt!4))) (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (c!7 lt!4) (e!10 lt!4)) (g!7 lt!4)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (b!10 lt!4) (d!7 lt!4)) (i!7 lt!4))) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!7 lt!4) (f!7 lt!4)) (h!7 lt!4)))))))

(assert (=> start!1 d!9))

(assert (=> b!9 d!9))

(declare-fun d!11 () Bool)

(assert (=> d!11 (= (leftAssocDeterminant!0 (transpose!0 lt!4)) (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!7 (transpose!0 lt!4)) (e!10 (transpose!0 lt!4))) (i!7 (transpose!0 lt!4))) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (b!10 (transpose!0 lt!4)) (f!7 (transpose!0 lt!4))) (g!7 (transpose!0 lt!4)))) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (c!7 (transpose!0 lt!4)) (d!7 (transpose!0 lt!4))) (h!7 (transpose!0 lt!4)))) (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (c!7 (transpose!0 lt!4)) (e!10 (transpose!0 lt!4))) (g!7 (transpose!0 lt!4))) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (b!10 (transpose!0 lt!4)) (d!7 (transpose!0 lt!4))) (i!7 (transpose!0 lt!4)))) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (a!7 (transpose!0 lt!4)) (f!7 (transpose!0 lt!4))) (h!7 (transpose!0 lt!4))))))))

(assert (=> b!9 d!11))

(declare-fun d!13 () Bool)

(declare-fun e!13 () Bool)

(assert (=> d!13 e!13))

(declare-fun res!12 () Bool)

(assert (=> d!13 (=> res!12 e!13)))

(declare-fun lt!11 () (_ FloatingPoint 11 53))

(assert (=> d!13 (= res!12 (or (fp.isInfinite lt!11) (fp.isNaN lt!11)))))

(declare-fun lt!10 () Matrix3!5)

(declare-fun determinant!0 (Matrix3!5) (_ FloatingPoint 11 53))

(assert (=> d!13 (= lt!11 (determinant!0 lt!10))))

(assert (=> d!13 (= lt!10 (Matrix3!6 (a!7 lt!4) (d!7 lt!4) (g!7 lt!4) (b!10 lt!4) (e!10 lt!4) (h!7 lt!4) (c!7 lt!4) (f!7 lt!4) (i!7 lt!4)))))

(assert (=> d!13 (= (transpose!0 lt!4) lt!10)))

(declare-fun b!13 () Bool)

(assert (=> b!13 (= e!13 (fp.eq (determinant!0 lt!10) (determinant!0 lt!4)))))

(assert (= (and d!13 (not res!12)) b!13))

(declare-fun m!7 () Bool)

(assert (=> d!13 m!7))

(assert (=> b!13 m!7))

(declare-fun m!9 () Bool)

(assert (=> b!13 m!9))

(assert (=> b!9 d!13))

(check-sat (not b!13) (not d!13))
(check-sat)
