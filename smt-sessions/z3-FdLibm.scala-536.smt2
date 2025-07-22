; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2847 () Bool)

(assert start!2847)

(declare-fun res!12079 () Bool)

(declare-fun e!8820 () Bool)

(assert (=> start!2847 (=> (not res!12079) (not e!8820))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2847 (= res!12079 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2847 e!8820))

(assert (=> start!2847 true))

(declare-datatypes ((array!1303 0))(
  ( (array!1304 (arr!573 (Array (_ BitVec 32) (_ BitVec 32))) (size!573 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1303)

(declare-fun array_inv!521 (array!1303) Bool)

(assert (=> start!2847 (array_inv!521 iq!146)))

(declare-datatypes ((array!1305 0))(
  ( (array!1306 (arr!574 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!574 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1305)

(declare-fun array_inv!522 (array!1305) Bool)

(assert (=> start!2847 (array_inv!522 q!79)))

(declare-fun b!15473 () Bool)

(declare-fun res!12074 () Bool)

(assert (=> b!15473 (=> (not res!12074) (not e!8820))))

(declare-fun iqInv!0 (array!1303) Bool)

(assert (=> b!15473 (= res!12074 (iqInv!0 iq!146))))

(declare-fun b!15474 () Bool)

(declare-fun e!8819 () Bool)

(declare-datatypes ((Unit!1602 0))(
  ( (Unit!1603) )
))
(declare-datatypes ((tuple4!420 0))(
  ( (tuple4!421 (_1!404 Unit!1602) (_2!404 array!1303) (_3!341 (_ BitVec 32)) (_4!210 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8070 () tuple4!420)

(assert (=> b!15474 (= e!8819 false)))

(declare-fun lt!8068 () (_ BitVec 32))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun lt!8069 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1305 array!1303 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!420)

(assert (=> b!15474 (= lt!8070 (computeModuloWhile!0 jz!49 q!79 (array!1304 (store (arr!573 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069))))))) (size!573 iq!146)) lt!8068 (fp.add roundNearestTiesToEven (select (arr!574 q!79) (bvsub j!78 #b00000000000000000000000000000001)) lt!8069)))))

(declare-fun b!15475 () Bool)

(declare-fun res!12073 () Bool)

(assert (=> b!15475 (=> (not res!12073) (not e!8820))))

(assert (=> b!15475 (= res!12073 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15476 () Bool)

(declare-fun res!12075 () Bool)

(assert (=> b!15476 (=> (not res!12075) (not e!8820))))

(assert (=> b!15476 (= res!12075 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!15477 () Bool)

(declare-fun e!8821 () Bool)

(assert (=> b!15477 (= e!8821 e!8819)))

(declare-fun res!12076 () Bool)

(assert (=> b!15477 (=> (not res!12076) (not e!8819))))

(assert (=> b!15477 (= res!12076 (bvsgt lt!8068 #b00000000000000000000000000000000))))

(assert (=> b!15477 (= lt!8068 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!15478 () Bool)

(declare-fun res!12077 () Bool)

(assert (=> b!15478 (=> (not res!12077) (not e!8821))))

(assert (=> b!15478 (= res!12077 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8069) (fp.leq lt!8069 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!15479 () Bool)

(declare-fun res!12081 () Bool)

(assert (=> b!15479 (=> (not res!12081) (not e!8820))))

(declare-fun qInv!0 (array!1305) Bool)

(assert (=> b!15479 (= res!12081 (qInv!0 q!79))))

(declare-fun b!15480 () Bool)

(declare-fun res!12078 () Bool)

(assert (=> b!15480 (=> (not res!12078) (not e!8821))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!15480 (= res!12078 (P!3 (select (arr!574 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!15481 () Bool)

(assert (=> b!15481 (= e!8820 e!8821)))

(declare-fun res!12080 () Bool)

(assert (=> b!15481 (=> (not res!12080) (not e!8821))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15481 (= res!12080 (QInt!0 (select (store (arr!573 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8069))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15481 (= lt!8069 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(assert (= (and start!2847 res!12079) b!15479))

(assert (= (and b!15479 res!12081) b!15475))

(assert (= (and b!15475 res!12073) b!15473))

(assert (= (and b!15473 res!12074) b!15476))

(assert (= (and b!15476 res!12075) b!15481))

(assert (= (and b!15481 res!12080) b!15478))

(assert (= (and b!15478 res!12077) b!15480))

(assert (= (and b!15480 res!12078) b!15477))

(assert (= (and b!15477 res!12076) b!15474))

(declare-fun m!21641 () Bool)

(assert (=> b!15474 m!21641))

(declare-fun m!21643 () Bool)

(assert (=> b!15474 m!21643))

(declare-fun m!21645 () Bool)

(assert (=> b!15474 m!21645))

(declare-fun m!21647 () Bool)

(assert (=> start!2847 m!21647))

(declare-fun m!21649 () Bool)

(assert (=> start!2847 m!21649))

(declare-fun m!21651 () Bool)

(assert (=> b!15479 m!21651))

(assert (=> b!15481 m!21641))

(declare-fun m!21653 () Bool)

(assert (=> b!15481 m!21653))

(assert (=> b!15481 m!21653))

(declare-fun m!21655 () Bool)

(assert (=> b!15481 m!21655))

(declare-fun m!21657 () Bool)

(assert (=> b!15473 m!21657))

(assert (=> b!15480 m!21643))

(assert (=> b!15480 m!21643))

(declare-fun m!21659 () Bool)

(assert (=> b!15480 m!21659))

(check-sat (not b!15480) (not start!2847) (not b!15474) (not b!15473) (not b!15479) (not b!15481))
(check-sat)
