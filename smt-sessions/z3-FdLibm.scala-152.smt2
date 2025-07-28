; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1115 () Bool)

(assert start!1115)

(declare-fun res!4108 () Bool)

(declare-fun e!2663 () Bool)

(assert (=> start!1115 (=> (not res!4108) (not e!2663))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!391 0))(
  ( (array!392 (arr!170 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!170 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!391)

(assert (=> start!1115 (= res!4108 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!170 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1115 e!2663))

(assert (=> start!1115 true))

(declare-fun array_inv!120 (array!391) Bool)

(assert (=> start!1115 (array_inv!120 qq!69)))

(declare-fun b!5235 () Bool)

(declare-fun res!4109 () Bool)

(assert (=> b!5235 (=> (not res!4109) (not e!2663))))

(declare-fun qqInv!0 (array!391) Bool)

(assert (=> b!5235 (= res!4109 (qqInv!0 qq!69))))

(declare-fun b!5236 () Bool)

(assert (=> b!5236 (= e!2663 false)))

(assert (= (and start!1115 res!4108) b!5235))

(assert (= (and b!5235 res!4109) b!5236))

(declare-fun m!7987 () Bool)

(assert (=> start!1115 m!7987))

(declare-fun m!7989 () Bool)

(assert (=> b!5235 m!7989))

(declare-fun m!7991 () Bool)

(assert (=> b!5236 m!7991))

(declare-fun m!7993 () Bool)

(assert (=> b!5236 m!7993))

(declare-fun m!7995 () Bool)

(assert (=> b!5236 m!7995))

(declare-fun m!7997 () Bool)

(assert (=> b!5236 m!7997))

(declare-fun m!7999 () Bool)

(assert (=> b!5236 m!7999))

(declare-fun m!8001 () Bool)

(assert (=> b!5236 m!8001))

(check-sat (not b!5235) (not start!1115))
(check-sat)
