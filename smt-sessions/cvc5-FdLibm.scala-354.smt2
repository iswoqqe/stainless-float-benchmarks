; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2189 () Bool)

(assert start!2189)

(declare-fun res!9183 () Bool)

(declare-fun e!6169 () Bool)

(assert (=> start!2189 (=> (not res!9183) (not e!6169))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2189 (= res!9183 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2189 e!6169))

(assert (=> start!2189 true))

(declare-fun b!11344 () Bool)

(assert (=> b!11344 (= e!6169 false)))

(declare-fun lt!5555 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11344 (= lt!5555 (bvand (__HI!0 x!106) #b01111111111111111111111111111111))))

(assert (= (and start!2189 res!9183) b!11344))

(declare-fun m!19091 () Bool)

(assert (=> b!11344 m!19091))

(push 1)

(assert (not b!11344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

