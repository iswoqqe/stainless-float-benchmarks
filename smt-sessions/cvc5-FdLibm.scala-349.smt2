; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2179 () Bool)

(assert start!2179)

(declare-fun res!9149 () Bool)

(declare-fun e!6136 () Bool)

(assert (=> start!2179 (=> (not res!9149) (not e!6136))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2179 (= res!9149 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2179 e!6136))

(assert (=> start!2179 true))

(declare-fun b!11292 () Bool)

(declare-fun res!9150 () Bool)

(assert (=> b!11292 (=> (not res!9150) (not e!6136))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11292 (= res!9150 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11293 () Bool)

(assert (=> b!11293 (= e!6136 (and (not (fp.isNaN x!106)) (not (fp.gt x!106 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (= (and start!2179 res!9149) b!11292))

(assert (= (and b!11292 res!9150) b!11293))

(declare-fun m!19081 () Bool)

(assert (=> b!11292 m!19081))

(push 1)

(assert (not b!11292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

