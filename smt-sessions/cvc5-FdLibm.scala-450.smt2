; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2619 () Bool)

(assert start!2619)

(declare-datatypes ((array!1006 0))(
  ( (array!1007 (arr!437 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!437 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!1006)

(assert (=> start!2619 (and (= (size!437 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!437 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!437 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!437 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!437 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!437 qq!34) #b00000000000000000000000000000010)) (fp.leq (select (arr!437 qq!34) #b00000000000000000000000000000010) (fp #b0 #b01111001110 #b1111111111111111111111100000000000000000000000000000)) (bvsge #b00000000000000000000000000000011 (size!437 qq!34)))))

(declare-fun array_inv!386 (array!1006) Bool)

(assert (=> start!2619 (array_inv!386 qq!34)))

(declare-fun bs!2872 () Bool)

(assert (= bs!2872 start!2619))

(declare-fun m!22453 () Bool)

(assert (=> bs!2872 m!22453))

(declare-fun m!22455 () Bool)

(assert (=> bs!2872 m!22455))

(declare-fun m!22457 () Bool)

(assert (=> bs!2872 m!22457))

(declare-fun m!22459 () Bool)

(assert (=> bs!2872 m!22459))

(push 1)

(assert (not start!2619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

