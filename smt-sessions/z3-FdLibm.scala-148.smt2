; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1107 () Bool)

(assert start!1107)

(declare-fun res!4084 () Bool)

(declare-fun e!2639 () Bool)

(assert (=> start!1107 (=> (not res!4084) (not e!2639))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!383 0))(
  ( (array!384 (arr!166 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!166 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!383)

(assert (=> start!1107 (= res!4084 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!166 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1107 e!2639))

(assert (=> start!1107 true))

(declare-fun array_inv!116 (array!383) Bool)

(assert (=> start!1107 (array_inv!116 qq!69)))

(declare-fun b!5211 () Bool)

(declare-fun res!4085 () Bool)

(assert (=> b!5211 (=> (not res!4085) (not e!2639))))

(declare-fun qqInv!0 (array!383) Bool)

(assert (=> b!5211 (= res!4085 (qqInv!0 qq!69))))

(declare-fun b!5212 () Bool)

(assert (=> b!5212 (= e!2639 false)))

(assert (= (and start!1107 res!4084) b!5211))

(assert (= (and b!5211 res!4085) b!5212))

(declare-fun m!7923 () Bool)

(assert (=> start!1107 m!7923))

(declare-fun m!7925 () Bool)

(assert (=> b!5211 m!7925))

(declare-fun m!7927 () Bool)

(assert (=> b!5212 m!7927))

(declare-fun m!7929 () Bool)

(assert (=> b!5212 m!7929))

(declare-fun m!7931 () Bool)

(assert (=> b!5212 m!7931))

(declare-fun m!7933 () Bool)

(assert (=> b!5212 m!7933))

(declare-fun m!7935 () Bool)

(assert (=> b!5212 m!7935))

(declare-fun m!7937 () Bool)

(assert (=> b!5212 m!7937))

(check-sat (not start!1107) (not b!5211))
(check-sat)
