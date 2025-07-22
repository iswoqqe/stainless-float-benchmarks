; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

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

(push 1)

(assert (not start!9))

(assert (not b!4))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6 () Bool)

(assert (=> d!6 (= (inv!0 thiss!22) (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (maxVoltage!5 thiss!22)) (fp.lt (maxVoltage!5 thiss!22) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (frequency!5 thiss!22)) (fp.lt (frequency!5 thiss!22) (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (resistance!5 thiss!22)) (fp.lt (resistance!5 thiss!22) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111110101 #b0000011000100100110111010010111100011010100111111100) (inductance!5 thiss!22)) (fp.lt (inductance!5 thiss!22) (fp #b0 #b01111110111 #b0000011000100100110111010010111100011010100111111100))))))

(assert (=> start!9 d!6))

(declare-fun d!8 () Bool)

(declare-fun lt!5 () Complex!13)

(assert (=> d!8 (and (not (fp.isInfinite (realPart!14 lt!5))) (not (fp.isNaN (realPart!14 lt!5))) (not (fp.isInfinite (imaginaryPart!14 lt!5))) (not (fp.isNaN (imaginaryPart!14 lt!5))) (or (not (fp.eq (realPart!14 lt!5) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!14 lt!5) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))))

(declare-fun /!0 (Complex!13 Complex!13) Complex!13)

(declare-fun impedance!0 (Circuit!4) Complex!13)

(assert (=> d!8 (= lt!5 (/!0 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (impedance!0 thiss!22)))))

(assert (=> d!8 (= (current!0 thiss!22) lt!5)))

(declare-fun bs!5 () Bool)

(assert (= bs!5 d!8))

(declare-fun m!19 () Bool)

(assert (=> bs!5 m!19))

(assert (=> bs!5 m!19))

(declare-fun m!21 () Bool)

(assert (=> bs!5 m!21))

(assert (=> b!4 d!8))

(declare-fun d!10 () Bool)

(declare-fun lt!8 () (_ FloatingPoint 11 53))

(assert (=> d!10 (and (= (or (fp.isNaN (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))))) (fp.isInfinite (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))))) (fp.isNaN lt!8)) (or (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) lt!8) (fp.leq lt!8 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN lt!8)))))

(declare-fun choose!4 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!10 (= lt!8 (choose!4 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))))))))

(assert (=> d!10 (= (cos!0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))))) lt!8)))

(declare-fun bs!6 () Bool)

(assert (= bs!6 d!10))

(declare-fun m!23 () Bool)

(assert (=> bs!6 m!23))

(assert (=> b!4 d!10))

(declare-fun d!12 () Bool)

(declare-fun lt!11 () (_ FloatingPoint 11 53))

(assert (=> d!12 (and (or (not (fp.isNaN (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (fp.isNaN lt!11)) (or (not (fp.isPositive (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (not (fp.isZero (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (and (fp.isPositive lt!11) (fp.isZero lt!11))) (or (not (fp.isNegative (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (not (fp.isZero (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (and (fp.isNegative lt!11) (fp.isZero lt!11))) (or (and (fp.leq (fp #b1 #b01111111111 #b1001001000011111101101010100010001000010110100011000) lt!11) (fp.leq lt!11 (fp #b0 #b01111111111 #b1001001000011111101101010100010001000010110100011000))) (fp.isNaN (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))))))

(declare-fun choose!2 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!12 (= lt!11 (choose!2 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))))))

(assert (=> d!12 (= (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))) lt!11)))

(declare-fun bs!7 () Bool)

(assert (= bs!7 d!12))

(declare-fun m!25 () Bool)

(assert (=> bs!7 m!25))

(assert (=> b!4 d!12))

(push 1)

(assert (not d!12))

(assert (not d!10))

(assert (not d!8))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!14 () Bool)

(declare-fun res!40 () (_ FloatingPoint 11 53))

(assert (=> d!14 (and (or (not (fp.isNaN (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (fp.isNaN res!40)) (or (not (fp.isPositive (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (not (fp.isZero (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (and (fp.isPositive res!40) (fp.isZero res!40))) (or (not (fp.isNegative (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (not (fp.isZero (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))) (and (fp.isNegative res!40) (fp.isZero res!40))) (or (and (fp.leq (fp #b1 #b01111111111 #b1001001000011111101101010100010001000010110100011000) res!40) (fp.leq res!40 (fp #b0 #b01111111111 #b1001001000011111101101010100010001000010110100011000))) (fp.isNaN (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))))))

(assert (=> d!14 true))

(assert (=> d!14 (= (choose!2 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))) res!40)))

(assert (=> d!12 d!14))

(declare-fun d!16 () Bool)

(declare-fun res!43 () (_ FloatingPoint 11 53))

(assert (=> d!16 (and (= (or (fp.isNaN (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))))) (fp.isInfinite (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22))))))) (fp.isNaN res!43)) (or (and (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) res!43) (fp.leq res!43 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN res!43)))))

(assert (=> d!16 true))

(assert (=> d!16 (= (choose!4 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) time!2) (atan!0 (fp.div roundNearestTiesToEven (imaginaryPart!14 (current!0 thiss!22)) (realPart!14 (current!0 thiss!22)))))) res!43)))

(assert (=> d!10 d!16))

(declare-fun d!18 () Bool)

(declare-fun lt!16 () Complex!13)

(assert (=> d!18 (and (or (not (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!14 (impedance!0 thiss!22)))) (not (fp.lt (realPart!14 (impedance!0 thiss!22)) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000))) (not (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (imaginaryPart!14 (impedance!0 thiss!22)))) (not (fp.lt (imaginaryPart!14 (impedance!0 thiss!22)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000))) (not (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!14 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))) (not (fp.lt (realPart!14 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!14 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (and (not (fp.isInfinite (realPart!14 lt!16))) (not (fp.isNaN (realPart!14 lt!16))) (not (fp.isInfinite (imaginaryPart!14 lt!16))) (not (fp.isNaN (imaginaryPart!14 lt!16))) (not (fp.eq (realPart!14 lt!16) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!14 lt!16) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))) (or (not (fp.eq (realPart!14 (impedance!0 thiss!22)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!14 (impedance!0 thiss!22)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN (realPart!14 lt!16))))))

(declare-fun lt!17 () (_ FloatingPoint 11 53))

(assert (=> d!18 (= lt!16 (Complex!14 (fp.div roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!14 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (realPart!14 (impedance!0 thiss!22))) (fp.mul roundNearestTiesToEven (imaginaryPart!14 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (imaginaryPart!14 (impedance!0 thiss!22)))) lt!17) (fp.div roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (imaginaryPart!14 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (realPart!14 (impedance!0 thiss!22))) (fp.mul roundNearestTiesToEven (realPart!14 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (imaginaryPart!14 (impedance!0 thiss!22)))) lt!17)))))

(assert (=> d!18 (= lt!17 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!14 (impedance!0 thiss!22)) (realPart!14 (impedance!0 thiss!22))) (fp.mul roundNearestTiesToEven (imaginaryPart!14 (impedance!0 thiss!22)) (imaginaryPart!14 (impedance!0 thiss!22)))))))

(assert (=> d!18 (= (/!0 (Complex!14 (maxVoltage!5 thiss!22) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (impedance!0 thiss!22)) lt!16)))

(assert (=> d!8 d!18))

(declare-fun d!20 () Bool)

(assert (=> d!20 (and (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) (inductance!5 thiss!22))) (fp.lt (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) (inductance!5 thiss!22)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000)))))

(assert (=> d!20 (= (impedance!0 thiss!22) (Complex!14 (resistance!5 thiss!22) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!5 thiss!22)) (inductance!5 thiss!22))))))

(assert (=> d!8 d!20))

(push 1)

(check-sat)

(pop 1)

