; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1105 () Bool)

(assert start!1105)

(declare-fun res!4078 () Bool)

(declare-fun e!2633 () Bool)

(assert (=> start!1105 (=> (not res!4078) (not e!2633))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!381 0))(
  ( (array!382 (arr!165 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!165 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!381)

(assert (=> start!1105 (= res!4078 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!165 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1105 e!2633))

(assert (=> start!1105 true))

(declare-fun array_inv!115 (array!381) Bool)

(assert (=> start!1105 (array_inv!115 qq!69)))

(declare-fun b!5205 () Bool)

(declare-fun res!4079 () Bool)

(assert (=> b!5205 (=> (not res!4079) (not e!2633))))

(declare-fun qqInv!0 (array!381) Bool)

(assert (=> b!5205 (= res!4079 (qqInv!0 qq!69))))

(declare-fun b!5206 () Bool)

(assert (=> b!5206 (= e!2633 false)))

(assert (= (and start!1105 res!4078) b!5205))

(assert (= (and b!5205 res!4079) b!5206))

(declare-fun m!7913 () Bool)

(assert (=> start!1105 m!7913))

(declare-fun m!7915 () Bool)

(assert (=> b!5205 m!7915))

(declare-fun m!7917 () Bool)

(assert (=> b!5206 m!7917))

(declare-fun m!7919 () Bool)

(assert (=> b!5206 m!7919))

(declare-fun m!7921 () Bool)

(assert (=> b!5206 m!7921))

(check-sat (not b!5205) (not start!1105))
(check-sat)
