; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1135 () Bool)

(assert start!1135)

(declare-fun res!3872 () Bool)

(declare-fun e!2694 () Bool)

(assert (=> start!1135 (=> (not res!3872) (not e!2694))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!424 0))(
  ( (array!425 (arr!187 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!187 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!424)

(assert (=> start!1135 (= res!3872 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!187 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1135 e!2694))

(assert (=> start!1135 true))

(declare-fun array_inv!137 (array!424) Bool)

(assert (=> start!1135 (array_inv!137 qq!69)))

(declare-fun b!4969 () Bool)

(declare-fun res!3873 () Bool)

(assert (=> b!4969 (=> (not res!3873) (not e!2694))))

(declare-fun qqInv!0 (array!424) Bool)

(assert (=> b!4969 (= res!3873 (qqInv!0 qq!69))))

(declare-fun b!4970 () Bool)

(assert (=> b!4970 (= e!2694 false)))

(assert (= (and start!1135 res!3872) b!4969))

(assert (= (and b!4969 res!3873) b!4970))

(declare-fun m!6645 () Bool)

(assert (=> start!1135 m!6645))

(declare-fun m!6647 () Bool)

(assert (=> b!4969 m!6647))

(declare-fun m!6649 () Bool)

(assert (=> b!4970 m!6649))

(declare-fun m!6651 () Bool)

(assert (=> b!4970 m!6651))

(declare-fun m!6653 () Bool)

(assert (=> b!4970 m!6653))

(declare-fun m!6655 () Bool)

(assert (=> b!4970 m!6655))

(declare-fun m!6657 () Bool)

(assert (=> b!4970 m!6657))

(declare-fun m!6659 () Bool)

(assert (=> b!4970 m!6659))

(declare-fun m!6661 () Bool)

(assert (=> b!4970 m!6661))

(declare-fun m!6663 () Bool)

(assert (=> b!4970 m!6663))

(declare-fun m!6665 () Bool)

(assert (=> b!4970 m!6665))

(check-sat (not b!4969) (not start!1135))
(check-sat)
