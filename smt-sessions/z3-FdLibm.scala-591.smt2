; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3001 () Bool)

(assert start!3001)

(declare-datatypes ((array!1433 0))(
  ( (array!1434 (arr!635 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!635 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1433)

(assert (=> start!3001 (and (= (size!635 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!635 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!635 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!635 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!635 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (bvsge #b00000000000000000000000000000010 (size!635 fq!41)))))

(declare-fun array_inv!583 (array!1433) Bool)

(assert (=> start!3001 (array_inv!583 fq!41)))

(declare-fun bs!2453 () Bool)

(assert (= bs!2453 start!3001))

(declare-fun m!23813 () Bool)

(assert (=> bs!2453 m!23813))

(declare-fun m!23815 () Bool)

(assert (=> bs!2453 m!23815))

(declare-fun m!23817 () Bool)

(assert (=> bs!2453 m!23817))

(check-sat (not start!3001))
(check-sat)
