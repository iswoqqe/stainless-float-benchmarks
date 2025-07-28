; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3027 () Bool)

(assert start!3027)

(declare-datatypes ((array!1430 0))(
  ( (array!1431 (arr!632 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!632 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1430)

(assert (=> start!3027 (and (= (size!632 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!632 fq!41) #b00000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!632 fq!41)))))

(declare-fun array_inv!580 (array!1430) Bool)

(assert (=> start!3027 (array_inv!580 fq!41)))

(declare-fun bs!3016 () Bool)

(assert (= bs!3016 start!3027))

(declare-fun m!26133 () Bool)

(assert (=> bs!3016 m!26133))

(declare-fun m!26135 () Bool)

(assert (=> bs!3016 m!26135))

(check-sat (not start!3027))
(check-sat)
