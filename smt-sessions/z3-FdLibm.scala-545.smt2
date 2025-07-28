; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2941 () Bool)

(assert start!2941)

(declare-datatypes ((array!1346 0))(
  ( (array!1347 (arr!590 (Array (_ BitVec 32) (_ BitVec 32))) (size!590 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1346)

(assert (=> start!2941 (and (= (size!590 a!13) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!590 a!13)))))

(declare-fun array_inv!538 (array!1346) Bool)

(assert (=> start!2941 (array_inv!538 a!13)))

(declare-fun bs!2969 () Bool)

(assert (= bs!2969 start!2941))

(declare-fun m!24529 () Bool)

(assert (=> bs!2969 m!24529))

(check-sat (not start!2941))
(check-sat)
