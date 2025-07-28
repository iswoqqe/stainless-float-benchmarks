; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3031 () Bool)

(assert start!3031)

(declare-datatypes ((array!1434 0))(
  ( (array!1435 (arr!634 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!634 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1434)

(assert (=> start!3031 (and (= (size!634 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!634 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!634 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!634 fq!41) #b00000000000000000000000000000001)) (bvsge #b00000000000000000000000000000001 (size!634 fq!41)))))

(declare-fun array_inv!582 (array!1434) Bool)

(assert (=> start!3031 (array_inv!582 fq!41)))

(declare-fun bs!3020 () Bool)

(assert (= bs!3020 start!3031))

(declare-fun m!26141 () Bool)

(assert (=> bs!3020 m!26141))

(declare-fun m!26143 () Bool)

(assert (=> bs!3020 m!26143))

(declare-fun m!26145 () Bool)

(assert (=> bs!3020 m!26145))

(check-sat (not start!3031))
(check-sat)
