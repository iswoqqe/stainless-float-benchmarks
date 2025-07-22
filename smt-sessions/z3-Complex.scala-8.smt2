; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25 () Bool)

(assert start!25)

(declare-fun res!40 () Bool)

(declare-fun e!16 () Bool)

(assert (=> start!25 (=> (not res!40) (not e!16))))

(declare-fun time!3 () (_ FloatingPoint 11 53))

(assert (=> start!25 (= res!40 (and (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) time!3) (fp.lt time!3 (fp #b0 #b10000000111 #b0010110000000000000000000000000000000000000000000000))))))

(assert (=> start!25 e!16))

(assert (=> start!25 true))

(declare-datatypes ((Circuit!10 0))(
  ( (Circuit!11 (maxVoltage!8 (_ FloatingPoint 11 53)) (frequency!8 (_ FloatingPoint 11 53)) (resistance!8 (_ FloatingPoint 11 53)) (inductance!8 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!35 () Circuit!10)

(declare-fun inv!0 (Circuit!10) Bool)

(assert (=> start!25 (inv!0 thiss!35)))

(declare-fun b!7 () Bool)

(declare-fun lt!23 () (_ FloatingPoint 11 53))

(assert (=> b!7 (= e!16 (or (fp.isInfinite lt!23) (fp.isNaN lt!23)))))

(declare-fun cos!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!7 (= lt!23 (fp.mul roundNearestTiesToEven (maxVoltage!8 thiss!35) (cos!0 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3))))))

(assert (= (and start!25 res!40) b!7))

(declare-fun m!27 () Bool)

(assert (=> start!25 m!27))

(declare-fun m!29 () Bool)

(assert (=> b!7 m!29))

(check-sat (not b!7) (not start!25))
(check-sat)
(get-model)

(declare-fun d!9 () Bool)

(declare-fun lt!26 () (_ FloatingPoint 11 53))

(assert (=> d!9 (and (= (or (fp.isNaN (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3)) (fp.isInfinite (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3))) (fp.isNaN lt!26)) (or (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!26) (fp.leq lt!26 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN lt!26)))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!9 (= lt!26 (choose!4 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3)))))

(assert (=> d!9 (= (cos!0 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3)) lt!26)))

(declare-fun bs!11 () Bool)

(assert (= bs!11 d!9))

(declare-fun m!31 () Bool)

(assert (=> bs!11 m!31))

(assert (=> b!7 d!9))

(declare-fun d!11 () Bool)

(assert (=> d!11 (= (inv!0 thiss!35) (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (maxVoltage!8 thiss!35)) (fp.lt (maxVoltage!8 thiss!35) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (frequency!8 thiss!35)) (fp.lt (frequency!8 thiss!35) (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (resistance!8 thiss!35)) (fp.lt (resistance!8 thiss!35) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111110101 #b0000011000100100110111010010111100011010100111111100) (inductance!8 thiss!35)) (fp.lt (inductance!8 thiss!35) (fp #b0 #b01111110111 #b0000011000100100110111010010111100011010100111111100))))))

(assert (=> start!25 d!11))

(check-sat (not d!9))
(check-sat)
