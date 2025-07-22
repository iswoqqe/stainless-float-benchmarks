; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3095 () Bool)

(assert start!3095)

(declare-datatypes ((array!1356 0))(
  ( (array!1357 (arr!590 (Array (_ BitVec 32) (_ BitVec 32))) (size!590 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1356)

(assert (=> start!3095 (and (= (size!590 a!13) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!590 a!13)))))

(declare-fun array_inv!538 (array!1356) Bool)

(assert (=> start!3095 (array_inv!538 a!13)))

(declare-fun bs!3511 () Bool)

(assert (= bs!3511 start!3095))

(declare-fun m!27373 () Bool)

(assert (=> bs!3511 m!27373))

(push 1)

(assert (not start!3095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

