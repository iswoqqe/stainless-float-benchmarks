; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1077 () Bool)

(assert start!1077)

(declare-fun res!3698 () Bool)

(declare-fun e!2520 () Bool)

(assert (=> start!1077 (=> (not res!3698) (not e!2520))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!366 0))(
  ( (array!367 (arr!158 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!158 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!366)

(assert (=> start!1077 (= res!3698 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!158 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1077 e!2520))

(assert (=> start!1077 true))

(declare-fun array_inv!108 (array!366) Bool)

(assert (=> start!1077 (array_inv!108 qq!69)))

(declare-fun b!4795 () Bool)

(declare-fun res!3699 () Bool)

(assert (=> b!4795 (=> (not res!3699) (not e!2520))))

(declare-fun qqInv!0 (array!366) Bool)

(assert (=> b!4795 (= res!3699 (qqInv!0 qq!69))))

(declare-fun b!4796 () Bool)

(assert (=> b!4796 (= e!2520 false)))

(assert (= (and start!1077 res!3698) b!4795))

(assert (= (and b!4795 res!3699) b!4796))

(declare-fun m!6163 () Bool)

(assert (=> start!1077 m!6163))

(declare-fun m!6165 () Bool)

(assert (=> b!4795 m!6165))

(declare-fun m!6167 () Bool)

(assert (=> b!4796 m!6167))

(declare-fun m!6169 () Bool)

(assert (=> b!4796 m!6169))

(declare-fun m!6171 () Bool)

(assert (=> b!4796 m!6171))

(check-sat (not b!4795) (not start!1077))
(check-sat)
