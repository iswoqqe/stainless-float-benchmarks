; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3137 () Bool)

(assert start!3137)

(declare-datatypes ((array!1398 0))(
  ( (array!1399 (arr!611 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!611 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1398)

(assert (=> start!3137 (and (= (size!611 a!12) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!611 a!12)))))

(declare-fun array_inv!559 (array!1398) Bool)

(assert (=> start!3137 (array_inv!559 a!12)))

(declare-fun bs!3534 () Bool)

(assert (= bs!3534 start!3137))

(declare-fun m!28175 () Bool)

(assert (=> bs!3534 m!28175))

(push 1)

(assert (not start!3137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

