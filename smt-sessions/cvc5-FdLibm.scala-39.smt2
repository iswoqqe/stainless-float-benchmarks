; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

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

(push 1)

(assert (not start!417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

