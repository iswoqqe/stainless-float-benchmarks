; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2027 () Bool)

(assert start!2027)

(declare-fun res!8405 () Bool)

(declare-fun e!5886 () Bool)

(assert (=> start!2027 (=> (not res!8405) (not e!5886))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2027 (= res!8405 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2027 e!5886))

(assert (=> start!2027 true))

(declare-fun b!10428 () Bool)

(declare-fun res!8406 () Bool)

(assert (=> b!10428 (=> (not res!8406) (not e!5886))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10428 (= res!8406 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10429 () Bool)

(assert (=> b!10429 (= e!5886 (and (not (fp.isNaN x!106)) (fp.gt x!106 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt x!106 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (= (and start!2027 res!8405) b!10428))

(assert (= (and b!10428 res!8406) b!10429))

(declare-fun m!16239 () Bool)

(assert (=> b!10428 m!16239))

(check-sat (not b!10428))
(check-sat)
