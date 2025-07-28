; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3025 () Bool)

(assert start!3025)

(declare-datatypes ((array!1428 0))(
  ( (array!1429 (arr!631 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!631 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1428)

(assert (=> start!3025 (and (= (size!631 fq!41) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!631 fq!41)))))

(declare-fun array_inv!579 (array!1428) Bool)

(assert (=> start!3025 (array_inv!579 fq!41)))

(declare-fun bs!3014 () Bool)

(assert (= bs!3014 start!3025))

(declare-fun m!26131 () Bool)

(assert (=> bs!3014 m!26131))

(check-sat (not start!3025))
(check-sat)
