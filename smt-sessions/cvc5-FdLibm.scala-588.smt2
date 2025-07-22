; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3181 () Bool)

(assert start!3181)

(declare-datatypes ((array!1440 0))(
  ( (array!1441 (arr!632 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!632 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1440)

(assert (=> start!3181 (and (= (size!632 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!632 fq!41) #b00000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!632 fq!41)))))

(declare-fun array_inv!580 (array!1440) Bool)

(assert (=> start!3181 (array_inv!580 fq!41)))

(declare-fun bs!3558 () Bool)

(assert (= bs!3558 start!3181))

(declare-fun m!28977 () Bool)

(assert (=> bs!3558 m!28977))

(declare-fun m!28979 () Bool)

(assert (=> bs!3558 m!28979))

(push 1)

(assert (not start!3181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

