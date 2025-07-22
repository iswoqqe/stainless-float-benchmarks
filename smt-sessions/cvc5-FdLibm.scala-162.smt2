; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1137 () Bool)

(assert start!1137)

(declare-fun res!4312 () Bool)

(declare-fun e!2753 () Bool)

(assert (=> start!1137 (=> (not res!4312) (not e!2753))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!411 0))(
  ( (array!412 (arr!180 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!180 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!411)

(assert (=> start!1137 (= res!4312 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!180 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1137 e!2753))

(assert (=> start!1137 true))

(declare-fun array_inv!130 (array!411) Bool)

(assert (=> start!1137 (array_inv!130 qq!69)))

(declare-fun b!5451 () Bool)

(declare-fun res!4313 () Bool)

(assert (=> b!5451 (=> (not res!4313) (not e!2753))))

(declare-fun qqInv!0 (array!411) Bool)

(assert (=> b!5451 (= res!4313 (qqInv!0 qq!69))))

(declare-fun b!5452 () Bool)

(assert (=> b!5452 (= e!2753 false)))

(assert (= (and start!1137 res!4312) b!5451))

(assert (= (and b!5451 res!4313) b!5452))

(declare-fun m!8961 () Bool)

(assert (=> start!1137 m!8961))

(declare-fun m!8963 () Bool)

(assert (=> b!5451 m!8963))

(declare-fun m!8965 () Bool)

(assert (=> b!5452 m!8965))

(declare-fun m!8967 () Bool)

(assert (=> b!5452 m!8967))

(declare-fun m!8969 () Bool)

(assert (=> b!5452 m!8969))

(declare-fun m!8971 () Bool)

(assert (=> b!5452 m!8971))

(declare-fun m!8973 () Bool)

(assert (=> b!5452 m!8973))

(declare-fun m!8975 () Bool)

(assert (=> b!5452 m!8975))

(declare-fun m!8977 () Bool)

(assert (=> b!5452 m!8977))

(declare-fun m!8979 () Bool)

(assert (=> b!5452 m!8979))

(declare-fun m!8981 () Bool)

(assert (=> b!5452 m!8981))

(push 1)

(assert (not b!5451))

(assert (not start!1137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

