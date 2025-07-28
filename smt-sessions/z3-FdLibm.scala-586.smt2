; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3023 () Bool)

(assert start!3023)

(declare-fun x!132 () (_ FloatingPoint 11 53))

(assert (=> start!3023 false))

(assert (=> start!3023 true))

(check-sat)
