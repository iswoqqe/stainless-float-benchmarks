; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1101 () Bool)

(assert start!1101)

(declare-fun res!3770 () Bool)

(declare-fun e!2592 () Bool)

(assert (=> start!1101 (=> (not res!3770) (not e!2592))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!390 0))(
  ( (array!391 (arr!170 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!170 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!390)

(assert (=> start!1101 (= res!3770 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!170 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1101 e!2592))

(assert (=> start!1101 true))

(declare-fun array_inv!120 (array!390) Bool)

(assert (=> start!1101 (array_inv!120 qq!69)))

(declare-fun b!4867 () Bool)

(declare-fun res!3771 () Bool)

(assert (=> b!4867 (=> (not res!3771) (not e!2592))))

(declare-fun qqInv!0 (array!390) Bool)

(assert (=> b!4867 (= res!3771 (qqInv!0 qq!69))))

(declare-fun b!4868 () Bool)

(assert (=> b!4868 (= e!2592 false)))

(assert (= (and start!1101 res!3770) b!4867))

(assert (= (and b!4867 res!3771) b!4868))

(declare-fun m!6307 () Bool)

(assert (=> start!1101 m!6307))

(declare-fun m!6309 () Bool)

(assert (=> b!4867 m!6309))

(declare-fun m!6311 () Bool)

(assert (=> b!4868 m!6311))

(declare-fun m!6313 () Bool)

(assert (=> b!4868 m!6313))

(declare-fun m!6315 () Bool)

(assert (=> b!4868 m!6315))

(declare-fun m!6317 () Bool)

(assert (=> b!4868 m!6317))

(declare-fun m!6319 () Bool)

(assert (=> b!4868 m!6319))

(declare-fun m!6321 () Bool)

(assert (=> b!4868 m!6321))

(check-sat (not start!1101) (not b!4867))
(check-sat)
