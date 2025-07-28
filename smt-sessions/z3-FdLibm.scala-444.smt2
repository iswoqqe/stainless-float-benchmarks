; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2453 () Bool)

(assert start!2453)

(declare-datatypes ((array!984 0))(
  ( (array!985 (arr!431 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!431 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!984)

(assert (=> start!2453 (and (= (size!431 qq!34) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!431 qq!34)))))

(declare-fun array_inv!380 (array!984) Bool)

(assert (=> start!2453 (array_inv!380 qq!34)))

(declare-fun bs!2318 () Bool)

(assert (= bs!2318 start!2453))

(declare-fun m!19579 () Bool)

(assert (=> bs!2318 m!19579))

(check-sat (not start!2453))
(check-sat)
