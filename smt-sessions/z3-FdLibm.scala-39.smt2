; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417 () Bool)

(assert start!417)

(declare-fun lt!383 () (_ BitVec 32))

(declare-fun x!127 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> start!417 (= lt!383 (__HI!0 x!127))))

(assert (=> start!417 false))

(assert (=> start!417 true))

(declare-fun bs!114 () Bool)

(assert (= bs!114 start!417))

(declare-fun m!357 () Bool)

(assert (=> bs!114 m!357))

(check-sat (not start!417))
(check-sat)
