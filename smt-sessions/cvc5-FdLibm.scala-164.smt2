; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1141 () Bool)

(assert start!1141)

(declare-fun res!4324 () Bool)

(declare-fun e!2765 () Bool)

(assert (=> start!1141 (=> (not res!4324) (not e!2765))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!415 0))(
  ( (array!416 (arr!182 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!182 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!415)

(assert (=> start!1141 (= res!4324 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!182 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1141 e!2765))

(assert (=> start!1141 true))

(declare-fun array_inv!132 (array!415) Bool)

(assert (=> start!1141 (array_inv!132 qq!69)))

(declare-fun b!5463 () Bool)

(declare-fun res!4325 () Bool)

(assert (=> b!5463 (=> (not res!4325) (not e!2765))))

(declare-fun qqInv!0 (array!415) Bool)

(assert (=> b!5463 (= res!4325 (qqInv!0 qq!69))))

(declare-fun b!5464 () Bool)

(assert (=> b!5464 (= e!2765 false)))

(assert (= (and start!1141 res!4324) b!5463))

(assert (= (and b!5463 res!4325) b!5464))

(declare-fun m!9005 () Bool)

(assert (=> start!1141 m!9005))

(declare-fun m!9007 () Bool)

(assert (=> b!5463 m!9007))

(declare-fun m!9009 () Bool)

(assert (=> b!5464 m!9009))

(declare-fun m!9011 () Bool)

(assert (=> b!5464 m!9011))

(declare-fun m!9013 () Bool)

(assert (=> b!5464 m!9013))

(declare-fun m!9015 () Bool)

(assert (=> b!5464 m!9015))

(declare-fun m!9017 () Bool)

(assert (=> b!5464 m!9017))

(declare-fun m!9019 () Bool)

(assert (=> b!5464 m!9019))

(declare-fun m!9021 () Bool)

(assert (=> b!5464 m!9021))

(declare-fun m!9023 () Bool)

(assert (=> b!5464 m!9023))

(declare-fun m!9025 () Bool)

(assert (=> b!5464 m!9025))

(push 1)

(assert (not b!5463))

(assert (not start!1141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

