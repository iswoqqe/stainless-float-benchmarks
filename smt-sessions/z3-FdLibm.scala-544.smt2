; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2907 () Bool)

(assert start!2907)

(assert (=> start!2907 false))

(declare-datatypes ((array!1341 0))(
  ( (array!1342 (arr!589 (Array (_ BitVec 32) (_ BitVec 32))) (size!589 (_ BitVec 32))) )
))
(declare-fun iq!105 () array!1341)

(declare-fun array_inv!537 (array!1341) Bool)

(assert (=> start!2907 (array_inv!537 iq!105)))

(declare-fun bs!2398 () Bool)

(assert (= bs!2398 start!2907))

(declare-fun m!22193 () Bool)

(assert (=> bs!2398 m!22193))

(check-sat (not start!2907))
(check-sat)
