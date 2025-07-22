; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2997 () Bool)

(assert start!2997)

(declare-datatypes ((array!1429 0))(
  ( (array!1430 (arr!633 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!633 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1429)

(assert (=> start!2997 (and (= (size!633 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!633 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!633 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000001 (size!633 fq!41)))))

(declare-fun array_inv!581 (array!1429) Bool)

(assert (=> start!2997 (array_inv!581 fq!41)))

(declare-fun bs!2449 () Bool)

(assert (= bs!2449 start!2997))

(declare-fun m!23803 () Bool)

(assert (=> bs!2449 m!23803))

(declare-fun m!23805 () Bool)

(assert (=> bs!2449 m!23805))

(check-sat (not start!2997))
(check-sat)
