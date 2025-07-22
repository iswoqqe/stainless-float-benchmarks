; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2611 () Bool)

(assert start!2611)

(declare-datatypes ((array!998 0))(
  ( (array!999 (arr!433 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!433 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!998)

(assert (=> start!2611 (and (= (size!433 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!433 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!433 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (bvsge #b00000000000000000000000000000001 (size!433 qq!34)))))

(declare-fun array_inv!382 (array!998) Bool)

(assert (=> start!2611 (array_inv!382 qq!34)))

(declare-fun bs!2864 () Bool)

(assert (= bs!2864 start!2611))

(declare-fun m!22429 () Bool)

(assert (=> bs!2864 m!22429))

(declare-fun m!22431 () Bool)

(assert (=> bs!2864 m!22431))

(push 1)

(assert (not start!2611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

