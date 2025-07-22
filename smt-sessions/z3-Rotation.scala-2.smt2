; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5 () Bool)

(assert start!5)

(assert (=> start!5 false))

(assert (=> start!5 true))

(check-sat)
