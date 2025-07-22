; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2423 () Bool)

(assert start!2423)

(declare-datatypes ((array!981 0))(
  ( (array!982 (arr!431 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!431 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!981)

(assert (=> start!2423 (and (= (size!431 qq!34) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!431 qq!34)))))

(declare-fun array_inv!380 (array!981) Bool)

(assert (=> start!2423 (array_inv!380 qq!34)))

(declare-fun bs!1859 () Bool)

(assert (= bs!1859 start!2423))

(declare-fun m!17753 () Bool)

(assert (=> bs!1859 m!17753))

(check-sat (not start!2423))
(check-sat)
