; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2607 () Bool)

(assert start!2607)

(declare-datatypes ((array!994 0))(
  ( (array!995 (arr!431 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!431 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!994)

(assert (=> start!2607 (and (= (size!431 qq!34) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!431 qq!34)))))

(declare-fun array_inv!380 (array!994) Bool)

(assert (=> start!2607 (array_inv!380 qq!34)))

(declare-fun bs!2860 () Bool)

(assert (= bs!2860 start!2607))

(declare-fun m!22423 () Bool)

(assert (=> bs!2860 m!22423))

(push 1)

(assert (not start!2607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

