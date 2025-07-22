; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1993 () Bool)

(assert start!1993)

(assert (=> start!1993 false))

(declare-datatypes ((array!741 0))(
  ( (array!742 (arr!327 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!327 (_ BitVec 32))) )
))
(declare-fun xx!23 () array!741)

(declare-fun array_inv!276 (array!741) Bool)

(assert (=> start!1993 (array_inv!276 xx!23)))

(declare-fun bs!1679 () Bool)

(assert (= bs!1679 start!1993))

(declare-fun m!14407 () Bool)

(assert (=> bs!1679 m!14407))

(check-sat (not start!1993))
(check-sat)
