; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2951 () Bool)

(assert start!2951)

(declare-datatypes ((array!1385 0))(
  ( (array!1386 (arr!611 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!611 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1385)

(assert (=> start!2951 (and (= (size!611 a!12) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!611 a!12)))))

(declare-fun array_inv!559 (array!1385) Bool)

(assert (=> start!2951 (array_inv!559 a!12)))

(declare-fun bs!2423 () Bool)

(assert (= bs!2423 start!2951))

(declare-fun m!22997 () Bool)

(assert (=> bs!2423 m!22997))

(check-sat (not start!2951))
(check-sat)
