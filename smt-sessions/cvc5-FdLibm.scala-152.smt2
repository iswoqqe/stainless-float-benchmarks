; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1117 () Bool)

(assert start!1117)

(declare-fun res!4252 () Bool)

(declare-fun e!2693 () Bool)

(assert (=> start!1117 (=> (not res!4252) (not e!2693))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!391 0))(
  ( (array!392 (arr!170 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!170 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!391)

(assert (=> start!1117 (= res!4252 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!170 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1117 e!2693))

(assert (=> start!1117 true))

(declare-fun array_inv!120 (array!391) Bool)

(assert (=> start!1117 (array_inv!120 qq!69)))

(declare-fun b!5391 () Bool)

(declare-fun res!4253 () Bool)

(assert (=> b!5391 (=> (not res!4253) (not e!2693))))

(declare-fun qqInv!0 (array!391) Bool)

(assert (=> b!5391 (= res!4253 (qqInv!0 qq!69))))

(declare-fun b!5392 () Bool)

(assert (=> b!5392 (= e!2693 false)))

(assert (= (and start!1117 res!4252) b!5391))

(assert (= (and b!5391 res!4253) b!5392))

(declare-fun m!8777 () Bool)

(assert (=> start!1117 m!8777))

(declare-fun m!8779 () Bool)

(assert (=> b!5391 m!8779))

(declare-fun m!8781 () Bool)

(assert (=> b!5392 m!8781))

(declare-fun m!8783 () Bool)

(assert (=> b!5392 m!8783))

(declare-fun m!8785 () Bool)

(assert (=> b!5392 m!8785))

(declare-fun m!8787 () Bool)

(assert (=> b!5392 m!8787))

(declare-fun m!8789 () Bool)

(assert (=> b!5392 m!8789))

(declare-fun m!8791 () Bool)

(assert (=> b!5392 m!8791))

(push 1)

(assert (not b!5391))

(assert (not start!1117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

