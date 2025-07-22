; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1091 () Bool)

(assert start!1091)

(declare-fun res!3740 () Bool)

(declare-fun e!2562 () Bool)

(assert (=> start!1091 (=> (not res!3740) (not e!2562))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!380 0))(
  ( (array!381 (arr!165 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!165 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!380)

(assert (=> start!1091 (= res!3740 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!165 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1091 e!2562))

(assert (=> start!1091 true))

(declare-fun array_inv!115 (array!380) Bool)

(assert (=> start!1091 (array_inv!115 qq!69)))

(declare-fun b!4837 () Bool)

(declare-fun res!3741 () Bool)

(assert (=> b!4837 (=> (not res!3741) (not e!2562))))

(declare-fun qqInv!0 (array!380) Bool)

(assert (=> b!4837 (= res!3741 (qqInv!0 qq!69))))

(declare-fun b!4838 () Bool)

(assert (=> b!4838 (= e!2562 false)))

(assert (= (and start!1091 res!3740) b!4837))

(assert (= (and b!4837 res!3741) b!4838))

(declare-fun m!6233 () Bool)

(assert (=> start!1091 m!6233))

(declare-fun m!6235 () Bool)

(assert (=> b!4837 m!6235))

(declare-fun m!6237 () Bool)

(assert (=> b!4838 m!6237))

(declare-fun m!6239 () Bool)

(assert (=> b!4838 m!6239))

(declare-fun m!6241 () Bool)

(assert (=> b!4838 m!6241))

(check-sat (not start!1091) (not b!4837))
(check-sat)
