; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2613 () Bool)

(assert start!2613)

(declare-datatypes ((array!1000 0))(
  ( (array!1001 (arr!434 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!434 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!1000)

(assert (=> start!2613 (and (= (size!434 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!434 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!434 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!434 qq!34) #b00000000000000000000000000000001)) (bvsge #b00000000000000000000000000000001 (size!434 qq!34)))))

(declare-fun array_inv!383 (array!1000) Bool)

(assert (=> start!2613 (array_inv!383 qq!34)))

(declare-fun bs!2866 () Bool)

(assert (= bs!2866 start!2613))

(declare-fun m!22433 () Bool)

(assert (=> bs!2866 m!22433))

(declare-fun m!22435 () Bool)

(assert (=> bs!2866 m!22435))

(declare-fun m!22437 () Bool)

(assert (=> bs!2866 m!22437))

(push 1)

(assert (not start!2613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

