; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3035 () Bool)

(assert start!3035)

(declare-datatypes ((array!1438 0))(
  ( (array!1439 (arr!636 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!636 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1438)

(assert (=> start!3035 (and (= (size!636 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!636 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!636 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000010)) (bvsge #b00000000000000000000000000000010 (size!636 fq!41)))))

(declare-fun array_inv!584 (array!1438) Bool)

(assert (=> start!3035 (array_inv!584 fq!41)))

(declare-fun bs!3024 () Bool)

(assert (= bs!3024 start!3035))

(declare-fun m!26153 () Bool)

(assert (=> bs!3024 m!26153))

(declare-fun m!26155 () Bool)

(assert (=> bs!3024 m!26155))

(declare-fun m!26157 () Bool)

(assert (=> bs!3024 m!26157))

(declare-fun m!26159 () Bool)

(assert (=> bs!3024 m!26159))

(check-sat (not start!3035))
(check-sat)
