; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2609 () Bool)

(assert start!2609)

(declare-datatypes ((array!996 0))(
  ( (array!997 (arr!432 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!432 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!996)

(assert (=> start!2609 (and (= (size!432 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!432 qq!34) #b00000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!432 qq!34)))))

(declare-fun array_inv!381 (array!996) Bool)

(assert (=> start!2609 (array_inv!381 qq!34)))

(declare-fun bs!2862 () Bool)

(assert (= bs!2862 start!2609))

(declare-fun m!22425 () Bool)

(assert (=> bs!2862 m!22425))

(declare-fun m!22427 () Bool)

(assert (=> bs!2862 m!22427))

(push 1)

(assert (not start!2609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

