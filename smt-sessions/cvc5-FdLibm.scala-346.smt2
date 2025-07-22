; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2173 () Bool)

(assert start!2173)

(assert (=> start!2173 false))

(declare-datatypes ((array!754 0))(
  ( (array!755 (arr!327 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!327 (_ BitVec 32))) )
))
(declare-fun xx!23 () array!754)

(declare-fun array_inv!276 (array!754) Bool)

(assert (=> start!2173 (array_inv!276 xx!23)))

(declare-fun bs!2680 () Bool)

(assert (= bs!2680 start!2173))

(declare-fun m!19075 () Bool)

(assert (=> bs!2680 m!19075))

(push 1)

(assert (not start!2173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

