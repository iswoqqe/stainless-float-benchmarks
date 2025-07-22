; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1093 () Bool)

(assert start!1093)

(declare-fun res!3746 () Bool)

(declare-fun e!2568 () Bool)

(assert (=> start!1093 (=> (not res!3746) (not e!2568))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!382 0))(
  ( (array!383 (arr!166 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!166 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!382)

(assert (=> start!1093 (= res!3746 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!166 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1093 e!2568))

(assert (=> start!1093 true))

(declare-fun array_inv!116 (array!382) Bool)

(assert (=> start!1093 (array_inv!116 qq!69)))

(declare-fun b!4843 () Bool)

(declare-fun res!3747 () Bool)

(assert (=> b!4843 (=> (not res!3747) (not e!2568))))

(declare-fun qqInv!0 (array!382) Bool)

(assert (=> b!4843 (= res!3747 (qqInv!0 qq!69))))

(declare-fun b!4844 () Bool)

(assert (=> b!4844 (= e!2568 false)))

(assert (= (and start!1093 res!3746) b!4843))

(assert (= (and b!4843 res!3747) b!4844))

(declare-fun m!6243 () Bool)

(assert (=> start!1093 m!6243))

(declare-fun m!6245 () Bool)

(assert (=> b!4843 m!6245))

(declare-fun m!6247 () Bool)

(assert (=> b!4844 m!6247))

(declare-fun m!6249 () Bool)

(assert (=> b!4844 m!6249))

(declare-fun m!6251 () Bool)

(assert (=> b!4844 m!6251))

(declare-fun m!6253 () Bool)

(assert (=> b!4844 m!6253))

(declare-fun m!6255 () Bool)

(assert (=> b!4844 m!6255))

(declare-fun m!6257 () Bool)

(assert (=> b!4844 m!6257))

(check-sat (not b!4843) (not start!1093))
(check-sat)
