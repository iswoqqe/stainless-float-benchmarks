; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2019 () Bool)

(assert start!2019)

(assert (=> start!2019 false))

(declare-datatypes ((array!744 0))(
  ( (array!745 (arr!327 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!327 (_ BitVec 32))) )
))
(declare-fun xx!23 () array!744)

(declare-fun array_inv!276 (array!744) Bool)

(assert (=> start!2019 (array_inv!276 xx!23)))

(declare-fun bs!2138 () Bool)

(assert (= bs!2138 start!2019))

(declare-fun m!16231 () Bool)

(assert (=> bs!2138 m!16231))

(check-sat (not start!2019))
(check-sat)
