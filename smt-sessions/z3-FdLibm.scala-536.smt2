; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2879 () Bool)

(assert start!2879)

(declare-fun b!15939 () Bool)

(declare-fun res!12501 () Bool)

(declare-fun e!8908 () Bool)

(assert (=> b!15939 (=> (not res!12501) (not e!8908))))

(declare-fun lt!8151 () (_ FloatingPoint 11 53))

(assert (=> b!15939 (= res!12501 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8151) (fp.leq lt!8151 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!15940 () Bool)

(declare-fun res!12502 () Bool)

(declare-fun e!8910 () Bool)

(assert (=> b!15940 (=> (not res!12502) (not e!8910))))

(declare-datatypes ((array!1306 0))(
  ( (array!1307 (arr!573 (Array (_ BitVec 32) (_ BitVec 32))) (size!573 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1306)

(declare-fun iqInv!0 (array!1306) Bool)

(assert (=> b!15940 (= res!12502 (iqInv!0 iq!146))))

(declare-fun b!15942 () Bool)

(assert (=> b!15942 (= e!8910 e!8908)))

(declare-fun res!12505 () Bool)

(assert (=> b!15942 (=> (not res!12505) (not e!8908))))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun jz!49 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15942 (= res!12505 (QInt!0 (select (store (arr!573 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15942 (= lt!8151 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!15943 () Bool)

(declare-fun e!8909 () Bool)

(assert (=> b!15943 (= e!8908 e!8909)))

(declare-fun res!12499 () Bool)

(assert (=> b!15943 (=> (not res!12499) (not e!8909))))

(declare-fun lt!8150 () (_ BitVec 32))

(assert (=> b!15943 (= res!12499 (bvsgt lt!8150 #b00000000000000000000000000000000))))

(assert (=> b!15943 (= lt!8150 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!15944 () Bool)

(declare-datatypes ((Unit!1619 0))(
  ( (Unit!1620) )
))
(declare-datatypes ((tuple4!420 0))(
  ( (tuple4!421 (_1!404 Unit!1619) (_2!404 array!1306) (_3!341 (_ BitVec 32)) (_4!210 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8152 () tuple4!420)

(assert (=> b!15944 (= e!8909 false)))

(declare-datatypes ((array!1308 0))(
  ( (array!1309 (arr!574 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!574 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1308)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1308 array!1306 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!420)

(assert (=> b!15944 (= lt!8152 (computeModuloWhile!0 jz!49 q!79 (array!1307 (store (arr!573 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8151))))))) (size!573 iq!146)) lt!8150 (fp.add roundNearestTiesToEven (select (arr!574 q!79) (bvsub j!78 #b00000000000000000000000000000001)) lt!8151)))))

(declare-fun b!15945 () Bool)

(declare-fun res!12507 () Bool)

(assert (=> b!15945 (=> (not res!12507) (not e!8910))))

(assert (=> b!15945 (= res!12507 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!15946 () Bool)

(declare-fun res!12506 () Bool)

(assert (=> b!15946 (=> (not res!12506) (not e!8908))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!15946 (= res!12506 (P!3 (select (arr!574 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!15947 () Bool)

(declare-fun res!12504 () Bool)

(assert (=> b!15947 (=> (not res!12504) (not e!8910))))

(declare-fun qInv!0 (array!1308) Bool)

(assert (=> b!15947 (= res!12504 (qInv!0 q!79))))

(declare-fun b!15941 () Bool)

(declare-fun res!12503 () Bool)

(assert (=> b!15941 (=> (not res!12503) (not e!8910))))

(assert (=> b!15941 (= res!12503 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun res!12500 () Bool)

(assert (=> start!2879 (=> (not res!12500) (not e!8910))))

(assert (=> start!2879 (= res!12500 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2879 e!8910))

(assert (=> start!2879 true))

(declare-fun array_inv!521 (array!1306) Bool)

(assert (=> start!2879 (array_inv!521 iq!146)))

(declare-fun array_inv!522 (array!1308) Bool)

(assert (=> start!2879 (array_inv!522 q!79)))

(assert (= (and start!2879 res!12500) b!15947))

(assert (= (and b!15947 res!12504) b!15941))

(assert (= (and b!15941 res!12503) b!15940))

(assert (= (and b!15940 res!12502) b!15945))

(assert (= (and b!15945 res!12507) b!15942))

(assert (= (and b!15942 res!12505) b!15939))

(assert (= (and b!15939 res!12501) b!15946))

(assert (= (and b!15946 res!12506) b!15943))

(assert (= (and b!15943 res!12499) b!15944))

(declare-fun m!23975 () Bool)

(assert (=> b!15944 m!23975))

(declare-fun m!23977 () Bool)

(assert (=> b!15944 m!23977))

(declare-fun m!23979 () Bool)

(assert (=> b!15944 m!23979))

(declare-fun m!23981 () Bool)

(assert (=> start!2879 m!23981))

(declare-fun m!23983 () Bool)

(assert (=> start!2879 m!23983))

(declare-fun m!23985 () Bool)

(assert (=> b!15940 m!23985))

(declare-fun m!23987 () Bool)

(assert (=> b!15947 m!23987))

(assert (=> b!15946 m!23977))

(assert (=> b!15946 m!23977))

(declare-fun m!23989 () Bool)

(assert (=> b!15946 m!23989))

(assert (=> b!15942 m!23975))

(declare-fun m!23991 () Bool)

(assert (=> b!15942 m!23991))

(assert (=> b!15942 m!23991))

(declare-fun m!23993 () Bool)

(assert (=> b!15942 m!23993))

(check-sat (not b!15942) (not b!15946) (not start!2879) (not b!15944) (not b!15947) (not b!15940))
(check-sat)
