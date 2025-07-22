; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2999 () Bool)

(assert start!2999)

(declare-datatypes ((array!1431 0))(
  ( (array!1432 (arr!634 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!634 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1431)

(assert (=> start!2999 (and (= (size!634 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!634 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!634 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!634 fq!41) #b00000000000000000000000000000001)) (bvsge #b00000000000000000000000000000001 (size!634 fq!41)))))

(declare-fun array_inv!582 (array!1431) Bool)

(assert (=> start!2999 (array_inv!582 fq!41)))

(declare-fun bs!2451 () Bool)

(assert (= bs!2451 start!2999))

(declare-fun m!23807 () Bool)

(assert (=> bs!2451 m!23807))

(declare-fun m!23809 () Bool)

(assert (=> bs!2451 m!23809))

(declare-fun m!23811 () Bool)

(assert (=> bs!2451 m!23811))

(check-sat (not start!2999))
(check-sat)
