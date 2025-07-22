; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2029 () Bool)

(assert start!2029)

(declare-fun res!8166 () Bool)

(declare-fun e!5893 () Bool)

(assert (=> start!2029 (=> (not res!8166) (not e!5893))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2029 (= res!8166 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2029 e!5893))

(assert (=> start!2029 true))

(declare-fun b!10183 () Bool)

(declare-fun res!8167 () Bool)

(assert (=> b!10183 (=> (not res!8167) (not e!5893))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10183 (= res!8167 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10184 () Bool)

(assert (=> b!10184 (= e!5893 (and (not (fp.isNaN x!124)) (fp.gt x!124 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt x!124 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (= (and start!2029 res!8166) b!10183))

(assert (= (and b!10183 res!8167) b!10184))

(declare-fun m!14483 () Bool)

(assert (=> b!10183 m!14483))

(check-sat (not b!10183))
(check-sat)
