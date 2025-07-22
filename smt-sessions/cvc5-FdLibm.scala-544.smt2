; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3093 () Bool)

(assert start!3093)

(assert (=> start!3093 false))

(declare-datatypes ((array!1354 0))(
  ( (array!1355 (arr!589 (Array (_ BitVec 32) (_ BitVec 32))) (size!589 (_ BitVec 32))) )
))
(declare-fun iq!105 () array!1354)

(declare-fun array_inv!537 (array!1354) Bool)

(assert (=> start!3093 (array_inv!537 iq!105)))

(declare-fun bs!3509 () Bool)

(assert (= bs!3509 start!3093))

(declare-fun m!27371 () Bool)

(assert (=> bs!3509 m!27371))

(push 1)

(assert (not start!3093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

