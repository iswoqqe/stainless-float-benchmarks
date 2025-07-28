; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1103 () Bool)

(assert start!1103)

(declare-fun res!4072 () Bool)

(declare-fun e!2627 () Bool)

(assert (=> start!1103 (=> (not res!4072) (not e!2627))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!379 0))(
  ( (array!380 (arr!164 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!164 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!379)

(assert (=> start!1103 (= res!4072 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!164 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1103 e!2627))

(assert (=> start!1103 true))

(declare-fun array_inv!114 (array!379) Bool)

(assert (=> start!1103 (array_inv!114 qq!69)))

(declare-fun b!5199 () Bool)

(declare-fun res!4073 () Bool)

(assert (=> b!5199 (=> (not res!4073) (not e!2627))))

(declare-fun qqInv!0 (array!379) Bool)

(assert (=> b!5199 (= res!4073 (qqInv!0 qq!69))))

(declare-fun b!5200 () Bool)

(assert (=> b!5200 (= e!2627 false)))

(assert (= (and start!1103 res!4072) b!5199))

(assert (= (and b!5199 res!4073) b!5200))

(declare-fun m!7903 () Bool)

(assert (=> start!1103 m!7903))

(declare-fun m!7905 () Bool)

(assert (=> b!5199 m!7905))

(declare-fun m!7907 () Bool)

(assert (=> b!5200 m!7907))

(declare-fun m!7909 () Bool)

(assert (=> b!5200 m!7909))

(declare-fun m!7911 () Bool)

(assert (=> b!5200 m!7911))

(check-sat (not b!5199) (not start!1103))
(check-sat)
