; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3189 () Bool)

(assert start!3189)

(declare-datatypes ((array!1448 0))(
  ( (array!1449 (arr!636 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!636 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1448)

(assert (=> start!3189 (and (= (size!636 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!636 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!636 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!636 fq!41) #b00000000000000000000000000000010)) (bvsge #b00000000000000000000000000000010 (size!636 fq!41)))))

(declare-fun array_inv!584 (array!1448) Bool)

(assert (=> start!3189 (array_inv!584 fq!41)))

(declare-fun bs!3566 () Bool)

(assert (= bs!3566 start!3189))

(declare-fun m!28997 () Bool)

(assert (=> bs!3566 m!28997))

(declare-fun m!28999 () Bool)

(assert (=> bs!3566 m!28999))

(declare-fun m!29001 () Bool)

(assert (=> bs!3566 m!29001))

(declare-fun m!29003 () Bool)

(assert (=> bs!3566 m!29003))

(push 1)

(assert (not start!3189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

