; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1155 () Bool)

(assert start!1155)

(declare-fun res!4366 () Bool)

(declare-fun e!2807 () Bool)

(assert (=> start!1155 (=> (not res!4366) (not e!2807))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!429 0))(
  ( (array!430 (arr!189 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!189 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!429)

(assert (=> start!1155 (= res!4366 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!189 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1155 e!2807))

(assert (=> start!1155 true))

(declare-fun array_inv!139 (array!429) Bool)

(assert (=> start!1155 (array_inv!139 qq!69)))

(declare-fun b!5505 () Bool)

(declare-fun res!4367 () Bool)

(assert (=> b!5505 (=> (not res!4367) (not e!2807))))

(declare-fun qqInv!0 (array!429) Bool)

(assert (=> b!5505 (= res!4367 (qqInv!0 qq!69))))

(declare-fun b!5506 () Bool)

(assert (=> b!5506 (= e!2807 false)))

(assert (= (and start!1155 res!4366) b!5505))

(assert (= (and b!5505 res!4367) b!5506))

(declare-fun m!9165 () Bool)

(assert (=> start!1155 m!9165))

(declare-fun m!9167 () Bool)

(assert (=> b!5505 m!9167))

(declare-fun m!9169 () Bool)

(assert (=> b!5506 m!9169))

(declare-fun m!9171 () Bool)

(assert (=> b!5506 m!9171))

(declare-fun m!9173 () Bool)

(assert (=> b!5506 m!9173))

(declare-fun m!9175 () Bool)

(assert (=> b!5506 m!9175))

(declare-fun m!9177 () Bool)

(assert (=> b!5506 m!9177))

(declare-fun m!9179 () Bool)

(assert (=> b!5506 m!9179))

(declare-fun m!9181 () Bool)

(assert (=> b!5506 m!9181))

(declare-fun m!9183 () Bool)

(assert (=> b!5506 m!9183))

(declare-fun m!9185 () Bool)

(assert (=> b!5506 m!9185))

(declare-fun m!9187 () Bool)

(assert (=> b!5506 m!9187))

(declare-fun m!9189 () Bool)

(assert (=> b!5506 m!9189))

(declare-fun m!9191 () Bool)

(assert (=> b!5506 m!9191))

(push 1)

(assert (not b!5505))

(assert (not start!1155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

