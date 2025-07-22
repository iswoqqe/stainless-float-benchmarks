; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2425 () Bool)

(assert start!2425)

(declare-datatypes ((array!983 0))(
  ( (array!984 (arr!432 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!432 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!983)

(assert (=> start!2425 (and (= (size!432 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!432 qq!34) #b00000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!432 qq!34)))))

(declare-fun array_inv!381 (array!983) Bool)

(assert (=> start!2425 (array_inv!381 qq!34)))

(declare-fun bs!1861 () Bool)

(assert (= bs!1861 start!2425))

(declare-fun m!17755 () Bool)

(assert (=> bs!1861 m!17755))

(declare-fun m!17757 () Bool)

(assert (=> bs!1861 m!17757))

(check-sat (not start!2425))
(check-sat)
