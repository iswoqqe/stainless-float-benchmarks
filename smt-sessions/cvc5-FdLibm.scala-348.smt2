; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2177 () Bool)

(assert start!2177)

(declare-fun res!9143 () Bool)

(declare-fun e!6133 () Bool)

(assert (=> start!2177 (=> (not res!9143) (not e!6133))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2177 (= res!9143 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2177 e!6133))

(assert (=> start!2177 true))

(declare-fun b!11286 () Bool)

(declare-fun res!9144 () Bool)

(assert (=> b!11286 (=> (not res!9144) (not e!6133))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11286 (= res!9144 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11287 () Bool)

(assert (=> b!11287 (= e!6133 (fp.isNaN x!106))))

(assert (= (and start!2177 res!9143) b!11286))

(assert (= (and b!11286 res!9144) b!11287))

(declare-fun m!19079 () Bool)

(assert (=> b!11286 m!19079))

(push 1)

(assert (not b!11286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

