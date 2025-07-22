; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1087 () Bool)

(assert start!1087)

(declare-fun res!4162 () Bool)

(declare-fun e!2603 () Bool)

(assert (=> start!1087 (=> (not res!4162) (not e!2603))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!361 0))(
  ( (array!362 (arr!155 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!155 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!361)

(assert (=> start!1087 (= res!4162 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!155 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1087 e!2603))

(assert (=> start!1087 true))

(declare-fun array_inv!105 (array!361) Bool)

(assert (=> start!1087 (array_inv!105 qq!69)))

(declare-fun b!5301 () Bool)

(declare-fun res!4163 () Bool)

(assert (=> b!5301 (=> (not res!4163) (not e!2603))))

(declare-fun qqInv!0 (array!361) Bool)

(assert (=> b!5301 (= res!4163 (qqInv!0 qq!69))))

(declare-fun b!5302 () Bool)

(assert (=> b!5302 (= e!2603 (bvsge #b00000000000000000000000000000000 (size!155 qq!69)))))

(assert (= (and start!1087 res!4162) b!5301))

(assert (= (and b!5301 res!4163) b!5302))

(declare-fun m!8621 () Bool)

(assert (=> start!1087 m!8621))

(declare-fun m!8623 () Bool)

(assert (=> b!5301 m!8623))

(push 1)

(assert (not start!1087))

(assert (not b!5301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

