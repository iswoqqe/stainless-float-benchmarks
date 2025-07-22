; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1121 () Bool)

(assert start!1121)

(declare-fun res!3830 () Bool)

(declare-fun e!2652 () Bool)

(assert (=> start!1121 (=> (not res!3830) (not e!2652))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!410 0))(
  ( (array!411 (arr!180 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!180 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!410)

(assert (=> start!1121 (= res!3830 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!180 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1121 e!2652))

(assert (=> start!1121 true))

(declare-fun array_inv!130 (array!410) Bool)

(assert (=> start!1121 (array_inv!130 qq!69)))

(declare-fun b!4927 () Bool)

(declare-fun res!3831 () Bool)

(assert (=> b!4927 (=> (not res!3831) (not e!2652))))

(declare-fun qqInv!0 (array!410) Bool)

(assert (=> b!4927 (= res!3831 (qqInv!0 qq!69))))

(declare-fun b!4928 () Bool)

(assert (=> b!4928 (= e!2652 false)))

(assert (= (and start!1121 res!3830) b!4927))

(assert (= (and b!4927 res!3831) b!4928))

(declare-fun m!6491 () Bool)

(assert (=> start!1121 m!6491))

(declare-fun m!6493 () Bool)

(assert (=> b!4927 m!6493))

(declare-fun m!6495 () Bool)

(assert (=> b!4928 m!6495))

(declare-fun m!6497 () Bool)

(assert (=> b!4928 m!6497))

(declare-fun m!6499 () Bool)

(assert (=> b!4928 m!6499))

(declare-fun m!6501 () Bool)

(assert (=> b!4928 m!6501))

(declare-fun m!6503 () Bool)

(assert (=> b!4928 m!6503))

(declare-fun m!6505 () Bool)

(assert (=> b!4928 m!6505))

(declare-fun m!6507 () Bool)

(assert (=> b!4928 m!6507))

(declare-fun m!6509 () Bool)

(assert (=> b!4928 m!6509))

(declare-fun m!6511 () Bool)

(assert (=> b!4928 m!6511))

(check-sat (not b!4927) (not start!1121))
(check-sat)
