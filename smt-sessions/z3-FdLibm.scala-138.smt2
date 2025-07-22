; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1073 () Bool)

(assert start!1073)

(declare-fun res!3686 () Bool)

(declare-fun e!2508 () Bool)

(assert (=> start!1073 (=> (not res!3686) (not e!2508))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!362 0))(
  ( (array!363 (arr!156 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!156 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!362)

(assert (=> start!1073 (= res!3686 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!156 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1073 e!2508))

(assert (=> start!1073 true))

(declare-fun array_inv!106 (array!362) Bool)

(assert (=> start!1073 (array_inv!106 qq!69)))

(declare-fun b!4783 () Bool)

(declare-fun res!3687 () Bool)

(assert (=> b!4783 (=> (not res!3687) (not e!2508))))

(declare-fun qqInv!0 (array!362) Bool)

(assert (=> b!4783 (= res!3687 (qqInv!0 qq!69))))

(declare-fun b!4784 () Bool)

(assert (=> b!4784 (= e!2508 false)))

(assert (= (and start!1073 res!3686) b!4783))

(assert (= (and b!4783 res!3687) b!4784))

(declare-fun m!6155 () Bool)

(assert (=> start!1073 m!6155))

(declare-fun m!6157 () Bool)

(assert (=> b!4783 m!6157))

(check-sat (not b!4783) (not start!1073))
(check-sat)
