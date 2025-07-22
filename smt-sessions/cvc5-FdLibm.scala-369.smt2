; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2223 () Bool)

(assert start!2223)

(declare-fun res!9279 () Bool)

(declare-fun e!6250 () Bool)

(assert (=> start!2223 (=> (not res!9279) (not e!6250))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2223 (= res!9279 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2223 e!6250))

(assert (=> start!2223 true))

(declare-fun b!11464 () Bool)

(assert (=> b!11464 (= e!6250 false)))

(declare-fun lt!5591 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11464 (= lt!5591 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2223 res!9279) b!11464))

(declare-fun m!19165 () Bool)

(assert (=> b!11464 m!19165))

(push 1)

(assert (not b!11464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

