; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1131 () Bool)

(assert start!1131)

(declare-fun res!4156 () Bool)

(declare-fun e!2711 () Bool)

(assert (=> start!1131 (=> (not res!4156) (not e!2711))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!407 0))(
  ( (array!408 (arr!178 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!178 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!407)

(assert (=> start!1131 (= res!4156 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!178 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1131 e!2711))

(assert (=> start!1131 true))

(declare-fun array_inv!128 (array!407) Bool)

(assert (=> start!1131 (array_inv!128 qq!69)))

(declare-fun b!5283 () Bool)

(declare-fun res!4157 () Bool)

(assert (=> b!5283 (=> (not res!4157) (not e!2711))))

(declare-fun qqInv!0 (array!407) Bool)

(assert (=> b!5283 (= res!4157 (qqInv!0 qq!69))))

(declare-fun b!5284 () Bool)

(assert (=> b!5284 (= e!2711 false)))

(assert (= (and start!1131 res!4156) b!5283))

(assert (= (and b!5283 res!4157) b!5284))

(declare-fun m!8127 () Bool)

(assert (=> start!1131 m!8127))

(declare-fun m!8129 () Bool)

(assert (=> b!5283 m!8129))

(declare-fun m!8131 () Bool)

(assert (=> b!5284 m!8131))

(declare-fun m!8133 () Bool)

(assert (=> b!5284 m!8133))

(declare-fun m!8135 () Bool)

(assert (=> b!5284 m!8135))

(declare-fun m!8137 () Bool)

(assert (=> b!5284 m!8137))

(declare-fun m!8139 () Bool)

(assert (=> b!5284 m!8139))

(declare-fun m!8141 () Bool)

(assert (=> b!5284 m!8141))

(declare-fun m!8143 () Bool)

(assert (=> b!5284 m!8143))

(declare-fun m!8145 () Bool)

(assert (=> b!5284 m!8145))

(declare-fun m!8147 () Bool)

(assert (=> b!5284 m!8147))

(check-sat (not b!5283) (not start!1131))
(check-sat)
