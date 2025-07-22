; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1089 () Bool)

(assert start!1089)

(declare-fun res!3734 () Bool)

(declare-fun e!2556 () Bool)

(assert (=> start!1089 (=> (not res!3734) (not e!2556))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!378 0))(
  ( (array!379 (arr!164 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!164 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!378)

(assert (=> start!1089 (= res!3734 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!164 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1089 e!2556))

(assert (=> start!1089 true))

(declare-fun array_inv!114 (array!378) Bool)

(assert (=> start!1089 (array_inv!114 qq!69)))

(declare-fun b!4831 () Bool)

(declare-fun res!3735 () Bool)

(assert (=> b!4831 (=> (not res!3735) (not e!2556))))

(declare-fun qqInv!0 (array!378) Bool)

(assert (=> b!4831 (= res!3735 (qqInv!0 qq!69))))

(declare-fun b!4832 () Bool)

(assert (=> b!4832 (= e!2556 false)))

(assert (= (and start!1089 res!3734) b!4831))

(assert (= (and b!4831 res!3735) b!4832))

(declare-fun m!6223 () Bool)

(assert (=> start!1089 m!6223))

(declare-fun m!6225 () Bool)

(assert (=> b!4831 m!6225))

(declare-fun m!6227 () Bool)

(assert (=> b!4832 m!6227))

(declare-fun m!6229 () Bool)

(assert (=> b!4832 m!6229))

(declare-fun m!6231 () Bool)

(assert (=> b!4832 m!6231))

(check-sat (not start!1089) (not b!4831))
(check-sat)
