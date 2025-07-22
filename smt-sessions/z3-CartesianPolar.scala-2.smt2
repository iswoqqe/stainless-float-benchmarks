; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9 () Bool)

(assert start!9)

(declare-fun res!27 () Bool)

(declare-fun e!5 () Bool)

(assert (=> start!9 (=> (not res!27) (not e!5))))

(declare-datatypes ((Cartesian!6 0))(
  ( (Cartesian!7 (x!46 (_ FloatingPoint 11 53)) (y!10 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!8 () Cartesian!6)

(assert (=> start!9 (= res!27 (and (not (fp.isInfinite (x!46 thiss!8))) (not (fp.isNaN (x!46 thiss!8))) (not (fp.isInfinite (y!10 thiss!8))) (not (fp.isNaN (y!10 thiss!8))) (or (not (fp.eq (x!46 thiss!8) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (y!10 thiss!8) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> start!9 e!5))

(assert (=> start!9 true))

(declare-fun b!7 () Bool)

(declare-fun lt!17 () (_ FloatingPoint 11 53))

(assert (=> b!7 (= e!5 (or (fp.isNaN (fp.sqrt roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (x!46 thiss!8) (x!46 thiss!8)) (fp.mul roundNearestTiesToEven (y!10 thiss!8) (y!10 thiss!8))))) (fp.isNaN (fp.mul roundNearestTiesToEven lt!17 (fp #b0 #b10000000100 #b1100101001011101110000011010011000111100000111111000)))))))

(declare-fun atan!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!7 (= lt!17 (atan!0 (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8))))))

(assert (= (and start!9 res!27) b!7))

(declare-fun m!19 () Bool)

(assert (=> b!7 m!19))

(check-sat (not b!7))
(check-sat)
(get-model)

(declare-fun d!5 () Bool)

(declare-fun lt!20 () (_ FloatingPoint 11 53))

(assert (=> d!5 (and (or (not (fp.isNaN (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8)))) (fp.isNaN lt!20)) (or (not (fp.isPositive (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8)))) (not (fp.isZero (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8)))) (and (fp.isPositive lt!20) (fp.isZero lt!20))) (or (not (fp.isNegative (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8)))) (not (fp.isZero (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8)))) (and (fp.isNegative lt!20) (fp.isZero lt!20))) (or (and (fp.leq (fp #b1 #b01111111111 #b1001001000011111101101010100010001000010110100011000) lt!20) (fp.leq lt!20 (fp #b0 #b01111111111 #b1001001000011111101101010100010001000010110100011000))) (fp.isNaN (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8)))))))

(declare-fun choose!5 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!5 (= lt!20 (choose!5 (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8))))))

(assert (=> d!5 (= (atan!0 (fp.div roundNearestTiesToEven (y!10 thiss!8) (x!46 thiss!8))) lt!20)))

(declare-fun bs!5 () Bool)

(assert (= bs!5 d!5))

(declare-fun m!21 () Bool)

(assert (=> bs!5 m!21))

(assert (=> b!7 d!5))

(check-sat (not d!5))
(check-sat)
