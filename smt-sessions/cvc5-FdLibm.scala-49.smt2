; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!473 () Bool)

(assert start!473)

(declare-fun res!493 () Bool)

(declare-fun e!308 () Bool)

(assert (=> start!473 (=> (not res!493) (not e!308))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!473 (= res!493 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!473 e!308))

(assert (=> start!473 true))

(declare-fun b!422 () Bool)

(declare-fun lt!451 () (_ BitVec 32))

(assert (=> b!422 (= e!308 (or (bvsgt #b00000000000000000000000000000000 lt!451) (bvsgt lt!451 #b00000000000000000000000000001111)))))

(declare-datatypes ((array!3 0))(
  ( (array!4 (arr!1 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!1 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!0 0))(
  ( (tuple2!1 (_1!27 (_ BitVec 32)) (_2!27 array!3)) )
))
(declare-fun lt!452 () tuple2!0)

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!0)

(assert (=> b!422 (= lt!452 (splitInput!0 x!199))))

(assert (=> b!422 (= lt!451 #b00000000000000000000000000000110)))

(assert (= (and start!473 res!493) b!422))

(declare-fun m!409 () Bool)

(assert (=> b!422 m!409))

(push 1)

(assert (not b!422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

