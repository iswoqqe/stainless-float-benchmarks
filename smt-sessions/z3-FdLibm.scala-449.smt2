; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2433 () Bool)

(assert start!2433)

(declare-datatypes ((array!991 0))(
  ( (array!992 (arr!436 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!436 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!991)

(assert (=> start!2433 (and (= (size!436 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!436 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!436 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000010)) (bvsge #b00000000000000000000000000000010 (size!436 qq!34)))))

(declare-fun array_inv!385 (array!991) Bool)

(assert (=> start!2433 (array_inv!385 qq!34)))

(declare-fun bs!1869 () Bool)

(assert (= bs!1869 start!2433))

(declare-fun m!17775 () Bool)

(assert (=> bs!1869 m!17775))

(declare-fun m!17777 () Bool)

(assert (=> bs!1869 m!17777))

(declare-fun m!17779 () Bool)

(assert (=> bs!1869 m!17779))

(declare-fun m!17781 () Bool)

(assert (=> bs!1869 m!17781))

(check-sat (not start!2433))
(check-sat)
