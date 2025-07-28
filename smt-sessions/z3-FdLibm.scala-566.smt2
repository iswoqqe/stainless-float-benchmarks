; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2983 () Bool)

(assert start!2983)

(declare-datatypes ((array!1388 0))(
  ( (array!1389 (arr!611 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!611 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1388)

(assert (=> start!2983 (and (= (size!611 a!12) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!611 a!12)))))

(declare-fun array_inv!559 (array!1388) Bool)

(assert (=> start!2983 (array_inv!559 a!12)))

(declare-fun bs!2992 () Bool)

(assert (= bs!2992 start!2983))

(declare-fun m!25331 () Bool)

(assert (=> bs!2992 m!25331))

(check-sat (not start!2983))
(check-sat)
