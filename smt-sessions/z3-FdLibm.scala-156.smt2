; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1109 () Bool)

(assert start!1109)

(declare-fun res!3794 () Bool)

(declare-fun e!2616 () Bool)

(assert (=> start!1109 (=> (not res!3794) (not e!2616))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!398 0))(
  ( (array!399 (arr!174 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!174 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!398)

(assert (=> start!1109 (= res!3794 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!174 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1109 e!2616))

(assert (=> start!1109 true))

(declare-fun array_inv!124 (array!398) Bool)

(assert (=> start!1109 (array_inv!124 qq!69)))

(declare-fun b!4891 () Bool)

(declare-fun res!3795 () Bool)

(assert (=> b!4891 (=> (not res!3795) (not e!2616))))

(declare-fun qqInv!0 (array!398) Bool)

(assert (=> b!4891 (= res!3795 (qqInv!0 qq!69))))

(declare-fun b!4892 () Bool)

(assert (=> b!4892 (= e!2616 false)))

(assert (= (and start!1109 res!3794) b!4891))

(assert (= (and b!4891 res!3795) b!4892))

(declare-fun m!6371 () Bool)

(assert (=> start!1109 m!6371))

(declare-fun m!6373 () Bool)

(assert (=> b!4891 m!6373))

(declare-fun m!6375 () Bool)

(assert (=> b!4892 m!6375))

(declare-fun m!6377 () Bool)

(assert (=> b!4892 m!6377))

(declare-fun m!6379 () Bool)

(assert (=> b!4892 m!6379))

(declare-fun m!6381 () Bool)

(assert (=> b!4892 m!6381))

(declare-fun m!6383 () Bool)

(assert (=> b!4892 m!6383))

(declare-fun m!6385 () Bool)

(assert (=> b!4892 m!6385))

(check-sat (not start!1109) (not b!4891))
(check-sat)
