; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!27 () Bool)

(assert start!27)

(declare-datatypes ((Complex!15 0))(
  ( (Complex!16 (realPart!15 (_ FloatingPoint 11 53)) (imaginaryPart!15 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!20 () Complex!15)

(declare-datatypes ((Circuit!6 0))(
  ( (Circuit!7 (maxVoltage!6 (_ FloatingPoint 11 53)) (frequency!6 (_ FloatingPoint 11 53)) (resistance!6 (_ FloatingPoint 11 53)) (inductance!6 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!17 () Circuit!6)

(declare-fun /!0 (Complex!15 Complex!15) Complex!15)

(declare-fun impedance!0 (Circuit!6) Complex!15)

(assert (=> start!27 (= lt!20 (/!0 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (impedance!0 thiss!17)))))

(assert (=> start!27 (or (fp.isInfinite (realPart!15 lt!20)) (fp.isNaN (realPart!15 lt!20)) (fp.isInfinite (imaginaryPart!15 lt!20)) (fp.isNaN (imaginaryPart!15 lt!20)) (and (fp.eq (realPart!15 lt!20) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.eq (imaginaryPart!15 lt!20) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun inv!0 (Circuit!6) Bool)

(assert (=> start!27 (inv!0 thiss!17)))

(declare-fun bs!9 () Bool)

(assert (= bs!9 start!27))

(declare-fun m!27 () Bool)

(assert (=> bs!9 m!27))

(assert (=> bs!9 m!27))

(declare-fun m!29 () Bool)

(assert (=> bs!9 m!29))

(declare-fun m!31 () Bool)

(assert (=> bs!9 m!31))

(push 1)

(assert (not start!27))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!23 () Bool)

(declare-fun lt!25 () Complex!15)

(assert (=> d!23 (and (or (not (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!15 (impedance!0 thiss!17)))) (not (fp.lt (realPart!15 (impedance!0 thiss!17)) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000))) (not (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (imaginaryPart!15 (impedance!0 thiss!17)))) (not (fp.lt (imaginaryPart!15 (impedance!0 thiss!17)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000))) (not (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))) (not (fp.lt (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (and (not (fp.isInfinite (realPart!15 lt!25))) (not (fp.isNaN (realPart!15 lt!25))) (not (fp.isInfinite (imaginaryPart!15 lt!25))) (not (fp.isNaN (imaginaryPart!15 lt!25))) (not (fp.eq (realPart!15 lt!25) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!15 lt!25) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))) (or (not (fp.eq (realPart!15 (impedance!0 thiss!17)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (not (fp.eq (imaginaryPart!15 (impedance!0 thiss!17)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp.isNaN (realPart!15 lt!25))))))

(declare-fun lt!26 () (_ FloatingPoint 11 53))

(assert (=> d!23 (= lt!25 (Complex!16 (fp.div roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (realPart!15 (impedance!0 thiss!17))) (fp.mul roundNearestTiesToEven (imaginaryPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (imaginaryPart!15 (impedance!0 thiss!17)))) lt!26) (fp.div roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (imaginaryPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (realPart!15 (impedance!0 thiss!17))) (fp.mul roundNearestTiesToEven (realPart!15 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (imaginaryPart!15 (impedance!0 thiss!17)))) lt!26)))))

(assert (=> d!23 (= lt!26 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (realPart!15 (impedance!0 thiss!17)) (realPart!15 (impedance!0 thiss!17))) (fp.mul roundNearestTiesToEven (imaginaryPart!15 (impedance!0 thiss!17)) (imaginaryPart!15 (impedance!0 thiss!17)))))))

(assert (=> d!23 (= (/!0 (Complex!16 (maxVoltage!6 thiss!17) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (impedance!0 thiss!17)) lt!25)))

(assert (=> start!27 d!23))

(declare-fun d!25 () Bool)

(assert (=> d!25 (and (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!6 thiss!17)) (inductance!6 thiss!17))) (fp.lt (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!6 thiss!17)) (inductance!6 thiss!17)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000)))))

(assert (=> d!25 (= (impedance!0 thiss!17) (Complex!16 (resistance!6 thiss!17) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!6 thiss!17)) (inductance!6 thiss!17))))))

(assert (=> start!27 d!25))

(declare-fun d!27 () Bool)

(assert (=> d!27 (= (inv!0 thiss!17) (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (maxVoltage!6 thiss!17)) (fp.lt (maxVoltage!6 thiss!17) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (frequency!6 thiss!17)) (fp.lt (frequency!6 thiss!17) (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (resistance!6 thiss!17)) (fp.lt (resistance!6 thiss!17) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111110101 #b0000011000100100110111010010111100011010100111111100) (inductance!6 thiss!17)) (fp.lt (inductance!6 thiss!17) (fp #b0 #b01111110111 #b0000011000100100110111010010111100011010100111111100))))))

(assert (=> start!27 d!27))

(push 1)

(check-sat)

(pop 1)

