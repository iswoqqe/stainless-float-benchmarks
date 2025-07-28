; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2039 () Bool)

(assert start!2039)

(declare-datatypes ((array!746 0))(
  ( (array!747 (arr!328 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!328 (_ BitVec 32))) )
))
(declare-fun a!11 () array!746)

(assert (=> start!2039 (and (= (size!328 a!11) #b00000000000000000000000000000101) (bvsge #b00000000000000000000000000000000 (size!328 a!11)))))

(declare-fun array_inv!277 (array!746) Bool)

(assert (=> start!2039 (array_inv!277 a!11)))

(declare-fun bs!2149 () Bool)

(assert (= bs!2149 start!2039))

(declare-fun m!16251 () Bool)

(assert (=> bs!2149 m!16251))

(check-sat (not start!2039))
(check-sat)
