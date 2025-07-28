; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2071 () Bool)

(assert start!2071)

(declare-fun res!8532 () Bool)

(declare-fun e!6000 () Bool)

(assert (=> start!2071 (=> (not res!8532) (not e!6000))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2071 (= res!8532 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2071 e!6000))

(assert (=> start!2071 true))

(declare-fun b!10597 () Bool)

(assert (=> b!10597 (= e!6000 false)))

(declare-fun lt!5376 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10597 (= lt!5376 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2071 res!8532) b!10597))

(declare-fun m!16323 () Bool)

(assert (=> b!10597 m!16323))

(check-sat (not b!10597))
(check-sat)
