; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1093 () Bool)

(assert start!1093)

(declare-fun res!4042 () Bool)

(declare-fun e!2597 () Bool)

(assert (=> start!1093 (=> (not res!4042) (not e!2597))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!369 0))(
  ( (array!370 (arr!159 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!159 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!369)

(assert (=> start!1093 (= res!4042 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!159 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1093 e!2597))

(assert (=> start!1093 true))

(declare-fun array_inv!109 (array!369) Bool)

(assert (=> start!1093 (array_inv!109 qq!69)))

(declare-fun b!5169 () Bool)

(declare-fun res!4043 () Bool)

(assert (=> b!5169 (=> (not res!4043) (not e!2597))))

(declare-fun qqInv!0 (array!369) Bool)

(assert (=> b!5169 (= res!4043 (qqInv!0 qq!69))))

(declare-fun b!5170 () Bool)

(assert (=> b!5170 (= e!2597 false)))

(assert (= (and start!1093 res!4042) b!5169))

(assert (= (and b!5169 res!4043) b!5170))

(declare-fun m!7853 () Bool)

(assert (=> start!1093 m!7853))

(declare-fun m!7855 () Bool)

(assert (=> b!5169 m!7855))

(declare-fun m!7857 () Bool)

(assert (=> b!5170 m!7857))

(declare-fun m!7859 () Bool)

(assert (=> b!5170 m!7859))

(declare-fun m!7861 () Bool)

(assert (=> b!5170 m!7861))

(check-sat (not start!1093) (not b!5169))
(check-sat)
