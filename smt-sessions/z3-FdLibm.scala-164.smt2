; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1125 () Bool)

(assert start!1125)

(declare-fun res!3842 () Bool)

(declare-fun e!2664 () Bool)

(assert (=> start!1125 (=> (not res!3842) (not e!2664))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!414 0))(
  ( (array!415 (arr!182 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!182 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!414)

(assert (=> start!1125 (= res!3842 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!182 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1125 e!2664))

(assert (=> start!1125 true))

(declare-fun array_inv!132 (array!414) Bool)

(assert (=> start!1125 (array_inv!132 qq!69)))

(declare-fun b!4939 () Bool)

(declare-fun res!3843 () Bool)

(assert (=> b!4939 (=> (not res!3843) (not e!2664))))

(declare-fun qqInv!0 (array!414) Bool)

(assert (=> b!4939 (= res!3843 (qqInv!0 qq!69))))

(declare-fun b!4940 () Bool)

(assert (=> b!4940 (= e!2664 false)))

(assert (= (and start!1125 res!3842) b!4939))

(assert (= (and b!4939 res!3843) b!4940))

(declare-fun m!6535 () Bool)

(assert (=> start!1125 m!6535))

(declare-fun m!6537 () Bool)

(assert (=> b!4939 m!6537))

(declare-fun m!6539 () Bool)

(assert (=> b!4940 m!6539))

(declare-fun m!6541 () Bool)

(assert (=> b!4940 m!6541))

(declare-fun m!6543 () Bool)

(assert (=> b!4940 m!6543))

(declare-fun m!6545 () Bool)

(assert (=> b!4940 m!6545))

(declare-fun m!6547 () Bool)

(assert (=> b!4940 m!6547))

(declare-fun m!6549 () Bool)

(assert (=> b!4940 m!6549))

(declare-fun m!6551 () Bool)

(assert (=> b!4940 m!6551))

(declare-fun m!6553 () Bool)

(assert (=> b!4940 m!6553))

(declare-fun m!6555 () Bool)

(assert (=> b!4940 m!6555))

(check-sat (not start!1125) (not b!4939))
(check-sat)
