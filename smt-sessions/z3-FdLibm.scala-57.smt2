; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519 () Bool)

(assert start!519)

(declare-fun b!503 () Bool)

(declare-fun e!390 () Bool)

(declare-fun e!392 () Bool)

(assert (=> b!503 (= e!390 e!392)))

(declare-fun res!574 () Bool)

(assert (=> b!503 (=> (not res!574) (not e!392))))

(declare-datatypes ((array!19 0))(
  ( (array!20 (arr!9 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!9 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!6 0))(
  ( (tuple4!7 (_1!38 (_ BitVec 32)) (_2!38 Bool) (_3!30 Bool) (_4!3 array!19)) )
))
(declare-fun lt!552 () tuple4!6)

(assert (=> b!503 (= res!574 (not (_3!30 lt!552)))))

(declare-fun lt!551 () (_ BitVec 32))

(declare-datatypes ((tuple2!16 0))(
  ( (tuple2!17 (_1!39 (_ BitVec 32)) (_2!39 array!19)) )
))
(declare-fun lt!554 () tuple2!16)

(declare-fun computeModulo!0 ((_ BitVec 32) array!19) tuple4!6)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!19) array!19)

(assert (=> b!503 (= lt!552 (computeModulo!0 lt!551 (timesTwoOverPi!0 lt!551 (_1!39 lt!554) (_2!39 lt!554))))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!16)

(assert (=> b!503 (= lt!554 (splitInput!0 x!199))))

(assert (=> b!503 (= lt!551 #b00000000000000000000000000000110)))

(declare-fun b!506 () Bool)

(declare-fun e!391 () Bool)

(assert (=> b!506 (= e!391 (or (bvsgt #b00000000000000000000000000000000 lt!551) (bvsge lt!551 #b00000000000000000000000000010100)))))

(declare-fun b!505 () Bool)

(declare-fun res!577 () Bool)

(assert (=> b!505 (=> (not res!577) (not e!391))))

(declare-fun lt!553 () array!19)

(declare-fun fqInv!0 (array!19) Bool)

(assert (=> b!505 (= res!577 (fqInv!0 lt!553))))

(declare-fun res!575 () Bool)

(assert (=> start!519 (=> (not res!575) (not e!390))))

(assert (=> start!519 (= res!575 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!519 e!390))

(assert (=> start!519 true))

(declare-fun b!504 () Bool)

(assert (=> b!504 (= e!392 e!391)))

(declare-fun res!576 () Bool)

(assert (=> b!504 (=> (not res!576) (not e!391))))

(assert (=> b!504 (= res!576 (= (size!9 lt!553) #b00000000000000000000000000010100))))

(declare-fun timesPiOverTwo!0 ((_ BitVec 32) array!19) array!19)

(assert (=> b!504 (= lt!553 (timesPiOverTwo!0 lt!551 (_4!3 lt!552)))))

(assert (= (and start!519 res!575) b!503))

(assert (= (and b!503 res!574) b!504))

(assert (= (and b!504 res!576) b!505))

(assert (= (and b!505 res!577) b!506))

(declare-fun m!579 () Bool)

(assert (=> b!503 m!579))

(assert (=> b!503 m!579))

(declare-fun m!581 () Bool)

(assert (=> b!503 m!581))

(declare-fun m!583 () Bool)

(assert (=> b!503 m!583))

(declare-fun m!585 () Bool)

(assert (=> b!505 m!585))

(declare-fun m!587 () Bool)

(assert (=> b!504 m!587))

(check-sat (not b!503) (not b!504) (not b!505))
(check-sat)
