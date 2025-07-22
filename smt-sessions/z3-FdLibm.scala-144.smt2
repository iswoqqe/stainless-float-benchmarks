; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1085 () Bool)

(assert start!1085)

(declare-fun res!3722 () Bool)

(declare-fun e!2544 () Bool)

(assert (=> start!1085 (=> (not res!3722) (not e!2544))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!374 0))(
  ( (array!375 (arr!162 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!162 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!374)

(assert (=> start!1085 (= res!3722 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!162 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1085 e!2544))

(assert (=> start!1085 true))

(declare-fun array_inv!112 (array!374) Bool)

(assert (=> start!1085 (array_inv!112 qq!69)))

(declare-fun b!4819 () Bool)

(declare-fun res!3723 () Bool)

(assert (=> b!4819 (=> (not res!3723) (not e!2544))))

(declare-fun qqInv!0 (array!374) Bool)

(assert (=> b!4819 (= res!3723 (qqInv!0 qq!69))))

(declare-fun b!4820 () Bool)

(assert (=> b!4820 (= e!2544 false)))

(assert (= (and start!1085 res!3722) b!4819))

(assert (= (and b!4819 res!3723) b!4820))

(declare-fun m!6203 () Bool)

(assert (=> start!1085 m!6203))

(declare-fun m!6205 () Bool)

(assert (=> b!4819 m!6205))

(declare-fun m!6207 () Bool)

(assert (=> b!4820 m!6207))

(declare-fun m!6209 () Bool)

(assert (=> b!4820 m!6209))

(declare-fun m!6211 () Bool)

(assert (=> b!4820 m!6211))

(check-sat (not b!4819) (not start!1085))
(check-sat)
