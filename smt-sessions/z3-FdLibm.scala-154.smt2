; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1119 () Bool)

(assert start!1119)

(declare-fun res!4120 () Bool)

(declare-fun e!2675 () Bool)

(assert (=> start!1119 (=> (not res!4120) (not e!2675))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!395 0))(
  ( (array!396 (arr!172 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!172 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!395)

(assert (=> start!1119 (= res!4120 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!172 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1119 e!2675))

(assert (=> start!1119 true))

(declare-fun array_inv!122 (array!395) Bool)

(assert (=> start!1119 (array_inv!122 qq!69)))

(declare-fun b!5247 () Bool)

(declare-fun res!4121 () Bool)

(assert (=> b!5247 (=> (not res!4121) (not e!2675))))

(declare-fun qqInv!0 (array!395) Bool)

(assert (=> b!5247 (= res!4121 (qqInv!0 qq!69))))

(declare-fun b!5248 () Bool)

(assert (=> b!5248 (= e!2675 false)))

(assert (= (and start!1119 res!4120) b!5247))

(assert (= (and b!5247 res!4121) b!5248))

(declare-fun m!8019 () Bool)

(assert (=> start!1119 m!8019))

(declare-fun m!8021 () Bool)

(assert (=> b!5247 m!8021))

(declare-fun m!8023 () Bool)

(assert (=> b!5248 m!8023))

(declare-fun m!8025 () Bool)

(assert (=> b!5248 m!8025))

(declare-fun m!8027 () Bool)

(assert (=> b!5248 m!8027))

(declare-fun m!8029 () Bool)

(assert (=> b!5248 m!8029))

(declare-fun m!8031 () Bool)

(assert (=> b!5248 m!8031))

(declare-fun m!8033 () Bool)

(assert (=> b!5248 m!8033))

(check-sat (not start!1119) (not b!5247))
(check-sat)
