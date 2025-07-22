; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2621 () Bool)

(assert start!2621)

(declare-datatypes ((array!1008 0))(
  ( (array!1009 (arr!438 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!438 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!1008)

(assert (=> start!2621 (and (= (size!438 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!438 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!438 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!438 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!438 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!438 qq!34) #b00000000000000000000000000000010)) (fp.leq (select (arr!438 qq!34) #b00000000000000000000000000000010) (fp #b0 #b01111001110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!438 qq!34) #b00000000000000000000000000000011)) (bvsge #b00000000000000000000000000000011 (size!438 qq!34)))))

(declare-fun array_inv!387 (array!1008) Bool)

(assert (=> start!2621 (array_inv!387 qq!34)))

(declare-fun bs!2874 () Bool)

(assert (= bs!2874 start!2621))

(declare-fun m!22461 () Bool)

(assert (=> bs!2874 m!22461))

(declare-fun m!22463 () Bool)

(assert (=> bs!2874 m!22463))

(declare-fun m!22465 () Bool)

(assert (=> bs!2874 m!22465))

(declare-fun m!22467 () Bool)

(assert (=> bs!2874 m!22467))

(declare-fun m!22469 () Bool)

(assert (=> bs!2874 m!22469))

(push 1)

(assert (not start!2621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

