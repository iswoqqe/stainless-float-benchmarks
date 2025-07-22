; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2043 () Bool)

(assert start!2043)

(assert (=> start!2043 false))

(check-sat)
