; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2379 () Bool)

(assert start!2379)

(assert (=> start!2379 false))

(declare-datatypes ((array!848 0))(
  ( (array!849 (arr!368 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!368 (_ BitVec 32))) )
))
(declare-fun f!39 () array!848)

(declare-fun array_inv!317 (array!848) Bool)

(assert (=> start!2379 (array_inv!317 f!39)))

(declare-fun bs!2760 () Bool)

(assert (= bs!2760 start!2379))

(declare-fun m!20029 () Bool)

(assert (=> bs!2760 m!20029))

(push 1)

(assert (not start!2379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

