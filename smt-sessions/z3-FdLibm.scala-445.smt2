; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2455 () Bool)

(assert start!2455)

(declare-datatypes ((array!986 0))(
  ( (array!987 (arr!432 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!432 (_ BitVec 32))) )
))
(declare-fun qq!34 () array!986)

(assert (=> start!2455 (and (= (size!432 qq!34) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!432 qq!34) #b00000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!432 qq!34)))))

(declare-fun array_inv!381 (array!986) Bool)

(assert (=> start!2455 (array_inv!381 qq!34)))

(declare-fun bs!2320 () Bool)

(assert (= bs!2320 start!2455))

(declare-fun m!19581 () Bool)

(assert (=> bs!2320 m!19581))

(declare-fun m!19583 () Bool)

(assert (=> bs!2320 m!19583))

(check-sat (not start!2455))
(check-sat)
