; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2205 () Bool)

(assert start!2205)

(declare-fun res!9242 () Bool)

(declare-fun e!6211 () Bool)

(assert (=> start!2205 (=> (not res!9242) (not e!6211))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2205 (= res!9242 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2205 e!6211))

(assert (=> start!2205 true))

(declare-fun b!11409 () Bool)

(declare-fun res!9243 () Bool)

(assert (=> b!11409 (=> (not res!9243) (not e!6211))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11409 (= res!9243 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11410 () Bool)

(assert (=> b!11410 (= e!6211 (fp.isNaN x!124))))

(assert (= (and start!2205 res!9242) b!11409))

(assert (= (and b!11409 res!9243) b!11410))

(declare-fun m!19147 () Bool)

(assert (=> b!11409 m!19147))

(push 1)

(assert (not b!11409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

