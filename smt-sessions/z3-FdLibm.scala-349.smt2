; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2025 () Bool)

(assert start!2025)

(declare-fun res!8399 () Bool)

(declare-fun e!5883 () Bool)

(assert (=> start!2025 (=> (not res!8399) (not e!5883))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2025 (= res!8399 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2025 e!5883))

(assert (=> start!2025 true))

(declare-fun b!10422 () Bool)

(declare-fun res!8400 () Bool)

(assert (=> b!10422 (=> (not res!8400) (not e!5883))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10422 (= res!8400 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10423 () Bool)

(assert (=> b!10423 (= e!5883 (and (not (fp.isNaN x!106)) (not (fp.gt x!106 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (= (and start!2025 res!8399) b!10422))

(assert (= (and b!10422 res!8400) b!10423))

(declare-fun m!16237 () Bool)

(assert (=> b!10422 m!16237))

(check-sat (not b!10422))
(check-sat)
