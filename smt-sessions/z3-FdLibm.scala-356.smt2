; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2013 () Bool)

(assert start!2013)

(declare-datatypes ((array!743 0))(
  ( (array!744 (arr!328 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!328 (_ BitVec 32))) )
))
(declare-fun a!11 () array!743)

(assert (=> start!2013 (and (= (size!328 a!11) #b00000000000000000000000000000101) (bvsge #b00000000000000000000000000000000 (size!328 a!11)))))

(declare-fun array_inv!277 (array!743) Bool)

(assert (=> start!2013 (array_inv!277 a!11)))

(declare-fun bs!1690 () Bool)

(assert (= bs!1690 start!2013))

(declare-fun m!14427 () Bool)

(assert (=> bs!1690 m!14427))

(check-sat (not start!2013))
(check-sat)
