; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1129 () Bool)

(assert start!1129)

(declare-fun res!4288 () Bool)

(declare-fun e!2729 () Bool)

(assert (=> start!1129 (=> (not res!4288) (not e!2729))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!403 0))(
  ( (array!404 (arr!176 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!176 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!403)

(assert (=> start!1129 (= res!4288 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!176 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1129 e!2729))

(assert (=> start!1129 true))

(declare-fun array_inv!126 (array!403) Bool)

(assert (=> start!1129 (array_inv!126 qq!69)))

(declare-fun b!5427 () Bool)

(declare-fun res!4289 () Bool)

(assert (=> b!5427 (=> (not res!4289) (not e!2729))))

(declare-fun qqInv!0 (array!403) Bool)

(assert (=> b!5427 (= res!4289 (qqInv!0 qq!69))))

(declare-fun b!5428 () Bool)

(assert (=> b!5428 (= e!2729 false)))

(assert (= (and start!1129 res!4288) b!5427))

(assert (= (and b!5427 res!4289) b!5428))

(declare-fun m!8873 () Bool)

(assert (=> start!1129 m!8873))

(declare-fun m!8875 () Bool)

(assert (=> b!5427 m!8875))

(declare-fun m!8877 () Bool)

(assert (=> b!5428 m!8877))

(declare-fun m!8879 () Bool)

(assert (=> b!5428 m!8879))

(declare-fun m!8881 () Bool)

(assert (=> b!5428 m!8881))

(declare-fun m!8883 () Bool)

(assert (=> b!5428 m!8883))

(declare-fun m!8885 () Bool)

(assert (=> b!5428 m!8885))

(declare-fun m!8887 () Bool)

(assert (=> b!5428 m!8887))

(declare-fun m!8889 () Bool)

(assert (=> b!5428 m!8889))

(declare-fun m!8891 () Bool)

(assert (=> b!5428 m!8891))

(declare-fun m!8893 () Bool)

(assert (=> b!5428 m!8893))

(push 1)

(assert (not b!5427))

(assert (not start!1129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

