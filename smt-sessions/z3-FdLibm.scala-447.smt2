; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2429 () Bool)

(assert start!2429)

(declare-datatypes ((array!987 0))(
  ( (array!988 (arr!434 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!434 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!987)

(assert (=> start!2429 (and (= (size!434 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!434 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!434 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!434 qq!34) #b00000000000000000000000000000001)) (bvsge #b00000000000000000000000000000001 (size!434 qq!34)))))

(declare-fun array_inv!383 (array!987) Bool)

(assert (=> start!2429 (array_inv!383 qq!34)))

(declare-fun bs!1865 () Bool)

(assert (= bs!1865 start!2429))

(declare-fun m!17763 () Bool)

(assert (=> bs!1865 m!17763))

(declare-fun m!17765 () Bool)

(assert (=> bs!1865 m!17765))

(declare-fun m!17767 () Bool)

(assert (=> bs!1865 m!17767))

(check-sat (not start!2429))
(check-sat)
