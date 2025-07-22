; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3 () Bool)

(assert start!3)

(assert (=> start!3 false))

(assert (=> start!3 true))

(check-sat)
