; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3003 () Bool)

(assert start!3003)

(declare-datatypes ((array!1435 0))(
  ( (array!1436 (arr!636 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!636 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1435)

(assert (=> start!3003 (and (= (size!636 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!636 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!636 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000010)) (bvsge #b00000000000000000000000000000010 (size!636 fq!41)))))

(declare-fun array_inv!584 (array!1435) Bool)

(assert (=> start!3003 (array_inv!584 fq!41)))

(declare-fun bs!2455 () Bool)

(assert (= bs!2455 start!3003))

(declare-fun m!23819 () Bool)

(assert (=> bs!2455 m!23819))

(declare-fun m!23821 () Bool)

(assert (=> bs!2455 m!23821))

(declare-fun m!23823 () Bool)

(assert (=> bs!2455 m!23823))

(declare-fun m!23825 () Bool)

(assert (=> bs!2455 m!23825))

(check-sat (not start!3003))
(check-sat)
