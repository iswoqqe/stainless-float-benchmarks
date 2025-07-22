; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7 () Bool)

(assert start!7)

(assert (=> start!7 false))

(assert (=> start!7 true))

(check-sat)
