; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1145 () Bool)

(assert start!1145)

(declare-fun res!4336 () Bool)

(declare-fun e!2777 () Bool)

(assert (=> start!1145 (=> (not res!4336) (not e!2777))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!419 0))(
  ( (array!420 (arr!184 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!184 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!419)

(assert (=> start!1145 (= res!4336 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!184 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1145 e!2777))

(assert (=> start!1145 true))

(declare-fun array_inv!134 (array!419) Bool)

(assert (=> start!1145 (array_inv!134 qq!69)))

(declare-fun b!5475 () Bool)

(declare-fun res!4337 () Bool)

(assert (=> b!5475 (=> (not res!4337) (not e!2777))))

(declare-fun qqInv!0 (array!419) Bool)

(assert (=> b!5475 (= res!4337 (qqInv!0 qq!69))))

(declare-fun b!5476 () Bool)

(assert (=> b!5476 (= e!2777 false)))

(assert (= (and start!1145 res!4336) b!5475))

(assert (= (and b!5475 res!4337) b!5476))

(declare-fun m!9049 () Bool)

(assert (=> start!1145 m!9049))

(declare-fun m!9051 () Bool)

(assert (=> b!5475 m!9051))

(declare-fun m!9053 () Bool)

(assert (=> b!5476 m!9053))

(declare-fun m!9055 () Bool)

(assert (=> b!5476 m!9055))

(declare-fun m!9057 () Bool)

(assert (=> b!5476 m!9057))

(declare-fun m!9059 () Bool)

(assert (=> b!5476 m!9059))

(declare-fun m!9061 () Bool)

(assert (=> b!5476 m!9061))

(declare-fun m!9063 () Bool)

(assert (=> b!5476 m!9063))

(declare-fun m!9065 () Bool)

(assert (=> b!5476 m!9065))

(declare-fun m!9067 () Bool)

(assert (=> b!5476 m!9067))

(declare-fun m!9069 () Bool)

(assert (=> b!5476 m!9069))

(push 1)

(assert (not start!1145))

(assert (not b!5475))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

