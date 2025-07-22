; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1109 () Bool)

(assert start!1109)

(declare-fun res!4228 () Bool)

(declare-fun e!2669 () Bool)

(assert (=> start!1109 (=> (not res!4228) (not e!2669))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!383 0))(
  ( (array!384 (arr!166 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!166 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!383)

(assert (=> start!1109 (= res!4228 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!166 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1109 e!2669))

(assert (=> start!1109 true))

(declare-fun array_inv!116 (array!383) Bool)

(assert (=> start!1109 (array_inv!116 qq!69)))

(declare-fun b!5367 () Bool)

(declare-fun res!4229 () Bool)

(assert (=> b!5367 (=> (not res!4229) (not e!2669))))

(declare-fun qqInv!0 (array!383) Bool)

(assert (=> b!5367 (= res!4229 (qqInv!0 qq!69))))

(declare-fun b!5368 () Bool)

(assert (=> b!5368 (= e!2669 false)))

(assert (= (and start!1109 res!4228) b!5367))

(assert (= (and b!5367 res!4229) b!5368))

(declare-fun m!8713 () Bool)

(assert (=> start!1109 m!8713))

(declare-fun m!8715 () Bool)

(assert (=> b!5367 m!8715))

(declare-fun m!8717 () Bool)

(assert (=> b!5368 m!8717))

(declare-fun m!8719 () Bool)

(assert (=> b!5368 m!8719))

(declare-fun m!8721 () Bool)

(assert (=> b!5368 m!8721))

(declare-fun m!8723 () Bool)

(assert (=> b!5368 m!8723))

(declare-fun m!8725 () Bool)

(assert (=> b!5368 m!8725))

(declare-fun m!8727 () Bool)

(assert (=> b!5368 m!8727))

(push 1)

(assert (not start!1109))

(assert (not b!5367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

