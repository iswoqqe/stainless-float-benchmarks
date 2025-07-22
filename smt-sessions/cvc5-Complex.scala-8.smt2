; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!41 () Bool)

(assert start!41)

(declare-fun res!46 () Bool)

(declare-fun e!16 () Bool)

(assert (=> start!41 (=> (not res!46) (not e!16))))

(declare-fun time!3 () (_ FloatingPoint 11 53))

(assert (=> start!41 (= res!46 (and (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) time!3) (fp.lt time!3 (fp #b0 #b10000000111 #b0010110000000000000000000000000000000000000000000000))))))

(assert (=> start!41 e!16))

(assert (=> start!41 true))

(declare-datatypes ((Circuit!10 0))(
  ( (Circuit!11 (maxVoltage!8 (_ FloatingPoint 11 53)) (frequency!8 (_ FloatingPoint 11 53)) (resistance!8 (_ FloatingPoint 11 53)) (inductance!8 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!35 () Circuit!10)

(declare-fun inv!0 (Circuit!10) Bool)

(assert (=> start!41 (inv!0 thiss!35)))

(declare-fun b!7 () Bool)

(declare-fun lt!38 () (_ FloatingPoint 11 53))

(assert (=> b!7 (= e!16 (or (fp.isInfinite lt!38) (fp.isNaN lt!38)))))

(declare-fun cos!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!7 (= lt!38 (fp.mul roundNearestTiesToEven (maxVoltage!8 thiss!35) (cos!0 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3))))))

(assert (= (and start!41 res!46) b!7))

(declare-fun m!35 () Bool)

(assert (=> start!41 m!35))

(declare-fun m!37 () Bool)

(assert (=> b!7 m!37))

(push 1)

(assert (not start!41))

(assert (not b!7))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!34 () Bool)

(assert (=> d!34 (= (inv!0 thiss!35) (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (maxVoltage!8 thiss!35)) (fp.lt (maxVoltage!8 thiss!35) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (frequency!8 thiss!35)) (fp.lt (frequency!8 thiss!35) (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (resistance!8 thiss!35)) (fp.lt (resistance!8 thiss!35) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111110101 #b0000011000100100110111010010111100011010100111111100) (inductance!8 thiss!35)) (fp.lt (inductance!8 thiss!35) (fp #b0 #b01111110111 #b0000011000100100110111010010111100011010100111111100))))))

(assert (=> start!41 d!34))

(declare-fun d!36 () Bool)

(declare-fun lt!41 () (_ FloatingPoint 11 53))

(assert (=> d!36 (and (= (or (fp.isNaN (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3)) (fp.isInfinite (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3))) (fp.isNaN lt!41)) (or (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!41) (fp.leq lt!41 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN lt!41)))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!36 (= lt!41 (choose!4 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3)))))

(assert (=> d!36 (= (cos!0 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!8 thiss!35)) time!3)) lt!41)))

(declare-fun bs!14 () Bool)

(assert (= bs!14 d!36))

(declare-fun m!39 () Bool)

(assert (=> bs!14 m!39))

(assert (=> b!7 d!36))

(push 1)

(assert (not d!36))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

