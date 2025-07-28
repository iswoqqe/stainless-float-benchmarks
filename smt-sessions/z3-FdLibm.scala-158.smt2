; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1127 () Bool)

(assert start!1127)

(declare-fun res!4144 () Bool)

(declare-fun e!2699 () Bool)

(assert (=> start!1127 (=> (not res!4144) (not e!2699))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!403 0))(
  ( (array!404 (arr!176 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!176 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!403)

(assert (=> start!1127 (= res!4144 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!176 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1127 e!2699))

(assert (=> start!1127 true))

(declare-fun array_inv!126 (array!403) Bool)

(assert (=> start!1127 (array_inv!126 qq!69)))

(declare-fun b!5271 () Bool)

(declare-fun res!4145 () Bool)

(assert (=> b!5271 (=> (not res!4145) (not e!2699))))

(declare-fun qqInv!0 (array!403) Bool)

(assert (=> b!5271 (= res!4145 (qqInv!0 qq!69))))

(declare-fun b!5272 () Bool)

(assert (=> b!5272 (= e!2699 false)))

(assert (= (and start!1127 res!4144) b!5271))

(assert (= (and b!5271 res!4145) b!5272))

(declare-fun m!8083 () Bool)

(assert (=> start!1127 m!8083))

(declare-fun m!8085 () Bool)

(assert (=> b!5271 m!8085))

(declare-fun m!8087 () Bool)

(assert (=> b!5272 m!8087))

(declare-fun m!8089 () Bool)

(assert (=> b!5272 m!8089))

(declare-fun m!8091 () Bool)

(assert (=> b!5272 m!8091))

(declare-fun m!8093 () Bool)

(assert (=> b!5272 m!8093))

(declare-fun m!8095 () Bool)

(assert (=> b!5272 m!8095))

(declare-fun m!8097 () Bool)

(assert (=> b!5272 m!8097))

(declare-fun m!8099 () Bool)

(assert (=> b!5272 m!8099))

(declare-fun m!8101 () Bool)

(assert (=> b!5272 m!8101))

(declare-fun m!8103 () Bool)

(assert (=> b!5272 m!8103))

(check-sat (not start!1127) (not b!5271))
(check-sat)
