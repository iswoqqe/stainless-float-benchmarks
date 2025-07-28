; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2051 () Bool)

(assert start!2051)

(declare-fun res!8492 () Bool)

(declare-fun e!5958 () Bool)

(assert (=> start!2051 (=> (not res!8492) (not e!5958))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2051 (= res!8492 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2051 e!5958))

(assert (=> start!2051 true))

(declare-fun b!10539 () Bool)

(declare-fun res!8493 () Bool)

(assert (=> b!10539 (=> (not res!8493) (not e!5958))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10539 (= res!8493 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10540 () Bool)

(assert (=> b!10540 (= e!5958 (fp.isNaN x!124))))

(assert (= (and start!2051 res!8492) b!10539))

(assert (= (and b!10539 res!8493) b!10540))

(declare-fun m!16303 () Bool)

(assert (=> b!10539 m!16303))

(check-sat (not b!10539))
(check-sat)
