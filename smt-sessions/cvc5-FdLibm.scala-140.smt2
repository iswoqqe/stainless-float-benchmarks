; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1093 () Bool)

(assert start!1093)

(declare-fun res!4180 () Bool)

(declare-fun e!2621 () Bool)

(assert (=> start!1093 (=> (not res!4180) (not e!2621))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!367 0))(
  ( (array!368 (arr!158 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!158 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!367)

(assert (=> start!1093 (= res!4180 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!158 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1093 e!2621))

(assert (=> start!1093 true))

(declare-fun array_inv!108 (array!367) Bool)

(assert (=> start!1093 (array_inv!108 qq!69)))

(declare-fun b!5319 () Bool)

(declare-fun res!4181 () Bool)

(assert (=> b!5319 (=> (not res!4181) (not e!2621))))

(declare-fun qqInv!0 (array!367) Bool)

(assert (=> b!5319 (= res!4181 (qqInv!0 qq!69))))

(declare-fun b!5320 () Bool)

(assert (=> b!5320 (= e!2621 false)))

(assert (= (and start!1093 res!4180) b!5319))

(assert (= (and b!5319 res!4181) b!5320))

(declare-fun m!8633 () Bool)

(assert (=> start!1093 m!8633))

(declare-fun m!8635 () Bool)

(assert (=> b!5319 m!8635))

(declare-fun m!8637 () Bool)

(assert (=> b!5320 m!8637))

(declare-fun m!8639 () Bool)

(assert (=> b!5320 m!8639))

(declare-fun m!8641 () Bool)

(assert (=> b!5320 m!8641))

(push 1)

(assert (not b!5319))

(assert (not start!1093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

