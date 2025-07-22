; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1121 () Bool)

(assert start!1121)

(declare-fun res!4264 () Bool)

(declare-fun e!2705 () Bool)

(assert (=> start!1121 (=> (not res!4264) (not e!2705))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!395 0))(
  ( (array!396 (arr!172 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!172 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!395)

(assert (=> start!1121 (= res!4264 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!172 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1121 e!2705))

(assert (=> start!1121 true))

(declare-fun array_inv!122 (array!395) Bool)

(assert (=> start!1121 (array_inv!122 qq!69)))

(declare-fun b!5403 () Bool)

(declare-fun res!4265 () Bool)

(assert (=> b!5403 (=> (not res!4265) (not e!2705))))

(declare-fun qqInv!0 (array!395) Bool)

(assert (=> b!5403 (= res!4265 (qqInv!0 qq!69))))

(declare-fun b!5404 () Bool)

(assert (=> b!5404 (= e!2705 false)))

(assert (= (and start!1121 res!4264) b!5403))

(assert (= (and b!5403 res!4265) b!5404))

(declare-fun m!8809 () Bool)

(assert (=> start!1121 m!8809))

(declare-fun m!8811 () Bool)

(assert (=> b!5403 m!8811))

(declare-fun m!8813 () Bool)

(assert (=> b!5404 m!8813))

(declare-fun m!8815 () Bool)

(assert (=> b!5404 m!8815))

(declare-fun m!8817 () Bool)

(assert (=> b!5404 m!8817))

(declare-fun m!8819 () Bool)

(assert (=> b!5404 m!8819))

(declare-fun m!8821 () Bool)

(assert (=> b!5404 m!8821))

(declare-fun m!8823 () Bool)

(assert (=> b!5404 m!8823))

(push 1)

(assert (not b!5403))

(assert (not start!1121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

