; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1135 () Bool)

(assert start!1135)

(declare-fun res!4168 () Bool)

(declare-fun e!2723 () Bool)

(assert (=> start!1135 (=> (not res!4168) (not e!2723))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!411 0))(
  ( (array!412 (arr!180 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!180 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!411)

(assert (=> start!1135 (= res!4168 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!180 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1135 e!2723))

(assert (=> start!1135 true))

(declare-fun array_inv!130 (array!411) Bool)

(assert (=> start!1135 (array_inv!130 qq!69)))

(declare-fun b!5295 () Bool)

(declare-fun res!4169 () Bool)

(assert (=> b!5295 (=> (not res!4169) (not e!2723))))

(declare-fun qqInv!0 (array!411) Bool)

(assert (=> b!5295 (= res!4169 (qqInv!0 qq!69))))

(declare-fun b!5296 () Bool)

(assert (=> b!5296 (= e!2723 false)))

(assert (= (and start!1135 res!4168) b!5295))

(assert (= (and b!5295 res!4169) b!5296))

(declare-fun m!8171 () Bool)

(assert (=> start!1135 m!8171))

(declare-fun m!8173 () Bool)

(assert (=> b!5295 m!8173))

(declare-fun m!8175 () Bool)

(assert (=> b!5296 m!8175))

(declare-fun m!8177 () Bool)

(assert (=> b!5296 m!8177))

(declare-fun m!8179 () Bool)

(assert (=> b!5296 m!8179))

(declare-fun m!8181 () Bool)

(assert (=> b!5296 m!8181))

(declare-fun m!8183 () Bool)

(assert (=> b!5296 m!8183))

(declare-fun m!8185 () Bool)

(assert (=> b!5296 m!8185))

(declare-fun m!8187 () Bool)

(assert (=> b!5296 m!8187))

(declare-fun m!8189 () Bool)

(assert (=> b!5296 m!8189))

(declare-fun m!8191 () Bool)

(assert (=> b!5296 m!8191))

(check-sat (not start!1135) (not b!5295))
(check-sat)
