; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3191 () Bool)

(assert start!3191)

(declare-datatypes ((array!1450 0))(
  ( (array!1451 (arr!637 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!637 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1450)

(assert (=> start!3191 (and (= (size!637 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!637 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!637 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!637 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!637 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!637 fq!41) #b00000000000000000000000000000010)) (fp.leq (select (arr!637 fq!41) #b00000000000000000000000000000010) (fp #b0 #b01111010000 #b1100110001001011101000011101001010011001111110100000)) (bvsge #b00000000000000000000000000000011 (size!637 fq!41)))))

(declare-fun array_inv!585 (array!1450) Bool)

(assert (=> start!3191 (array_inv!585 fq!41)))

(declare-fun bs!3568 () Bool)

(assert (= bs!3568 start!3191))

(declare-fun m!29005 () Bool)

(assert (=> bs!3568 m!29005))

(declare-fun m!29007 () Bool)

(assert (=> bs!3568 m!29007))

(declare-fun m!29009 () Bool)

(assert (=> bs!3568 m!29009))

(declare-fun m!29011 () Bool)

(assert (=> bs!3568 m!29011))

(push 1)

(assert (not start!3191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

