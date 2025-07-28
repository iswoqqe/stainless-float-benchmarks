; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2463 () Bool)

(assert start!2463)

(declare-datatypes ((array!994 0))(
  ( (array!995 (arr!436 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!436 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!994)

(assert (=> start!2463 (and (= (size!436 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!436 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000001)) (fp.leq (select (arr!436 qq!34) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!436 qq!34) #b00000000000000000000000000000010)) (bvsge #b00000000000000000000000000000010 (size!436 qq!34)))))

(declare-fun array_inv!385 (array!994) Bool)

(assert (=> start!2463 (array_inv!385 qq!34)))

(declare-fun bs!2328 () Bool)

(assert (= bs!2328 start!2463))

(declare-fun m!19601 () Bool)

(assert (=> bs!2328 m!19601))

(declare-fun m!19603 () Bool)

(assert (=> bs!2328 m!19603))

(declare-fun m!19605 () Bool)

(assert (=> bs!2328 m!19605))

(declare-fun m!19607 () Bool)

(assert (=> bs!2328 m!19607))

(check-sat (not start!2463))
(check-sat)
