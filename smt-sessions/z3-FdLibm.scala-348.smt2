; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2023 () Bool)

(assert start!2023)

(declare-fun res!8393 () Bool)

(declare-fun e!5880 () Bool)

(assert (=> start!2023 (=> (not res!8393) (not e!5880))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2023 (= res!8393 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2023 e!5880))

(assert (=> start!2023 true))

(declare-fun b!10416 () Bool)

(declare-fun res!8394 () Bool)

(assert (=> b!10416 (=> (not res!8394) (not e!5880))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10416 (= res!8394 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10417 () Bool)

(assert (=> b!10417 (= e!5880 (fp.isNaN x!106))))

(assert (= (and start!2023 res!8393) b!10416))

(assert (= (and b!10416 res!8394) b!10417))

(declare-fun m!16235 () Bool)

(assert (=> b!10416 m!16235))

(check-sat (not b!10416))
(check-sat)
