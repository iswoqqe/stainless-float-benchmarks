; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11 () Bool)

(assert start!11)

(declare-datatypes ((Complex!15 0))(
  ( (Complex!16 (realPart!15 (_ FloatingPoint 11 53)) (imaginaryPart!15 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!5 () Complex!15)

(declare-datatypes ((Circuit!6 0))(
  ( (Circuit!7 (maxVoltage!6 (_ FloatingPoint 11 53)) (frequency!6 (_ FloatingPoint 11 53)) (resistance!6 (_ FloatingPoint 11 53)) (inductance!6 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!17 () Circuit!6)

(declare-fun /!0 (Complex!15 Complex!15) Complex!15)

(declare-fun impedance!0 (Circuit!6) Complex!15)

(assert (=> start!11 (= lt!5 (/!0 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (impedance!0 thiss!17)))))

(assert (=> start!11 (or (fp.isInfinite (realPart!15 lt!5)) (fp.isNaN (realPart!15 lt!5)) (fp.isInfinite (imaginaryPart!15 lt!5)) (fp.isNaN (imaginaryPart!15 lt!5)) (and (fp.eq (realPart!15 lt!5) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.eq (imaginaryPart!15 lt!5) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun inv!0 (Circuit!6) Bool)

(assert (=> start!11 (inv!0 thiss!17)))

(declare-fun bs!6 () Bool)

(assert (= bs!6 start!11))

(declare-fun m!19 () Bool)

(assert (=> bs!6 m!19))

(assert (=> bs!6 m!19))

(declare-fun m!21 () Bool)

(assert (=> bs!6 m!21))

(declare-fun m!23 () Bool)

(assert (=> bs!6 m!23))

(check-sat (not start!11))
(check-sat)
(get-model)

(declare-fun d!1 () Bool)

(declare-fun lt!10 () Complex!15)

(assert (=> d!1 (and (or (not (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!15 (impedance!0 thiss!17)))) (not (fp.lt (realPart!15 (impedance!0 thiss!17)) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000))) (not (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (imaginaryPart!15 (impedance!0 thiss!17)))) (not (fp.lt (imaginaryPart!15 (impedance!0 thiss!17)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000))) (not (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))) (not (fp.lt (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (and (not (fp.isInfinite (realPart!15 lt!10))) (not (fp.isNaN (realPart!15 lt!10))) (not (fp.isInfinite (imaginaryPart!15 lt!10))) (not (fp.isNaN (imaginaryPart!15 lt!10))) (not (fp.eq (realPart!15 lt!10) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!15 lt!10) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))) (or (not (fp.eq (realPart!15 (impedance!0 thiss!17)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!15 (impedance!0 thiss!17)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN (realPart!15 lt!10))))))

(declare-fun lt!11 () (_ FloatingPoint 11 53))

(assert (=> d!1 (= lt!10 (Complex!16 (fp.div roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (realPart!15 (impedance!0 thiss!17))) (fp.mul roundNearestTiesToEven (imaginaryPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (imaginaryPart!15 (impedance!0 thiss!17)))) lt!11) (fp.div roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (imaginaryPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (realPart!15 (impedance!0 thiss!17))) (fp.mul roundNearestTiesToEven (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (imaginaryPart!15 (impedance!0 thiss!17)))) lt!11)))))

(assert (=> d!1 (= lt!11 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!15 (impedance!0 thiss!17)) (realPart!15 (impedance!0 thiss!17))) (fp.mul roundNearestTiesToEven (imaginaryPart!15 (impedance!0 thiss!17)) (imaginaryPart!15 (impedance!0 thiss!17)))))))

(assert (=> d!1 (= (/!0 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (impedance!0 thiss!17)) lt!10)))

(assert (=> start!11 d!1))

(declare-fun d!3 () Bool)

(assert (=> d!3 (and (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!6 thiss!17)) (inductance!6 thiss!17))) (fp.lt (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!6 thiss!17)) (inductance!6 thiss!17)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000)))))

(assert (=> d!3 (= (impedance!0 thiss!17) (Complex!16 (resistance!6 thiss!17) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!6 thiss!17)) (inductance!6 thiss!17))))))

(assert (=> start!11 d!3))

(declare-fun d!5 () Bool)

(assert (=> d!5 (= (inv!0 thiss!17) (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (maxVoltage!6 thiss!17)) (fp.lt (maxVoltage!6 thiss!17) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (frequency!6 thiss!17)) (fp.lt (frequency!6 thiss!17) (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (resistance!6 thiss!17)) (fp.lt (resistance!6 thiss!17) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111110101 #b0000011000100100110111010010111100011010100111111100) (inductance!6 thiss!17)) (fp.lt (inductance!6 thiss!17) (fp #b0 #b01111110111 #b0000011000100100110111010010111100011010100111111100))))))

(assert (=> start!11 d!5))

(check-sat)
