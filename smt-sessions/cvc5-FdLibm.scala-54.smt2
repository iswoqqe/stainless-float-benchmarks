; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!495 () Bool)

(assert start!495)

(declare-fun res!532 () Bool)

(declare-fun e!348 () Bool)

(assert (=> start!495 (=> (not res!532) (not e!348))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!495 (= res!532 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!495 e!348))

(assert (=> start!495 true))

(declare-fun b!460 () Bool)

(declare-fun e!347 () Bool)

(assert (=> b!460 (= e!348 e!347)))

(declare-fun res!531 () Bool)

(assert (=> b!460 (=> (not res!531) (not e!347))))

(declare-fun lt!500 () (_ BitVec 32))

(declare-datatypes ((array!13 0))(
  ( (array!14 (arr!6 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!6 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!10 0))(
  ( (tuple2!11 (_1!32 (_ BitVec 32)) (_2!32 array!13)) )
))
(declare-fun lt!499 () tuple2!10)

(declare-datatypes ((tuple4!0 0))(
  ( (tuple4!1 (_1!33 (_ BitVec 32)) (_2!33 Bool) (_3!27 Bool) (_4!0 array!13)) )
))
(declare-fun computeModulo!0 ((_ BitVec 32) array!13) tuple4!0)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!13) array!13)

(assert (=> b!460 (= res!531 (not (_3!27 (computeModulo!0 lt!500 (timesTwoOverPi!0 lt!500 (_1!32 lt!499) (_2!32 lt!499))))))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!10)

(assert (=> b!460 (= lt!499 (splitInput!0 x!199))))

(assert (=> b!460 (= lt!500 #b00000000000000000000000000000110)))

(declare-fun b!461 () Bool)

(assert (=> b!461 (= e!347 (or (bvsgt #b00000000000000000000000000000000 lt!500) (bvsge lt!500 #b00000000000000000000000000010100)))))

(assert (= (and start!495 res!532) b!460))

(assert (= (and b!460 res!531) b!461))

(declare-fun m!447 () Bool)

(assert (=> b!460 m!447))

(assert (=> b!460 m!447))

(declare-fun m!449 () Bool)

(assert (=> b!460 m!449))

(declare-fun m!451 () Bool)

(assert (=> b!460 m!451))

(push 1)

(assert (not b!460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

