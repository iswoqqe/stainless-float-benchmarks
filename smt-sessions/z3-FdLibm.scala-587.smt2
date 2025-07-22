; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2993 () Bool)

(assert start!2993)

(declare-datatypes ((array!1425 0))(
  ( (array!1426 (arr!631 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!631 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1425)

(assert (=> start!2993 (and (= (size!631 fq!41) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!631 fq!41)))))

(declare-fun array_inv!579 (array!1425) Bool)

(assert (=> start!2993 (array_inv!579 fq!41)))

(declare-fun bs!2445 () Bool)

(assert (= bs!2445 start!2993))

(declare-fun m!23797 () Bool)

(assert (=> bs!2445 m!23797))

(check-sat (not start!2993))
(check-sat)
