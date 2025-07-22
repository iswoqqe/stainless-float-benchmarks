; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1125 () Bool)

(assert start!1125)

(declare-fun res!4276 () Bool)

(declare-fun e!2717 () Bool)

(assert (=> start!1125 (=> (not res!4276) (not e!2717))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!399 0))(
  ( (array!400 (arr!174 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!174 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!399)

(assert (=> start!1125 (= res!4276 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!174 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1125 e!2717))

(assert (=> start!1125 true))

(declare-fun array_inv!124 (array!399) Bool)

(assert (=> start!1125 (array_inv!124 qq!69)))

(declare-fun b!5415 () Bool)

(declare-fun res!4277 () Bool)

(assert (=> b!5415 (=> (not res!4277) (not e!2717))))

(declare-fun qqInv!0 (array!399) Bool)

(assert (=> b!5415 (= res!4277 (qqInv!0 qq!69))))

(declare-fun b!5416 () Bool)

(assert (=> b!5416 (= e!2717 false)))

(assert (= (and start!1125 res!4276) b!5415))

(assert (= (and b!5415 res!4277) b!5416))

(declare-fun m!8841 () Bool)

(assert (=> start!1125 m!8841))

(declare-fun m!8843 () Bool)

(assert (=> b!5415 m!8843))

(declare-fun m!8845 () Bool)

(assert (=> b!5416 m!8845))

(declare-fun m!8847 () Bool)

(assert (=> b!5416 m!8847))

(declare-fun m!8849 () Bool)

(assert (=> b!5416 m!8849))

(declare-fun m!8851 () Bool)

(assert (=> b!5416 m!8851))

(declare-fun m!8853 () Bool)

(assert (=> b!5416 m!8853))

(declare-fun m!8855 () Bool)

(assert (=> b!5416 m!8855))

(push 1)

(assert (not b!5415))

(assert (not start!1125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

