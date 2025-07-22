; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3179 () Bool)

(assert start!3179)

(declare-datatypes ((array!1438 0))(
  ( (array!1439 (arr!631 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!631 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1438)

(assert (=> start!3179 (and (= (size!631 fq!41) #b00000000000000000000000000010100) (bvsge #b00000000000000000000000000000000 (size!631 fq!41)))))

(declare-fun array_inv!579 (array!1438) Bool)

(assert (=> start!3179 (array_inv!579 fq!41)))

(declare-fun bs!3556 () Bool)

(assert (= bs!3556 start!3179))

(declare-fun m!28975 () Bool)

(assert (=> bs!3556 m!28975))

(push 1)

(assert (not start!3179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

