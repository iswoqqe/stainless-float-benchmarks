; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2995 () Bool)

(assert start!2995)

(declare-datatypes ((array!1427 0))(
  ( (array!1428 (arr!632 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!632 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1427)

(assert (=> start!2995 (and (= (size!632 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!632 fq!41) #b00000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!632 fq!41)))))

(declare-fun array_inv!580 (array!1427) Bool)

(assert (=> start!2995 (array_inv!580 fq!41)))

(declare-fun bs!2447 () Bool)

(assert (= bs!2447 start!2995))

(declare-fun m!23799 () Bool)

(assert (=> bs!2447 m!23799))

(declare-fun m!23801 () Bool)

(assert (=> bs!2447 m!23801))

(check-sat (not start!2995))
(check-sat)
