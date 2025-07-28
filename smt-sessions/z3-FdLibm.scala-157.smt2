; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1125 () Bool)

(assert start!1125)

(declare-fun res!4138 () Bool)

(declare-fun e!2693 () Bool)

(assert (=> start!1125 (=> (not res!4138) (not e!2693))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!401 0))(
  ( (array!402 (arr!175 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!175 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!401)

(assert (=> start!1125 (= res!4138 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!175 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1125 e!2693))

(assert (=> start!1125 true))

(declare-fun array_inv!125 (array!401) Bool)

(assert (=> start!1125 (array_inv!125 qq!69)))

(declare-fun b!5265 () Bool)

(declare-fun res!4139 () Bool)

(assert (=> b!5265 (=> (not res!4139) (not e!2693))))

(declare-fun qqInv!0 (array!401) Bool)

(assert (=> b!5265 (= res!4139 (qqInv!0 qq!69))))

(declare-fun b!5266 () Bool)

(assert (=> b!5266 (= e!2693 false)))

(assert (= (and start!1125 res!4138) b!5265))

(assert (= (and b!5265 res!4139) b!5266))

(declare-fun m!8067 () Bool)

(assert (=> start!1125 m!8067))

(declare-fun m!8069 () Bool)

(assert (=> b!5265 m!8069))

(declare-fun m!8071 () Bool)

(assert (=> b!5266 m!8071))

(declare-fun m!8073 () Bool)

(assert (=> b!5266 m!8073))

(declare-fun m!8075 () Bool)

(assert (=> b!5266 m!8075))

(declare-fun m!8077 () Bool)

(assert (=> b!5266 m!8077))

(declare-fun m!8079 () Bool)

(assert (=> b!5266 m!8079))

(declare-fun m!8081 () Bool)

(assert (=> b!5266 m!8081))

(check-sat (not start!1125) (not b!5265))
(check-sat)
