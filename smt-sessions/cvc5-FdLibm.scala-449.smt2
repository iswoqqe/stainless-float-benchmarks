; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2617 () Bool)

(assert start!2617)

(declare-datatypes ((array!1004 0))(
  ( (array!1005 (arr!436 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!436 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!1004)

(assert (=> start!2617 (and (= (size!436 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!436 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!436 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000010)) (bvsge #b00000000000000000000000000000010 (size!436 qq!34)))))

(declare-fun array_inv!385 (array!1004) Bool)

(assert (=> start!2617 (array_inv!385 qq!34)))

(declare-fun bs!2870 () Bool)

(assert (= bs!2870 start!2617))

(declare-fun m!22445 () Bool)

(assert (=> bs!2870 m!22445))

(declare-fun m!22447 () Bool)

(assert (=> bs!2870 m!22447))

(declare-fun m!22449 () Bool)

(assert (=> bs!2870 m!22449))

(declare-fun m!22451 () Bool)

(assert (=> bs!2870 m!22451))

(push 1)

(assert (not start!2617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

