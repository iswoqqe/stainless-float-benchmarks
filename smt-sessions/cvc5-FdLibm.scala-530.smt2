; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2999 () Bool)

(assert start!2999)

(declare-fun b!16659 () Bool)

(declare-fun e!9075 () Bool)

(declare-fun lt!8340 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16659 (= e!9075 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8340) (fp.leq lt!8340 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) (bvand (bvsub j!78 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!13099 () Bool)

(declare-fun e!9076 () Bool)

(assert (=> start!2999 (=> (not res!13099) (not e!9076))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2999 (= res!13099 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2999 e!9076))

(assert (=> start!2999 true))

(declare-datatypes ((array!1288 0))(
  ( (array!1289 (arr!561 (Array (_ BitVec 32) (_ BitVec 32))) (size!561 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1288)

(declare-fun array_inv!509 (array!1288) Bool)

(assert (=> start!2999 (array_inv!509 iq!146)))

(declare-datatypes ((array!1290 0))(
  ( (array!1291 (arr!562 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!562 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1290)

(declare-fun array_inv!510 (array!1290) Bool)

(assert (=> start!2999 (array_inv!510 q!79)))

(declare-fun b!16660 () Bool)

(declare-fun res!13104 () Bool)

(assert (=> b!16660 (=> (not res!13104) (not e!9076))))

(declare-fun qInv!0 (array!1290) Bool)

(assert (=> b!16660 (= res!13104 (qInv!0 q!79))))

(declare-fun b!16661 () Bool)

(declare-fun res!13101 () Bool)

(assert (=> b!16661 (=> (not res!13101) (not e!9076))))

(assert (=> b!16661 (= res!13101 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!16662 () Bool)

(assert (=> b!16662 (= e!9076 e!9075)))

(declare-fun res!13102 () Bool)

(assert (=> b!16662 (=> (not res!13102) (not e!9075))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16662 (= res!13102 (QInt!0 (select (store (arr!561 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8340))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8340)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8340)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8340))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16662 (= lt!8340 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16663 () Bool)

(declare-fun res!13103 () Bool)

(assert (=> b!16663 (=> (not res!13103) (not e!9076))))

(declare-fun iqInv!0 (array!1288) Bool)

(assert (=> b!16663 (= res!13103 (iqInv!0 iq!146))))

(declare-fun b!16664 () Bool)

(declare-fun res!13100 () Bool)

(assert (=> b!16664 (=> (not res!13100) (not e!9076))))

(assert (=> b!16664 (= res!13100 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (= (and start!2999 res!13099) b!16660))

(assert (= (and b!16660 res!13104) b!16664))

(assert (= (and b!16664 res!13100) b!16663))

(assert (= (and b!16663 res!13103) b!16661))

(assert (= (and b!16661 res!13101) b!16662))

(assert (= (and b!16662 res!13102) b!16659))

(declare-fun m!26711 () Bool)

(assert (=> start!2999 m!26711))

(declare-fun m!26713 () Bool)

(assert (=> start!2999 m!26713))

(declare-fun m!26715 () Bool)

(assert (=> b!16660 m!26715))

(declare-fun m!26717 () Bool)

(assert (=> b!16662 m!26717))

(declare-fun m!26719 () Bool)

(assert (=> b!16662 m!26719))

(assert (=> b!16662 m!26719))

(declare-fun m!26721 () Bool)

(assert (=> b!16662 m!26721))

(declare-fun m!26723 () Bool)

(assert (=> b!16663 m!26723))

(push 1)

(assert (not start!2999))

(assert (not b!16663))

(assert (not b!16662))

(assert (not b!16660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

