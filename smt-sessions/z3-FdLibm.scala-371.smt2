; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2073 () Bool)

(assert start!2073)

(assert (=> start!2073 false))

(check-sat)
