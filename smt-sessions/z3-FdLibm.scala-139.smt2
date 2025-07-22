; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1075 () Bool)

(assert start!1075)

(declare-fun res!3692 () Bool)

(declare-fun e!2514 () Bool)

(assert (=> start!1075 (=> (not res!3692) (not e!2514))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!364 0))(
  ( (array!365 (arr!157 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!157 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!364)

(assert (=> start!1075 (= res!3692 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!157 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1075 e!2514))

(assert (=> start!1075 true))

(declare-fun array_inv!107 (array!364) Bool)

(assert (=> start!1075 (array_inv!107 qq!69)))

(declare-fun b!4789 () Bool)

(declare-fun res!3693 () Bool)

(assert (=> b!4789 (=> (not res!3693) (not e!2514))))

(declare-fun qqInv!0 (array!364) Bool)

(assert (=> b!4789 (= res!3693 (qqInv!0 qq!69))))

(declare-fun b!4790 () Bool)

(assert (=> b!4790 (= e!2514 false)))

(assert (= (and start!1075 res!3692) b!4789))

(assert (= (and b!4789 res!3693) b!4790))

(declare-fun m!6159 () Bool)

(assert (=> start!1075 m!6159))

(declare-fun m!6161 () Bool)

(assert (=> b!4789 m!6161))

(check-sat (not start!1075) (not b!4789))
(check-sat)
