; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21 () Bool)

(assert start!21)

(declare-datatypes ((Circuit!8 0))(
  ( (Circuit!9 (maxVoltage!7 (_ FloatingPoint 11 53)) (frequency!7 (_ FloatingPoint 11 53)) (resistance!7 (_ FloatingPoint 11 53)) (inductance!7 (_ FloatingPoint 11 53))) )
))
(declare-fun thiss!16 () Circuit!8)

(assert (=> start!21 (or (not (fp.lt (fp #b0 #b01111110001 #b1010001101101110001011101011000111000100001100101101) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!7 thiss!16)) (inductance!7 thiss!16)))) (not (fp.lt (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b10000000001 #b1001001000011111101101010100010001000010110100011000) (frequency!7 thiss!16)) (inductance!7 thiss!16)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000))))))

(declare-fun inv!0 (Circuit!8) Bool)

(assert (=> start!21 (inv!0 thiss!16)))

(declare-fun bs!9 () Bool)

(assert (= bs!9 start!21))

(declare-fun m!25 () Bool)

(assert (=> bs!9 m!25))

(check-sat (not start!21))
(check-sat)
(get-model)

(declare-fun d!7 () Bool)

(assert (=> d!7 (= (inv!0 thiss!16) (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (maxVoltage!7 thiss!16)) (fp.lt (maxVoltage!7 thiss!16) (fp #b0 #b10000000010 #b1000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (frequency!7 thiss!16)) (fp.lt (frequency!7 thiss!16) (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (resistance!7 thiss!16)) (fp.lt (resistance!7 thiss!16) (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111110101 #b0000011000100100110111010010111100011010100111111100) (inductance!7 thiss!16)) (fp.lt (inductance!7 thiss!16) (fp #b0 #b01111110111 #b0000011000100100110111010010111100011010100111111100))))))

(assert (=> start!21 d!7))

(check-sat)
