; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2225 () Bool)

(assert start!2225)

(assert (=> start!2225 false))

(declare-datatypes ((array!838 0))(
  ( (array!839 (arr!368 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!368 (_ BitVec 32))) )
))
(declare-fun f!39 () array!838)

(declare-fun array_inv!317 (array!838) Bool)

(assert (=> start!2225 (array_inv!317 f!39)))

(declare-fun bs!2218 () Bool)

(assert (= bs!2218 start!2225))

(declare-fun m!17185 () Bool)

(assert (=> bs!2218 m!17185))

(check-sat (not start!2225))
(check-sat)
