; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2981 () Bool)

(assert start!2981)

(assert (=> start!2981 false))

(declare-datatypes ((array!1386 0))(
  ( (array!1387 (arr!610 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!610 (_ BitVec 32))) )
))
(declare-fun q!40 () array!1386)

(declare-fun array_inv!558 (array!1386) Bool)

(assert (=> start!2981 (array_inv!558 q!40)))

(declare-fun bs!2990 () Bool)

(assert (= bs!2990 start!2981))

(declare-fun m!25329 () Bool)

(assert (=> bs!2990 m!25329))

(check-sat (not start!2981))
(check-sat)
