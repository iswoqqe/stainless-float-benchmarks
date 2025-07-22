; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2191 () Bool)

(assert start!2191)

(declare-fun res!9186 () Bool)

(declare-fun e!6172 () Bool)

(assert (=> start!2191 (=> (not res!9186) (not e!6172))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2191 (= res!9186 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2191 e!6172))

(assert (=> start!2191 true))

(declare-fun b!11347 () Bool)

(assert (=> b!11347 (= e!6172 false)))

(declare-fun lt!5558 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11347 (= lt!5558 (bvand (__HI!0 x!106) #b01111111111111111111111111111111))))

(assert (= (and start!2191 res!9186) b!11347))

(declare-fun m!19093 () Bool)

(assert (=> b!11347 m!19093))

(push 1)

(assert (not b!11347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

