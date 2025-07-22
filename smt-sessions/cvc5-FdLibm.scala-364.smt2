; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2209 () Bool)

(assert start!2209)

(declare-fun res!9254 () Bool)

(declare-fun e!6217 () Bool)

(assert (=> start!2209 (=> (not res!9254) (not e!6217))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2209 (= res!9254 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2209 e!6217))

(assert (=> start!2209 true))

(declare-fun b!11421 () Bool)

(declare-fun res!9255 () Bool)

(assert (=> b!11421 (=> (not res!9255) (not e!6217))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11421 (= res!9255 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11422 () Bool)

(assert (=> b!11422 (= e!6217 (and (not (fp.isNaN x!124)) (fp.gt x!124 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt x!124 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (= (and start!2209 res!9254) b!11421))

(assert (= (and b!11421 res!9255) b!11422))

(declare-fun m!19151 () Bool)

(assert (=> b!11421 m!19151))

(push 1)

(assert (not b!11421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

