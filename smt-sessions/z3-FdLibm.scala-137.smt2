; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1085 () Bool)

(assert start!1085)

(declare-fun res!4018 () Bool)

(declare-fun e!2573 () Bool)

(assert (=> start!1085 (=> (not res!4018) (not e!2573))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!361 0))(
  ( (array!362 (arr!155 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!155 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!361)

(assert (=> start!1085 (= res!4018 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!155 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1085 e!2573))

(assert (=> start!1085 true))

(declare-fun array_inv!105 (array!361) Bool)

(assert (=> start!1085 (array_inv!105 qq!69)))

(declare-fun b!5145 () Bool)

(declare-fun res!4019 () Bool)

(assert (=> b!5145 (=> (not res!4019) (not e!2573))))

(declare-fun qqInv!0 (array!361) Bool)

(assert (=> b!5145 (= res!4019 (qqInv!0 qq!69))))

(declare-fun b!5146 () Bool)

(assert (=> b!5146 (= e!2573 (bvsge #b00000000000000000000000000000000 (size!155 qq!69)))))

(assert (= (and start!1085 res!4018) b!5145))

(assert (= (and b!5145 res!4019) b!5146))

(declare-fun m!7831 () Bool)

(assert (=> start!1085 m!7831))

(declare-fun m!7833 () Bool)

(assert (=> b!5145 m!7833))

(check-sat (not start!1085) (not b!5145))
(check-sat)
