; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1 () Bool)

(assert start!1)

(assert (=> start!1 false))

(assert (=> start!1 true))

(check-sat)
