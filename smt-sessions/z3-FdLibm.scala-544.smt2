; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2939 () Bool)

(assert start!2939)

(assert (=> start!2939 false))

(declare-datatypes ((array!1344 0))(
  ( (array!1345 (arr!589 (Array (_ BitVec 32) (_ BitVec 32))) (size!589 (_ BitVec 32))) )
))
(declare-fun iq!105 () array!1344)

(declare-fun array_inv!537 (array!1344) Bool)

(assert (=> start!2939 (array_inv!537 iq!105)))

(declare-fun bs!2967 () Bool)

(assert (= bs!2967 start!2939))

(declare-fun m!24527 () Bool)

(assert (=> bs!2967 m!24527))

(check-sat (not start!2939))
(check-sat)
