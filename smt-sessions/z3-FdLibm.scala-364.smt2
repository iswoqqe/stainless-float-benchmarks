; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2055 () Bool)

(assert start!2055)

(declare-fun res!8504 () Bool)

(declare-fun e!5964 () Bool)

(assert (=> start!2055 (=> (not res!8504) (not e!5964))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2055 (= res!8504 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2055 e!5964))

(assert (=> start!2055 true))

(declare-fun b!10551 () Bool)

(declare-fun res!8505 () Bool)

(assert (=> b!10551 (=> (not res!8505) (not e!5964))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10551 (= res!8505 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10552 () Bool)

(assert (=> b!10552 (= e!5964 (and (not (fp.isNaN x!124)) (fp.gt x!124 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt x!124 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (= (and start!2055 res!8504) b!10551))

(assert (= (and b!10551 res!8505) b!10552))

(declare-fun m!16307 () Bool)

(assert (=> b!10551 m!16307))

(check-sat (not b!10551))
(check-sat)
