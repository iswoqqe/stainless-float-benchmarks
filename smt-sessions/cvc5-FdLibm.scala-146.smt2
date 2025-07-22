; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1105 () Bool)

(assert start!1105)

(declare-fun res!4216 () Bool)

(declare-fun e!2657 () Bool)

(assert (=> start!1105 (=> (not res!4216) (not e!2657))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!379 0))(
  ( (array!380 (arr!164 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!164 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!379)

(assert (=> start!1105 (= res!4216 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!164 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1105 e!2657))

(assert (=> start!1105 true))

(declare-fun array_inv!114 (array!379) Bool)

(assert (=> start!1105 (array_inv!114 qq!69)))

(declare-fun b!5355 () Bool)

(declare-fun res!4217 () Bool)

(assert (=> b!5355 (=> (not res!4217) (not e!2657))))

(declare-fun qqInv!0 (array!379) Bool)

(assert (=> b!5355 (= res!4217 (qqInv!0 qq!69))))

(declare-fun b!5356 () Bool)

(assert (=> b!5356 (= e!2657 false)))

(assert (= (and start!1105 res!4216) b!5355))

(assert (= (and b!5355 res!4217) b!5356))

(declare-fun m!8693 () Bool)

(assert (=> start!1105 m!8693))

(declare-fun m!8695 () Bool)

(assert (=> b!5355 m!8695))

(declare-fun m!8697 () Bool)

(assert (=> b!5356 m!8697))

(declare-fun m!8699 () Bool)

(assert (=> b!5356 m!8699))

(declare-fun m!8701 () Bool)

(assert (=> b!5356 m!8701))

(push 1)

(assert (not start!1105))

(assert (not b!5355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

