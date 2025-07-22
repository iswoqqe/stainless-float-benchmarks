; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1095 () Bool)

(assert start!1095)

(declare-fun res!4186 () Bool)

(declare-fun e!2627 () Bool)

(assert (=> start!1095 (=> (not res!4186) (not e!2627))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!369 0))(
  ( (array!370 (arr!159 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!159 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!369)

(assert (=> start!1095 (= res!4186 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!159 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1095 e!2627))

(assert (=> start!1095 true))

(declare-fun array_inv!109 (array!369) Bool)

(assert (=> start!1095 (array_inv!109 qq!69)))

(declare-fun b!5325 () Bool)

(declare-fun res!4187 () Bool)

(assert (=> b!5325 (=> (not res!4187) (not e!2627))))

(declare-fun qqInv!0 (array!369) Bool)

(assert (=> b!5325 (= res!4187 (qqInv!0 qq!69))))

(declare-fun b!5326 () Bool)

(assert (=> b!5326 (= e!2627 false)))

(assert (= (and start!1095 res!4186) b!5325))

(assert (= (and b!5325 res!4187) b!5326))

(declare-fun m!8643 () Bool)

(assert (=> start!1095 m!8643))

(declare-fun m!8645 () Bool)

(assert (=> b!5325 m!8645))

(declare-fun m!8647 () Bool)

(assert (=> b!5326 m!8647))

(declare-fun m!8649 () Bool)

(assert (=> b!5326 m!8649))

(declare-fun m!8651 () Bool)

(assert (=> b!5326 m!8651))

(push 1)

(assert (not start!1095))

(assert (not b!5325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

