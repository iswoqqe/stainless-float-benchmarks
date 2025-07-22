; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1113 () Bool)

(assert start!1113)

(declare-fun res!4240 () Bool)

(declare-fun e!2681 () Bool)

(assert (=> start!1113 (=> (not res!4240) (not e!2681))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!387 0))(
  ( (array!388 (arr!168 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!168 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!387)

(assert (=> start!1113 (= res!4240 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!168 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1113 e!2681))

(assert (=> start!1113 true))

(declare-fun array_inv!118 (array!387) Bool)

(assert (=> start!1113 (array_inv!118 qq!69)))

(declare-fun b!5379 () Bool)

(declare-fun res!4241 () Bool)

(assert (=> b!5379 (=> (not res!4241) (not e!2681))))

(declare-fun qqInv!0 (array!387) Bool)

(assert (=> b!5379 (= res!4241 (qqInv!0 qq!69))))

(declare-fun b!5380 () Bool)

(assert (=> b!5380 (= e!2681 false)))

(assert (= (and start!1113 res!4240) b!5379))

(assert (= (and b!5379 res!4241) b!5380))

(declare-fun m!8745 () Bool)

(assert (=> start!1113 m!8745))

(declare-fun m!8747 () Bool)

(assert (=> b!5379 m!8747))

(declare-fun m!8749 () Bool)

(assert (=> b!5380 m!8749))

(declare-fun m!8751 () Bool)

(assert (=> b!5380 m!8751))

(declare-fun m!8753 () Bool)

(assert (=> b!5380 m!8753))

(declare-fun m!8755 () Bool)

(assert (=> b!5380 m!8755))

(declare-fun m!8757 () Bool)

(assert (=> b!5380 m!8757))

(declare-fun m!8759 () Bool)

(assert (=> b!5380 m!8759))

(push 1)

(assert (not b!5379))

(assert (not start!1113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

