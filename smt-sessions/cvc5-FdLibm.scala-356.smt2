; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2193 () Bool)

(assert start!2193)

(declare-datatypes ((array!756 0))(
  ( (array!757 (arr!328 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!328 (_ BitVec 32))) )
))
(declare-fun a!11 () array!756)

(assert (=> start!2193 (and (= (size!328 a!11) #b00000000000000000000000000000101) (bvsge #b00000000000000000000000000000000 (size!328 a!11)))))

(declare-fun array_inv!277 (array!756) Bool)

(assert (=> start!2193 (array_inv!277 a!11)))

(declare-fun bs!2691 () Bool)

(assert (= bs!2691 start!2193))

(declare-fun m!19095 () Bool)

(assert (=> bs!2691 m!19095))

(push 1)

(assert (not start!2193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

