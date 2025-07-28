; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2459 () Bool)

(assert start!2459)

(declare-datatypes ((array!990 0))(
  ( (array!991 (arr!434 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!434 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!990)

(assert (=> start!2459 (and (= (size!434 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!434 qq!34) #b00000000000000000000000000000000)) (fp.leq (select (arr!434 qq!34) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!434 qq!34) #b00000000000000000000000000000001)) (bvsge #b00000000000000000000000000000001 (size!434 qq!34)))))

(declare-fun array_inv!383 (array!990) Bool)

(assert (=> start!2459 (array_inv!383 qq!34)))

(declare-fun bs!2324 () Bool)

(assert (= bs!2324 start!2459))

(declare-fun m!19589 () Bool)

(assert (=> bs!2324 m!19589))

(declare-fun m!19591 () Bool)

(assert (=> bs!2324 m!19591))

(declare-fun m!19593 () Bool)

(assert (=> bs!2324 m!19593))

(check-sat (not start!2459))
(check-sat)
