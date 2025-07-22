; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1107 () Bool)

(assert start!1107)

(declare-fun res!4222 () Bool)

(declare-fun e!2663 () Bool)

(assert (=> start!1107 (=> (not res!4222) (not e!2663))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!381 0))(
  ( (array!382 (arr!165 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!165 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!381)

(assert (=> start!1107 (= res!4222 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!165 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1107 e!2663))

(assert (=> start!1107 true))

(declare-fun array_inv!115 (array!381) Bool)

(assert (=> start!1107 (array_inv!115 qq!69)))

(declare-fun b!5361 () Bool)

(declare-fun res!4223 () Bool)

(assert (=> b!5361 (=> (not res!4223) (not e!2663))))

(declare-fun qqInv!0 (array!381) Bool)

(assert (=> b!5361 (= res!4223 (qqInv!0 qq!69))))

(declare-fun b!5362 () Bool)

(assert (=> b!5362 (= e!2663 false)))

(assert (= (and start!1107 res!4222) b!5361))

(assert (= (and b!5361 res!4223) b!5362))

(declare-fun m!8703 () Bool)

(assert (=> start!1107 m!8703))

(declare-fun m!8705 () Bool)

(assert (=> b!5361 m!8705))

(declare-fun m!8707 () Bool)

(assert (=> b!5362 m!8707))

(declare-fun m!8709 () Bool)

(assert (=> b!5362 m!8709))

(declare-fun m!8711 () Bool)

(assert (=> b!5362 m!8711))

(push 1)

(assert (not b!5361))

(assert (not start!1107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

