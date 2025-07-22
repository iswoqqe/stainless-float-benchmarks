; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2181 () Bool)

(assert start!2181)

(declare-fun res!9155 () Bool)

(declare-fun e!6139 () Bool)

(assert (=> start!2181 (=> (not res!9155) (not e!6139))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2181 (= res!9155 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2181 e!6139))

(assert (=> start!2181 true))

(declare-fun b!11298 () Bool)

(declare-fun res!9156 () Bool)

(assert (=> b!11298 (=> (not res!9156) (not e!6139))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11298 (= res!9156 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11299 () Bool)

(assert (=> b!11299 (= e!6139 (and (not (fp.isNaN x!106)) (fp.gt x!106 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt x!106 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (= (and start!2181 res!9155) b!11298))

(assert (= (and b!11298 res!9156) b!11299))

(declare-fun m!19083 () Bool)

(assert (=> b!11298 m!19083))

(push 1)

(assert (not b!11298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

