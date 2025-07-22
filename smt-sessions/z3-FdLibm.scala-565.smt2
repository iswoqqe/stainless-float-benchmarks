; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2949 () Bool)

(assert start!2949)

(assert (=> start!2949 false))

(declare-datatypes ((array!1383 0))(
  ( (array!1384 (arr!610 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!610 (_ BitVec 32))) )
))
(declare-fun q!40 () array!1383)

(declare-fun array_inv!558 (array!1383) Bool)

(assert (=> start!2949 (array_inv!558 q!40)))

(declare-fun bs!2421 () Bool)

(assert (= bs!2421 start!2949))

(declare-fun m!22995 () Bool)

(assert (=> bs!2421 m!22995))

(check-sat (not start!2949))
(check-sat)
