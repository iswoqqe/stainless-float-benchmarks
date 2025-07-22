; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1105 () Bool)

(assert start!1105)

(declare-fun res!3782 () Bool)

(declare-fun e!2604 () Bool)

(assert (=> start!1105 (=> (not res!3782) (not e!2604))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!394 0))(
  ( (array!395 (arr!172 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!172 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!394)

(assert (=> start!1105 (= res!3782 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!172 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1105 e!2604))

(assert (=> start!1105 true))

(declare-fun array_inv!122 (array!394) Bool)

(assert (=> start!1105 (array_inv!122 qq!69)))

(declare-fun b!4879 () Bool)

(declare-fun res!3783 () Bool)

(assert (=> b!4879 (=> (not res!3783) (not e!2604))))

(declare-fun qqInv!0 (array!394) Bool)

(assert (=> b!4879 (= res!3783 (qqInv!0 qq!69))))

(declare-fun b!4880 () Bool)

(assert (=> b!4880 (= e!2604 false)))

(assert (= (and start!1105 res!3782) b!4879))

(assert (= (and b!4879 res!3783) b!4880))

(declare-fun m!6339 () Bool)

(assert (=> start!1105 m!6339))

(declare-fun m!6341 () Bool)

(assert (=> b!4879 m!6341))

(declare-fun m!6343 () Bool)

(assert (=> b!4880 m!6343))

(declare-fun m!6345 () Bool)

(assert (=> b!4880 m!6345))

(declare-fun m!6347 () Bool)

(assert (=> b!4880 m!6347))

(declare-fun m!6349 () Bool)

(assert (=> b!4880 m!6349))

(declare-fun m!6351 () Bool)

(assert (=> b!4880 m!6351))

(declare-fun m!6353 () Bool)

(assert (=> b!4880 m!6353))

(check-sat (not b!4879) (not start!1105))
(check-sat)
