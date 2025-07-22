; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3185 () Bool)

(assert start!3185)

(declare-datatypes ((array!1444 0))(
  ( (array!1445 (arr!634 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!634 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1444)

(assert (=> start!3185 (and (= (size!634 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!634 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!634 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!634 fq!41) #b00000000000000000000000000000001)) (bvsge #b00000000000000000000000000000001 (size!634 fq!41)))))

(declare-fun array_inv!582 (array!1444) Bool)

(assert (=> start!3185 (array_inv!582 fq!41)))

(declare-fun bs!3562 () Bool)

(assert (= bs!3562 start!3185))

(declare-fun m!28985 () Bool)

(assert (=> bs!3562 m!28985))

(declare-fun m!28987 () Bool)

(assert (=> bs!3562 m!28987))

(declare-fun m!28989 () Bool)

(assert (=> bs!3562 m!28989))

(push 1)

(assert (not start!3185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

