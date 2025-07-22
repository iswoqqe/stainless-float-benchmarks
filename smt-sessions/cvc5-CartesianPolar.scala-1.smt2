; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3 () Bool)

(assert start!3)

(declare-fun res!24 () Bool)

(declare-fun e!2 () Bool)

(assert (=> start!3 (=> (not res!24) (not e!2))))

(declare-datatypes ((Polar!4 0))(
  ( (Polar!5 (radius!8 (_ FloatingPoint 11 53)) (theta!8 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!9 () Polar!4)

(assert (=> start!3 (= res!24 (and (not (fp.isInfinite (radius!8 thiss!9))) (not (fp.isNaN (radius!8 thiss!9))) (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (theta!8 thiss!9)) (fp.lt (theta!8 thiss!9) (fp #b0 #b10000000111 #b0000111000000000000000000000000000000000000000000000))))))

(assert (=> start!3 e!2))

(assert (=> start!3 true))

(declare-fun b!4 () Bool)

(declare-fun lt!8 () (_ FloatingPoint 11 53))

(declare-fun lt!6 () (_ FloatingPoint 11 53))

(assert (=> b!4 (= e!2 (or (fp.isNaN lt!8) (fp.isNaN lt!6)))))

(declare-fun lt!7 () (_ FloatingPoint 11 53))

(declare-fun sin!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!4 (= lt!6 (fp.mul roundNearestTiesToEven (radius!8 thiss!9) (sin!0 lt!7)))))

(declare-fun cos!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!4 (= lt!8 (fp.mul roundNearestTiesToEven (radius!8 thiss!9) (cos!0 lt!7)))))

(assert (=> b!4 (= lt!7 (fp.mul roundNearestTiesToEven (theta!8 thiss!9) (fp #b0 #b01111111001 #b0001110111110100011010100010010100101001110100111001)))))

(assert (= (and start!3 res!24) b!4))

(declare-fun m!11 () Bool)

(assert (=> b!4 m!11))

(declare-fun m!13 () Bool)

(assert (=> b!4 m!13))

(push 1)

(assert (not b!4))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3 () Bool)

(declare-fun lt!11 () (_ FloatingPoint 11 53))

(assert (=> d!3 (and (= (or (fp.isNaN lt!7) (fp.isInfinite lt!7)) (fp.isNaN lt!11)) (or (not (fp.isPositive lt!7)) (not (fp.isZero lt!7)) (and (fp.isPositive lt!11) (fp.isZero lt!11))) (or (not (fp.isNegative lt!7)) (not (fp.isZero lt!7)) (and (fp.isNegative lt!11) (fp.isZero lt!11))) (or (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!11) (fp.leq lt!11 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN lt!11)))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!3 (= lt!11 (choose!4 lt!7))))

(assert (=> d!3 (= (sin!0 lt!7) lt!11)))

(declare-fun bs!2 () Bool)

(assert (= bs!2 d!3))

(declare-fun m!15 () Bool)

(assert (=> bs!2 m!15))

(assert (=> b!4 d!3))

(declare-fun d!5 () Bool)

(declare-fun lt!14 () (_ FloatingPoint 11 53))

(assert (=> d!5 (and (= (or (fp.isNaN lt!7) (fp.isInfinite lt!7)) (fp.isNaN lt!14)) (or (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!14) (fp.leq lt!14 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN lt!14)))))

(declare-fun choose!7 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!5 (= lt!14 (choose!7 lt!7))))

(assert (=> d!5 (= (cos!0 lt!7) lt!14)))

(declare-fun bs!3 () Bool)

(assert (= bs!3 d!5))

(declare-fun m!17 () Bool)

(assert (=> bs!3 m!17))

(assert (=> b!4 d!5))

(push 1)

(assert (not d!3))

(assert (not d!5))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

