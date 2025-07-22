; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!485 () Bool)

(assert start!485)

(declare-fun res!514 () Bool)

(declare-fun e!329 () Bool)

(assert (=> start!485 (=> (not res!514) (not e!329))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!485 (= res!514 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!485 e!329))

(assert (=> start!485 true))

(declare-fun b!443 () Bool)

(declare-fun lt!478 () (_ BitVec 32))

(assert (=> b!443 (= e!329 (or (bvsgt #b00000000000000000000000000000010 lt!478) (bvsge lt!478 #b00000000000000000000000000010011)))))

(declare-datatypes ((array!9 0))(
  ( (array!10 (arr!4 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!4 (_ BitVec 32))) )
))
(declare-fun lt!479 () array!9)

(declare-datatypes ((tuple2!6 0))(
  ( (tuple2!7 (_1!30 (_ BitVec 32)) (_2!30 array!9)) )
))
(declare-fun lt!477 () tuple2!6)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!9) array!9)

(assert (=> b!443 (= lt!479 (timesTwoOverPi!0 lt!478 (_1!30 lt!477) (_2!30 lt!477)))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!6)

(assert (=> b!443 (= lt!477 (splitInput!0 x!199))))

(assert (=> b!443 (= lt!478 #b00000000000000000000000000000110)))

(assert (= (and start!485 res!514) b!443))

(declare-fun m!427 () Bool)

(assert (=> b!443 m!427))

(declare-fun m!429 () Bool)

(assert (=> b!443 m!429))

(push 1)

(assert (not b!443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

