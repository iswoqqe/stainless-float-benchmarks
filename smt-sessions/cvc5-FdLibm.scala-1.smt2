; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!9 () Bool)

(assert start!9)

(declare-fun res!256 () Bool)

(declare-fun e!38 () Bool)

(assert (=> start!9 (=> (not res!256) (not e!38))))

(declare-fun x!109 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!9 (= res!256 (bvsle (bvand (__HI!0 x!109) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!9 e!38))

(assert (=> start!9 true))

(declare-fun b!20 () Bool)

(declare-fun lt!2 () (_ FloatingPoint 11 53))

(assert (=> b!20 (= e!38 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!109) (fp.leq x!109 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) lt!2)) (not (fp.leq lt!2 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!20 (= lt!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))

(assert (= (and start!9 res!256) b!20))

(declare-fun m!7 () Bool)

(assert (=> start!9 m!7))

(push 1)

(assert (not start!9))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

