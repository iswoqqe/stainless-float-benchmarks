; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1097 () Bool)

(assert start!1097)

(declare-fun res!3758 () Bool)

(declare-fun e!2580 () Bool)

(assert (=> start!1097 (=> (not res!3758) (not e!2580))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!386 0))(
  ( (array!387 (arr!168 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!168 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!386)

(assert (=> start!1097 (= res!3758 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!168 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1097 e!2580))

(assert (=> start!1097 true))

(declare-fun array_inv!118 (array!386) Bool)

(assert (=> start!1097 (array_inv!118 qq!69)))

(declare-fun b!4855 () Bool)

(declare-fun res!3759 () Bool)

(assert (=> b!4855 (=> (not res!3759) (not e!2580))))

(declare-fun qqInv!0 (array!386) Bool)

(assert (=> b!4855 (= res!3759 (qqInv!0 qq!69))))

(declare-fun b!4856 () Bool)

(assert (=> b!4856 (= e!2580 false)))

(assert (= (and start!1097 res!3758) b!4855))

(assert (= (and b!4855 res!3759) b!4856))

(declare-fun m!6275 () Bool)

(assert (=> start!1097 m!6275))

(declare-fun m!6277 () Bool)

(assert (=> b!4855 m!6277))

(declare-fun m!6279 () Bool)

(assert (=> b!4856 m!6279))

(declare-fun m!6281 () Bool)

(assert (=> b!4856 m!6281))

(declare-fun m!6283 () Bool)

(assert (=> b!4856 m!6283))

(declare-fun m!6285 () Bool)

(assert (=> b!4856 m!6285))

(declare-fun m!6287 () Bool)

(assert (=> b!4856 m!6287))

(declare-fun m!6289 () Bool)

(assert (=> b!4856 m!6289))

(check-sat (not b!4855) (not start!1097))
(check-sat)
