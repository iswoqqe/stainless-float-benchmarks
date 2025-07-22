; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1111 () Bool)

(assert start!1111)

(declare-fun res!4234 () Bool)

(declare-fun e!2675 () Bool)

(assert (=> start!1111 (=> (not res!4234) (not e!2675))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!385 0))(
  ( (array!386 (arr!167 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!167 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!385)

(assert (=> start!1111 (= res!4234 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!167 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1111 e!2675))

(assert (=> start!1111 true))

(declare-fun array_inv!117 (array!385) Bool)

(assert (=> start!1111 (array_inv!117 qq!69)))

(declare-fun b!5373 () Bool)

(declare-fun res!4235 () Bool)

(assert (=> b!5373 (=> (not res!4235) (not e!2675))))

(declare-fun qqInv!0 (array!385) Bool)

(assert (=> b!5373 (= res!4235 (qqInv!0 qq!69))))

(declare-fun b!5374 () Bool)

(assert (=> b!5374 (= e!2675 false)))

(assert (= (and start!1111 res!4234) b!5373))

(assert (= (and b!5373 res!4235) b!5374))

(declare-fun m!8729 () Bool)

(assert (=> start!1111 m!8729))

(declare-fun m!8731 () Bool)

(assert (=> b!5373 m!8731))

(declare-fun m!8733 () Bool)

(assert (=> b!5374 m!8733))

(declare-fun m!8735 () Bool)

(assert (=> b!5374 m!8735))

(declare-fun m!8737 () Bool)

(assert (=> b!5374 m!8737))

(declare-fun m!8739 () Bool)

(assert (=> b!5374 m!8739))

(declare-fun m!8741 () Bool)

(assert (=> b!5374 m!8741))

(declare-fun m!8743 () Bool)

(assert (=> b!5374 m!8743))

(push 1)

(assert (not start!1111))

(assert (not b!5373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

