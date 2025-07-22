; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1089 () Bool)

(assert start!1089)

(declare-fun res!4168 () Bool)

(declare-fun e!2609 () Bool)

(assert (=> start!1089 (=> (not res!4168) (not e!2609))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!363 0))(
  ( (array!364 (arr!156 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!156 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!363)

(assert (=> start!1089 (= res!4168 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!156 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1089 e!2609))

(assert (=> start!1089 true))

(declare-fun array_inv!106 (array!363) Bool)

(assert (=> start!1089 (array_inv!106 qq!69)))

(declare-fun b!5307 () Bool)

(declare-fun res!4169 () Bool)

(assert (=> b!5307 (=> (not res!4169) (not e!2609))))

(declare-fun qqInv!0 (array!363) Bool)

(assert (=> b!5307 (= res!4169 (qqInv!0 qq!69))))

(declare-fun b!5308 () Bool)

(assert (=> b!5308 (= e!2609 false)))

(assert (= (and start!1089 res!4168) b!5307))

(assert (= (and b!5307 res!4169) b!5308))

(declare-fun m!8625 () Bool)

(assert (=> start!1089 m!8625))

(declare-fun m!8627 () Bool)

(assert (=> b!5307 m!8627))

(push 1)

(assert (not start!1089))

(assert (not b!5307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

