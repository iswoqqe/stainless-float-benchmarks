; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1097 () Bool)

(assert start!1097)

(declare-fun res!4192 () Bool)

(declare-fun e!2633 () Bool)

(assert (=> start!1097 (=> (not res!4192) (not e!2633))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!371 0))(
  ( (array!372 (arr!160 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!160 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!371)

(assert (=> start!1097 (= res!4192 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!160 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1097 e!2633))

(assert (=> start!1097 true))

(declare-fun array_inv!110 (array!371) Bool)

(assert (=> start!1097 (array_inv!110 qq!69)))

(declare-fun b!5331 () Bool)

(declare-fun res!4193 () Bool)

(assert (=> b!5331 (=> (not res!4193) (not e!2633))))

(declare-fun qqInv!0 (array!371) Bool)

(assert (=> b!5331 (= res!4193 (qqInv!0 qq!69))))

(declare-fun b!5332 () Bool)

(assert (=> b!5332 (= e!2633 false)))

(assert (= (and start!1097 res!4192) b!5331))

(assert (= (and b!5331 res!4193) b!5332))

(declare-fun m!8653 () Bool)

(assert (=> start!1097 m!8653))

(declare-fun m!8655 () Bool)

(assert (=> b!5331 m!8655))

(declare-fun m!8657 () Bool)

(assert (=> b!5332 m!8657))

(declare-fun m!8659 () Bool)

(assert (=> b!5332 m!8659))

(declare-fun m!8661 () Bool)

(assert (=> b!5332 m!8661))

(push 1)

(assert (not b!5331))

(assert (not start!1097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

