; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1087 () Bool)

(assert start!1087)

(declare-fun res!4024 () Bool)

(declare-fun e!2579 () Bool)

(assert (=> start!1087 (=> (not res!4024) (not e!2579))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!363 0))(
  ( (array!364 (arr!156 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!156 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!363)

(assert (=> start!1087 (= res!4024 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!156 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1087 e!2579))

(assert (=> start!1087 true))

(declare-fun array_inv!106 (array!363) Bool)

(assert (=> start!1087 (array_inv!106 qq!69)))

(declare-fun b!5151 () Bool)

(declare-fun res!4025 () Bool)

(assert (=> b!5151 (=> (not res!4025) (not e!2579))))

(declare-fun qqInv!0 (array!363) Bool)

(assert (=> b!5151 (= res!4025 (qqInv!0 qq!69))))

(declare-fun b!5152 () Bool)

(assert (=> b!5152 (= e!2579 false)))

(assert (= (and start!1087 res!4024) b!5151))

(assert (= (and b!5151 res!4025) b!5152))

(declare-fun m!7835 () Bool)

(assert (=> start!1087 m!7835))

(declare-fun m!7837 () Bool)

(assert (=> b!5151 m!7837))

(check-sat (not start!1087) (not b!5151))
(check-sat)
