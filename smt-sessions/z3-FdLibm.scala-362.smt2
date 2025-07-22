; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2025 () Bool)

(assert start!2025)

(declare-fun res!8154 () Bool)

(declare-fun e!5887 () Bool)

(assert (=> start!2025 (=> (not res!8154) (not e!5887))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2025 (= res!8154 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2025 e!5887))

(assert (=> start!2025 true))

(declare-fun b!10171 () Bool)

(declare-fun res!8155 () Bool)

(assert (=> b!10171 (=> (not res!8155) (not e!5887))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10171 (= res!8155 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10172 () Bool)

(assert (=> b!10172 (= e!5887 (fp.isNaN x!124))))

(assert (= (and start!2025 res!8154) b!10171))

(assert (= (and b!10171 res!8155) b!10172))

(declare-fun m!14479 () Bool)

(assert (=> b!10171 m!14479))

(check-sat (not b!10171))
(check-sat)
