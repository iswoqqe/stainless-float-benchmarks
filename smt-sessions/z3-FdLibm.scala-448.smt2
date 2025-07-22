; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2431 () Bool)

(assert start!2431)

(declare-datatypes ((array!989 0))(
  ( (array!990 (arr!435 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!435 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!989)

(assert (=> start!2431 (and (= (size!435 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!435 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!435 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!435 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!435 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (bvsge #b00000000000000000000000000000010 (size!435 qq!34)))))

(declare-fun array_inv!384 (array!989) Bool)

(assert (=> start!2431 (array_inv!384 qq!34)))

(declare-fun bs!1867 () Bool)

(assert (= bs!1867 start!2431))

(declare-fun m!17769 () Bool)

(assert (=> bs!1867 m!17769))

(declare-fun m!17771 () Bool)

(assert (=> bs!1867 m!17771))

(declare-fun m!17773 () Bool)

(assert (=> bs!1867 m!17773))

(check-sat (not start!2431))
(check-sat)
