; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2195 () Bool)

(assert start!2195)

(assert (=> start!2195 false))

(declare-datatypes ((array!835 0))(
  ( (array!836 (arr!368 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!368 (_ BitVec 32))) )
))
(declare-fun f!39 () array!835)

(declare-fun array_inv!317 (array!835) Bool)

(assert (=> start!2195 (array_inv!317 f!39)))

(declare-fun bs!1759 () Bool)

(assert (= bs!1759 start!2195))

(declare-fun m!15359 () Bool)

(assert (=> bs!1759 m!15359))

(check-sat (not start!2195))
(check-sat)
