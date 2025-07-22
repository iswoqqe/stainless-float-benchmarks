; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1085 () Bool)

(assert start!1085)

(declare-fun res!4156 () Bool)

(declare-fun e!2597 () Bool)

(assert (=> start!1085 (=> (not res!4156) (not e!2597))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!359 0))(
  ( (array!360 (arr!154 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!154 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!359)

(assert (=> start!1085 (= res!4156 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!154 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1085 e!2597))

(assert (=> start!1085 true))

(declare-fun array_inv!104 (array!359) Bool)

(assert (=> start!1085 (array_inv!104 qq!69)))

(declare-fun b!5295 () Bool)

(declare-fun res!4157 () Bool)

(assert (=> b!5295 (=> (not res!4157) (not e!2597))))

(declare-fun qqInv!0 (array!359) Bool)

(assert (=> b!5295 (= res!4157 (qqInv!0 qq!69))))

(declare-fun b!5296 () Bool)

(assert (=> b!5296 (= e!2597 false)))

(assert (= (and start!1085 res!4156) b!5295))

(assert (= (and b!5295 res!4157) b!5296))

(declare-fun m!8617 () Bool)

(assert (=> start!1085 m!8617))

(declare-fun m!8619 () Bool)

(assert (=> b!5295 m!8619))

(push 1)

(assert (not start!1085))

(assert (not b!5295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

