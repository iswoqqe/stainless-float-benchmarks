; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3187 () Bool)

(assert start!3187)

(declare-datatypes ((array!1446 0))(
  ( (array!1447 (arr!635 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!635 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1446)

(assert (=> start!3187 (and (= (size!635 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!635 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!635 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!635 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!635 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (bvsge #b00000000000000000000000000000010 (size!635 fq!41)))))

(declare-fun array_inv!583 (array!1446) Bool)

(assert (=> start!3187 (array_inv!583 fq!41)))

(declare-fun bs!3564 () Bool)

(assert (= bs!3564 start!3187))

(declare-fun m!28991 () Bool)

(assert (=> bs!3564 m!28991))

(declare-fun m!28993 () Bool)

(assert (=> bs!3564 m!28993))

(declare-fun m!28995 () Bool)

(assert (=> bs!3564 m!28995))

(push 1)

(assert (not start!3187))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

