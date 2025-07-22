; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1067 () Bool)

(assert start!1067)

(declare-fun res!3668 () Bool)

(declare-fun e!2490 () Bool)

(assert (=> start!1067 (=> (not res!3668) (not e!2490))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!356 0))(
  ( (array!357 (arr!153 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!153 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!356)

(assert (=> start!1067 (= res!3668 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!153 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1067 e!2490))

(assert (=> start!1067 true))

(declare-fun array_inv!103 (array!356) Bool)

(assert (=> start!1067 (array_inv!103 qq!69)))

(declare-fun b!4765 () Bool)

(declare-fun res!3669 () Bool)

(assert (=> b!4765 (=> (not res!3669) (not e!2490))))

(declare-fun qqInv!0 (array!356) Bool)

(assert (=> b!4765 (= res!3669 (qqInv!0 qq!69))))

(declare-fun b!4766 () Bool)

(assert (=> b!4766 (= e!2490 false)))

(assert (= (and start!1067 res!3668) b!4765))

(assert (= (and b!4765 res!3669) b!4766))

(declare-fun m!6143 () Bool)

(assert (=> start!1067 m!6143))

(declare-fun m!6145 () Bool)

(assert (=> b!4765 m!6145))

(check-sat (not b!4765) (not start!1067))
(check-sat)
