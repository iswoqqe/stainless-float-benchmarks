; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2909 () Bool)

(assert start!2909)

(declare-datatypes ((array!1343 0))(
  ( (array!1344 (arr!590 (Array (_ BitVec 32) (_ BitVec 32))) (size!590 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1343)

(assert (=> start!2909 (and (= (size!590 a!13) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!590 a!13)))))

(declare-fun array_inv!538 (array!1343) Bool)

(assert (=> start!2909 (array_inv!538 a!13)))

(declare-fun bs!2400 () Bool)

(assert (= bs!2400 start!2909))

(declare-fun m!22195 () Bool)

(assert (=> bs!2400 m!22195))

(check-sat (not start!2909))
(check-sat)
