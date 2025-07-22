; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!519 () Bool)

(assert start!519)

(declare-fun b!505 () Bool)

(declare-fun res!574 () Bool)

(declare-fun e!391 () Bool)

(assert (=> b!505 (=> (not res!574) (not e!391))))

(declare-datatypes ((array!19 0))(
  ( (array!20 (arr!9 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!9 (_ BitVec 32))) )
))
(declare-fun lt!554 () array!19)

(declare-fun fqInv!0 (array!19) Bool)

(assert (=> b!505 (= res!574 (fqInv!0 lt!554))))

(declare-fun res!575 () Bool)

(declare-fun e!392 () Bool)

(assert (=> start!519 (=> (not res!575) (not e!392))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!519 (= res!575 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!519 e!392))

(assert (=> start!519 true))

(declare-fun b!504 () Bool)

(declare-fun e!390 () Bool)

(assert (=> b!504 (= e!390 e!391)))

(declare-fun res!576 () Bool)

(assert (=> b!504 (=> (not res!576) (not e!391))))

(assert (=> b!504 (= res!576 (= (size!9 lt!554) #b00000000000000000000000000010100))))

(declare-fun lt!553 () (_ BitVec 32))

(declare-datatypes ((tuple4!6 0))(
  ( (tuple4!7 (_1!38 (_ BitVec 32)) (_2!38 Bool) (_3!30 Bool) (_4!3 array!19)) )
))
(declare-fun lt!551 () tuple4!6)

(declare-fun timesPiOverTwo!0 ((_ BitVec 32) array!19) array!19)

(assert (=> b!504 (= lt!554 (timesPiOverTwo!0 lt!553 (_4!3 lt!551)))))

(declare-fun b!503 () Bool)

(assert (=> b!503 (= e!392 e!390)))

(declare-fun res!577 () Bool)

(assert (=> b!503 (=> (not res!577) (not e!390))))

(assert (=> b!503 (= res!577 (not (_3!30 lt!551)))))

(declare-datatypes ((tuple2!16 0))(
  ( (tuple2!17 (_1!39 (_ BitVec 32)) (_2!39 array!19)) )
))
(declare-fun lt!552 () tuple2!16)

(declare-fun computeModulo!0 ((_ BitVec 32) array!19) tuple4!6)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!19) array!19)

(assert (=> b!503 (= lt!551 (computeModulo!0 lt!553 (timesTwoOverPi!0 lt!553 (_1!39 lt!552) (_2!39 lt!552))))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!16)

(assert (=> b!503 (= lt!552 (splitInput!0 x!199))))

(assert (=> b!503 (= lt!553 #b00000000000000000000000000000110)))

(declare-fun b!506 () Bool)

(assert (=> b!506 (= e!391 (or (bvsgt #b00000000000000000000000000000000 lt!553) (bvsge lt!553 #b00000000000000000000000000010100)))))

(assert (= (and start!519 res!575) b!503))

(assert (= (and b!503 res!577) b!504))

(assert (= (and b!504 res!576) b!505))

(assert (= (and b!505 res!574) b!506))

(declare-fun m!579 () Bool)

(assert (=> b!505 m!579))

(declare-fun m!581 () Bool)

(assert (=> b!504 m!581))

(declare-fun m!583 () Bool)

(assert (=> b!503 m!583))

(assert (=> b!503 m!583))

(declare-fun m!585 () Bool)

(assert (=> b!503 m!585))

(declare-fun m!587 () Bool)

(assert (=> b!503 m!587))

(push 1)

(assert (not b!503))

(assert (not b!505))

(assert (not b!504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

