; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1089 () Bool)

(assert start!1089)

(declare-fun res!4030 () Bool)

(declare-fun e!2585 () Bool)

(assert (=> start!1089 (=> (not res!4030) (not e!2585))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!365 0))(
  ( (array!366 (arr!157 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!157 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!365)

(assert (=> start!1089 (= res!4030 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!157 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1089 e!2585))

(assert (=> start!1089 true))

(declare-fun array_inv!107 (array!365) Bool)

(assert (=> start!1089 (array_inv!107 qq!69)))

(declare-fun b!5157 () Bool)

(declare-fun res!4031 () Bool)

(assert (=> b!5157 (=> (not res!4031) (not e!2585))))

(declare-fun qqInv!0 (array!365) Bool)

(assert (=> b!5157 (= res!4031 (qqInv!0 qq!69))))

(declare-fun b!5158 () Bool)

(assert (=> b!5158 (= e!2585 false)))

(assert (= (and start!1089 res!4030) b!5157))

(assert (= (and b!5157 res!4031) b!5158))

(declare-fun m!7839 () Bool)

(assert (=> start!1089 m!7839))

(declare-fun m!7841 () Bool)

(assert (=> b!5157 m!7841))

(check-sat (not b!5157) (not start!1089))
(check-sat)
