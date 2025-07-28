; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3033 () Bool)

(assert start!3033)

(declare-datatypes ((array!1436 0))(
  ( (array!1437 (arr!635 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!635 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1436)

(assert (=> start!3033 (and (= (size!635 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!635 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!635 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!635 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!635 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (bvsge #b00000000000000000000000000000010 (size!635 fq!41)))))

(declare-fun array_inv!583 (array!1436) Bool)

(assert (=> start!3033 (array_inv!583 fq!41)))

(declare-fun bs!3022 () Bool)

(assert (= bs!3022 start!3033))

(declare-fun m!26147 () Bool)

(assert (=> bs!3022 m!26147))

(declare-fun m!26149 () Bool)

(assert (=> bs!3022 m!26149))

(declare-fun m!26151 () Bool)

(assert (=> bs!3022 m!26151))

(check-sat (not start!3033))
(check-sat)
