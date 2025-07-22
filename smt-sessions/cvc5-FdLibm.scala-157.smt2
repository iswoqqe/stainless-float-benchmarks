; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1127 () Bool)

(assert start!1127)

(declare-fun res!4282 () Bool)

(declare-fun e!2723 () Bool)

(assert (=> start!1127 (=> (not res!4282) (not e!2723))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!401 0))(
  ( (array!402 (arr!175 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!175 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!401)

(assert (=> start!1127 (= res!4282 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!175 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1127 e!2723))

(assert (=> start!1127 true))

(declare-fun array_inv!125 (array!401) Bool)

(assert (=> start!1127 (array_inv!125 qq!69)))

(declare-fun b!5421 () Bool)

(declare-fun res!4283 () Bool)

(assert (=> b!5421 (=> (not res!4283) (not e!2723))))

(declare-fun qqInv!0 (array!401) Bool)

(assert (=> b!5421 (= res!4283 (qqInv!0 qq!69))))

(declare-fun b!5422 () Bool)

(assert (=> b!5422 (= e!2723 false)))

(assert (= (and start!1127 res!4282) b!5421))

(assert (= (and b!5421 res!4283) b!5422))

(declare-fun m!8857 () Bool)

(assert (=> start!1127 m!8857))

(declare-fun m!8859 () Bool)

(assert (=> b!5421 m!8859))

(declare-fun m!8861 () Bool)

(assert (=> b!5422 m!8861))

(declare-fun m!8863 () Bool)

(assert (=> b!5422 m!8863))

(declare-fun m!8865 () Bool)

(assert (=> b!5422 m!8865))

(declare-fun m!8867 () Bool)

(assert (=> b!5422 m!8867))

(declare-fun m!8869 () Bool)

(assert (=> b!5422 m!8869))

(declare-fun m!8871 () Bool)

(assert (=> b!5422 m!8871))

(push 1)

(assert (not start!1127))

(assert (not b!5421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

