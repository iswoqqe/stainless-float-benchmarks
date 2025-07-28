; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2877 () Bool)

(assert start!2877)

(declare-fun res!12476 () Bool)

(declare-fun e!8892 () Bool)

(assert (=> start!2877 (=> (not res!12476) (not e!8892))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2877 (= res!12476 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2877 e!8892))

(assert (=> start!2877 true))

(declare-datatypes ((array!1302 0))(
  ( (array!1303 (arr!571 (Array (_ BitVec 32) (_ BitVec 32))) (size!571 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1302)

(declare-fun array_inv!519 (array!1302) Bool)

(assert (=> start!2877 (array_inv!519 iq!146)))

(declare-datatypes ((array!1304 0))(
  ( (array!1305 (arr!572 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!572 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1304)

(declare-fun array_inv!520 (array!1304) Bool)

(assert (=> start!2877 (array_inv!520 q!79)))

(declare-fun b!15913 () Bool)

(declare-fun res!12478 () Bool)

(assert (=> b!15913 (=> (not res!12478) (not e!8892))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!15913 (= res!12478 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15914 () Bool)

(declare-fun e!8893 () Bool)

(declare-fun lt!8142 () (_ BitVec 32))

(assert (=> b!15914 (= e!8893 (and (bvsgt lt!8142 #b00000000000000000000000000000000) (bvsge lt!8142 j!78)))))

(assert (=> b!15914 (= lt!8142 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!15915 () Bool)

(declare-fun res!12474 () Bool)

(assert (=> b!15915 (=> (not res!12474) (not e!8892))))

(assert (=> b!15915 (= res!12474 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!15916 () Bool)

(declare-fun res!12479 () Bool)

(assert (=> b!15916 (=> (not res!12479) (not e!8892))))

(declare-fun iqInv!0 (array!1302) Bool)

(assert (=> b!15916 (= res!12479 (iqInv!0 iq!146))))

(declare-fun b!15917 () Bool)

(assert (=> b!15917 (= e!8892 e!8893)))

(declare-fun res!12475 () Bool)

(assert (=> b!15917 (=> (not res!12475) (not e!8893))))

(declare-fun lt!8143 () (_ FloatingPoint 11 53))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15917 (= res!12475 (QInt!0 (select (store (arr!571 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8143))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8143)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8143)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8143))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15917 (= lt!8143 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!15918 () Bool)

(declare-fun res!12480 () Bool)

(assert (=> b!15918 (=> (not res!12480) (not e!8892))))

(declare-fun qInv!0 (array!1304) Bool)

(assert (=> b!15918 (= res!12480 (qInv!0 q!79))))

(declare-fun b!15919 () Bool)

(declare-fun res!12473 () Bool)

(assert (=> b!15919 (=> (not res!12473) (not e!8893))))

(assert (=> b!15919 (= res!12473 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8143) (fp.leq lt!8143 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!15920 () Bool)

(declare-fun res!12477 () Bool)

(assert (=> b!15920 (=> (not res!12477) (not e!8893))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!15920 (= res!12477 (P!3 (select (arr!572 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(assert (= (and start!2877 res!12476) b!15918))

(assert (= (and b!15918 res!12480) b!15913))

(assert (= (and b!15913 res!12478) b!15916))

(assert (= (and b!15916 res!12479) b!15915))

(assert (= (and b!15915 res!12474) b!15917))

(assert (= (and b!15917 res!12475) b!15919))

(assert (= (and b!15919 res!12473) b!15920))

(assert (= (and b!15920 res!12477) b!15914))

(declare-fun m!23957 () Bool)

(assert (=> b!15920 m!23957))

(assert (=> b!15920 m!23957))

(declare-fun m!23959 () Bool)

(assert (=> b!15920 m!23959))

(declare-fun m!23961 () Bool)

(assert (=> start!2877 m!23961))

(declare-fun m!23963 () Bool)

(assert (=> start!2877 m!23963))

(declare-fun m!23965 () Bool)

(assert (=> b!15917 m!23965))

(declare-fun m!23967 () Bool)

(assert (=> b!15917 m!23967))

(assert (=> b!15917 m!23967))

(declare-fun m!23969 () Bool)

(assert (=> b!15917 m!23969))

(declare-fun m!23971 () Bool)

(assert (=> b!15918 m!23971))

(declare-fun m!23973 () Bool)

(assert (=> b!15916 m!23973))

(check-sat (not b!15920) (not b!15918) (not start!2877) (not b!15917) (not b!15916))
(check-sat)
