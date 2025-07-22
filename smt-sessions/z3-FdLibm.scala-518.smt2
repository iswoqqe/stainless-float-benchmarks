; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2773 () Bool)

(assert start!2773)

(declare-fun res!11765 () Bool)

(declare-fun e!8611 () Bool)

(assert (=> start!2773 (=> (not res!11765) (not e!8611))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2773 (= res!11765 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2773 e!8611))

(assert (=> start!2773 true))

(declare-datatypes ((array!1225 0))(
  ( (array!1226 (arr!538 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!538 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1225)

(declare-fun array_inv!486 (array!1225) Bool)

(assert (=> start!2773 (array_inv!486 q!79)))

(declare-fun b!15165 () Bool)

(declare-fun res!11766 () Bool)

(assert (=> b!15165 (=> (not res!11766) (not e!8611))))

(declare-fun qInv!0 (array!1225) Bool)

(assert (=> b!15165 (= res!11766 (qInv!0 q!79))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun b!15166 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!15166 (= e!8611 false)))

(assert (= (and start!2773 res!11765) b!15165))

(assert (= (and b!15165 res!11766) b!15166))

(declare-fun m!21433 () Bool)

(assert (=> start!2773 m!21433))

(declare-fun m!21435 () Bool)

(assert (=> b!15165 m!21435))

(check-sat (not b!15165) (not start!2773))
(check-sat)
