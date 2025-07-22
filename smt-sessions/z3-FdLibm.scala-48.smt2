; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471 () Bool)

(assert start!471)

(assert (=> start!471 false))

(assert (=> start!471 true))

(check-sat)
