; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2225 () Bool)

(assert start!2225)

(declare-fun res!9282 () Bool)

(declare-fun e!6253 () Bool)

(assert (=> start!2225 (=> (not res!9282) (not e!6253))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2225 (= res!9282 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2225 e!6253))

(assert (=> start!2225 true))

(declare-fun b!11467 () Bool)

(assert (=> b!11467 (= e!6253 false)))

(declare-fun lt!5594 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11467 (= lt!5594 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2225 res!9282) b!11467))

(declare-fun m!19167 () Bool)

(assert (=> b!11467 m!19167))

(push 1)

(assert (not b!11467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

