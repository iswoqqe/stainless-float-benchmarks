; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2615 () Bool)

(assert start!2615)

(declare-datatypes ((array!1002 0))(
  ( (array!1003 (arr!435 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!435 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!1002)

(assert (=> start!2615 (and (= (size!435 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!435 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!435 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!435 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!435 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (bvsge #b00000000000000000000000000000010 (size!435 qq!34)))))

(declare-fun array_inv!384 (array!1002) Bool)

(assert (=> start!2615 (array_inv!384 qq!34)))

(declare-fun bs!2868 () Bool)

(assert (= bs!2868 start!2615))

(declare-fun m!22439 () Bool)

(assert (=> bs!2868 m!22439))

(declare-fun m!22441 () Bool)

(assert (=> bs!2868 m!22441))

(declare-fun m!22443 () Bool)

(assert (=> bs!2868 m!22443))

(push 1)

(assert (not start!2615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

