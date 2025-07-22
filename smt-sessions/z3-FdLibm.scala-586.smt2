; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2991 () Bool)

(assert start!2991)

(declare-fun x!132 () (_ FloatingPoint 11 53))

(assert (=> start!2991 false))

(assert (=> start!2991 true))

(check-sat)
