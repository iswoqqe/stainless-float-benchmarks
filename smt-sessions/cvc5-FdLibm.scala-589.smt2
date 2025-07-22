; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3183 () Bool)

(assert start!3183)

(declare-datatypes ((array!1442 0))(
  ( (array!1443 (arr!633 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!633 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1442)

(assert (=> start!3183 (and (= (size!633 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!633 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!633 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000001 (size!633 fq!41)))))

(declare-fun array_inv!581 (array!1442) Bool)

(assert (=> start!3183 (array_inv!581 fq!41)))

(declare-fun bs!3560 () Bool)

(assert (= bs!3560 start!3183))

(declare-fun m!28981 () Bool)

(assert (=> bs!3560 m!28981))

(declare-fun m!28983 () Bool)

(assert (=> bs!3560 m!28983))

(push 1)

(assert (not start!3183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

