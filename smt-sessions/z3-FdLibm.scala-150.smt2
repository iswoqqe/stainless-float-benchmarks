; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1111 () Bool)

(assert start!1111)

(declare-fun res!4096 () Bool)

(declare-fun e!2651 () Bool)

(assert (=> start!1111 (=> (not res!4096) (not e!2651))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!387 0))(
  ( (array!388 (arr!168 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!168 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!387)

(assert (=> start!1111 (= res!4096 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!168 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1111 e!2651))

(assert (=> start!1111 true))

(declare-fun array_inv!118 (array!387) Bool)

(assert (=> start!1111 (array_inv!118 qq!69)))

(declare-fun b!5223 () Bool)

(declare-fun res!4097 () Bool)

(assert (=> b!5223 (=> (not res!4097) (not e!2651))))

(declare-fun qqInv!0 (array!387) Bool)

(assert (=> b!5223 (= res!4097 (qqInv!0 qq!69))))

(declare-fun b!5224 () Bool)

(assert (=> b!5224 (= e!2651 false)))

(assert (= (and start!1111 res!4096) b!5223))

(assert (= (and b!5223 res!4097) b!5224))

(declare-fun m!7955 () Bool)

(assert (=> start!1111 m!7955))

(declare-fun m!7957 () Bool)

(assert (=> b!5223 m!7957))

(declare-fun m!7959 () Bool)

(assert (=> b!5224 m!7959))

(declare-fun m!7961 () Bool)

(assert (=> b!5224 m!7961))

(declare-fun m!7963 () Bool)

(assert (=> b!5224 m!7963))

(declare-fun m!7965 () Bool)

(assert (=> b!5224 m!7965))

(declare-fun m!7967 () Bool)

(assert (=> b!5224 m!7967))

(declare-fun m!7969 () Bool)

(assert (=> b!5224 m!7969))

(check-sat (not start!1111) (not b!5223))
(check-sat)
