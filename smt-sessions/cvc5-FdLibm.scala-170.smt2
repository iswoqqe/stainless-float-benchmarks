; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1153 () Bool)

(assert start!1153)

(declare-fun res!4360 () Bool)

(declare-fun e!2801 () Bool)

(assert (=> start!1153 (=> (not res!4360) (not e!2801))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!427 0))(
  ( (array!428 (arr!188 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!188 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!427)

(assert (=> start!1153 (= res!4360 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!188 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1153 e!2801))

(assert (=> start!1153 true))

(declare-fun array_inv!138 (array!427) Bool)

(assert (=> start!1153 (array_inv!138 qq!69)))

(declare-fun b!5499 () Bool)

(declare-fun res!4361 () Bool)

(assert (=> b!5499 (=> (not res!4361) (not e!2801))))

(declare-fun qqInv!0 (array!427) Bool)

(assert (=> b!5499 (= res!4361 (qqInv!0 qq!69))))

(declare-fun b!5500 () Bool)

(assert (=> b!5500 (= e!2801 false)))

(assert (= (and start!1153 res!4360) b!5499))

(assert (= (and b!5499 res!4361) b!5500))

(declare-fun m!9137 () Bool)

(assert (=> start!1153 m!9137))

(declare-fun m!9139 () Bool)

(assert (=> b!5499 m!9139))

(declare-fun m!9141 () Bool)

(assert (=> b!5500 m!9141))

(declare-fun m!9143 () Bool)

(assert (=> b!5500 m!9143))

(declare-fun m!9145 () Bool)

(assert (=> b!5500 m!9145))

(declare-fun m!9147 () Bool)

(assert (=> b!5500 m!9147))

(declare-fun m!9149 () Bool)

(assert (=> b!5500 m!9149))

(declare-fun m!9151 () Bool)

(assert (=> b!5500 m!9151))

(declare-fun m!9153 () Bool)

(assert (=> b!5500 m!9153))

(declare-fun m!9155 () Bool)

(assert (=> b!5500 m!9155))

(declare-fun m!9157 () Bool)

(assert (=> b!5500 m!9157))

(declare-fun m!9159 () Bool)

(assert (=> b!5500 m!9159))

(declare-fun m!9161 () Bool)

(assert (=> b!5500 m!9161))

(declare-fun m!9163 () Bool)

(assert (=> b!5500 m!9163))

(push 1)

(assert (not start!1153))

(assert (not b!5499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

