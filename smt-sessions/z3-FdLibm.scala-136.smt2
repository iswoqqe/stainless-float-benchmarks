; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1083 () Bool)

(assert start!1083)

(declare-fun res!4012 () Bool)

(declare-fun e!2567 () Bool)

(assert (=> start!1083 (=> (not res!4012) (not e!2567))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!359 0))(
  ( (array!360 (arr!154 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!154 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!359)

(assert (=> start!1083 (= res!4012 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!154 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1083 e!2567))

(assert (=> start!1083 true))

(declare-fun array_inv!104 (array!359) Bool)

(assert (=> start!1083 (array_inv!104 qq!69)))

(declare-fun b!5139 () Bool)

(declare-fun res!4013 () Bool)

(assert (=> b!5139 (=> (not res!4013) (not e!2567))))

(declare-fun qqInv!0 (array!359) Bool)

(assert (=> b!5139 (= res!4013 (qqInv!0 qq!69))))

(declare-fun b!5140 () Bool)

(assert (=> b!5140 (= e!2567 false)))

(assert (= (and start!1083 res!4012) b!5139))

(assert (= (and b!5139 res!4013) b!5140))

(declare-fun m!7827 () Bool)

(assert (=> start!1083 m!7827))

(declare-fun m!7829 () Bool)

(assert (=> b!5139 m!7829))

(check-sat (not b!5139) (not start!1083))
(check-sat)
