; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1081 () Bool)

(assert start!1081)

(declare-fun res!4006 () Bool)

(declare-fun e!2561 () Bool)

(assert (=> start!1081 (=> (not res!4006) (not e!2561))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!357 0))(
  ( (array!358 (arr!153 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!153 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!357)

(assert (=> start!1081 (= res!4006 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!153 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1081 e!2561))

(assert (=> start!1081 true))

(declare-fun array_inv!103 (array!357) Bool)

(assert (=> start!1081 (array_inv!103 qq!69)))

(declare-fun b!5133 () Bool)

(declare-fun res!4007 () Bool)

(assert (=> b!5133 (=> (not res!4007) (not e!2561))))

(declare-fun qqInv!0 (array!357) Bool)

(assert (=> b!5133 (= res!4007 (qqInv!0 qq!69))))

(declare-fun b!5134 () Bool)

(assert (=> b!5134 (= e!2561 false)))

(assert (= (and start!1081 res!4006) b!5133))

(assert (= (and b!5133 res!4007) b!5134))

(declare-fun m!7823 () Bool)

(assert (=> start!1081 m!7823))

(declare-fun m!7825 () Bool)

(assert (=> b!5133 m!7825))

(check-sat (not start!1081) (not b!5133))
(check-sat)
