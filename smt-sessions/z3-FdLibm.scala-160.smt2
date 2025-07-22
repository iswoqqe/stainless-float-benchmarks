; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1117 () Bool)

(assert start!1117)

(declare-fun res!3818 () Bool)

(declare-fun e!2640 () Bool)

(assert (=> start!1117 (=> (not res!3818) (not e!2640))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!406 0))(
  ( (array!407 (arr!178 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!178 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!406)

(assert (=> start!1117 (= res!3818 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!178 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1117 e!2640))

(assert (=> start!1117 true))

(declare-fun array_inv!128 (array!406) Bool)

(assert (=> start!1117 (array_inv!128 qq!69)))

(declare-fun b!4915 () Bool)

(declare-fun res!3819 () Bool)

(assert (=> b!4915 (=> (not res!3819) (not e!2640))))

(declare-fun qqInv!0 (array!406) Bool)

(assert (=> b!4915 (= res!3819 (qqInv!0 qq!69))))

(declare-fun b!4916 () Bool)

(assert (=> b!4916 (= e!2640 false)))

(assert (= (and start!1117 res!3818) b!4915))

(assert (= (and b!4915 res!3819) b!4916))

(declare-fun m!6447 () Bool)

(assert (=> start!1117 m!6447))

(declare-fun m!6449 () Bool)

(assert (=> b!4915 m!6449))

(declare-fun m!6451 () Bool)

(assert (=> b!4916 m!6451))

(declare-fun m!6453 () Bool)

(assert (=> b!4916 m!6453))

(declare-fun m!6455 () Bool)

(assert (=> b!4916 m!6455))

(declare-fun m!6457 () Bool)

(assert (=> b!4916 m!6457))

(declare-fun m!6459 () Bool)

(assert (=> b!4916 m!6459))

(declare-fun m!6461 () Bool)

(assert (=> b!4916 m!6461))

(declare-fun m!6463 () Bool)

(assert (=> b!4916 m!6463))

(declare-fun m!6465 () Bool)

(assert (=> b!4916 m!6465))

(declare-fun m!6467 () Bool)

(assert (=> b!4916 m!6467))

(check-sat (not start!1117) (not b!4915))
(check-sat)
