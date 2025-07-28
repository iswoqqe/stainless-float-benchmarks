; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2053 () Bool)

(assert start!2053)

(declare-fun res!8498 () Bool)

(declare-fun e!5961 () Bool)

(assert (=> start!2053 (=> (not res!8498) (not e!5961))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2053 (= res!8498 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2053 e!5961))

(assert (=> start!2053 true))

(declare-fun b!10545 () Bool)

(declare-fun res!8499 () Bool)

(assert (=> b!10545 (=> (not res!8499) (not e!5961))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10545 (= res!8499 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10546 () Bool)

(assert (=> b!10546 (= e!5961 (and (not (fp.isNaN x!124)) (not (fp.gt x!124 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (= (and start!2053 res!8498) b!10545))

(assert (= (and b!10545 res!8499) b!10546))

(declare-fun m!16305 () Bool)

(assert (=> b!10545 m!16305))

(check-sat (not b!10545))
(check-sat)
