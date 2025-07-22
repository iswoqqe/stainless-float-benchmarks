; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1139 () Bool)

(assert start!1139)

(declare-fun res!3884 () Bool)

(declare-fun e!2706 () Bool)

(assert (=> start!1139 (=> (not res!3884) (not e!2706))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!428 0))(
  ( (array!429 (arr!189 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!189 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!428)

(assert (=> start!1139 (= res!3884 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!189 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1139 e!2706))

(assert (=> start!1139 true))

(declare-fun array_inv!139 (array!428) Bool)

(assert (=> start!1139 (array_inv!139 qq!69)))

(declare-fun b!4981 () Bool)

(declare-fun res!3885 () Bool)

(assert (=> b!4981 (=> (not res!3885) (not e!2706))))

(declare-fun qqInv!0 (array!428) Bool)

(assert (=> b!4981 (= res!3885 (qqInv!0 qq!69))))

(declare-fun b!4982 () Bool)

(assert (=> b!4982 (= e!2706 false)))

(assert (= (and start!1139 res!3884) b!4981))

(assert (= (and b!4981 res!3885) b!4982))

(declare-fun m!6695 () Bool)

(assert (=> start!1139 m!6695))

(declare-fun m!6697 () Bool)

(assert (=> b!4981 m!6697))

(declare-fun m!6699 () Bool)

(assert (=> b!4982 m!6699))

(declare-fun m!6701 () Bool)

(assert (=> b!4982 m!6701))

(declare-fun m!6703 () Bool)

(assert (=> b!4982 m!6703))

(declare-fun m!6705 () Bool)

(assert (=> b!4982 m!6705))

(declare-fun m!6707 () Bool)

(assert (=> b!4982 m!6707))

(declare-fun m!6709 () Bool)

(assert (=> b!4982 m!6709))

(declare-fun m!6711 () Bool)

(assert (=> b!4982 m!6711))

(declare-fun m!6713 () Bool)

(assert (=> b!4982 m!6713))

(declare-fun m!6715 () Bool)

(assert (=> b!4982 m!6715))

(declare-fun m!6717 () Bool)

(assert (=> b!4982 m!6717))

(declare-fun m!6719 () Bool)

(assert (=> b!4982 m!6719))

(declare-fun m!6721 () Bool)

(assert (=> b!4982 m!6721))

(check-sat (not start!1139) (not b!4981))
(check-sat)
