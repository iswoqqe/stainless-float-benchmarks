; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2915 () Bool)

(assert start!2915)

(declare-fun b!16098 () Bool)

(declare-fun res!12646 () Bool)

(declare-fun e!9001 () Bool)

(assert (=> b!16098 (=> (not res!12646) (not e!9001))))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16098 (= res!12646 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!16099 () Bool)

(declare-fun res!12652 () Bool)

(assert (=> b!16099 (=> (not res!12652) (not e!9001))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!16099 (= res!12652 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16100 () Bool)

(declare-fun res!12650 () Bool)

(assert (=> b!16100 (=> (not res!12650) (not e!9001))))

(declare-datatypes ((array!1326 0))(
  ( (array!1327 (arr!581 (Array (_ BitVec 32) (_ BitVec 32))) (size!581 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1326)

(declare-fun iqInv!0 (array!1326) Bool)

(assert (=> b!16100 (= res!12650 (iqInv!0 iq!146))))

(declare-fun b!16101 () Bool)

(declare-fun res!12649 () Bool)

(declare-fun e!8999 () Bool)

(assert (=> b!16101 (=> (not res!12649) (not e!8999))))

(declare-fun lt!8211 () (_ FloatingPoint 11 53))

(assert (=> b!16101 (= res!12649 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8211) (fp.leq lt!8211 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16102 () Bool)

(assert (=> b!16102 (= e!9001 e!8999)))

(declare-fun res!12647 () Bool)

(assert (=> b!16102 (=> (not res!12647) (not e!8999))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16102 (= res!12647 (QInt!0 (select (store (arr!581 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8211))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8211)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8211)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8211))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16102 (= lt!8211 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun res!12648 () Bool)

(assert (=> start!2915 (=> (not res!12648) (not e!9001))))

(assert (=> start!2915 (= res!12648 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2915 e!9001))

(assert (=> start!2915 true))

(declare-fun array_inv!529 (array!1326) Bool)

(assert (=> start!2915 (array_inv!529 iq!146)))

(declare-datatypes ((array!1328 0))(
  ( (array!1329 (arr!582 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!582 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1328)

(declare-fun array_inv!530 (array!1328) Bool)

(assert (=> start!2915 (array_inv!530 q!79)))

(declare-fun lt!8212 () (_ BitVec 32))

(declare-fun b!16097 () Bool)

(assert (=> b!16097 (= e!8999 false)))

(assert (=> b!16097 (= lt!8212 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!16103 () Bool)

(declare-fun res!12651 () Bool)

(assert (=> b!16103 (=> (not res!12651) (not e!9001))))

(declare-fun qInv!0 (array!1328) Bool)

(assert (=> b!16103 (= res!12651 (qInv!0 q!79))))

(declare-fun b!16104 () Bool)

(declare-fun res!12645 () Bool)

(assert (=> b!16104 (=> (not res!12645) (not e!8999))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16104 (= res!12645 (P!3 (select (arr!582 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(assert (= (and start!2915 res!12648) b!16103))

(assert (= (and b!16103 res!12651) b!16099))

(assert (= (and b!16099 res!12652) b!16100))

(assert (= (and b!16100 res!12650) b!16098))

(assert (= (and b!16098 res!12646) b!16102))

(assert (= (and b!16102 res!12647) b!16101))

(assert (= (and b!16101 res!12649) b!16104))

(assert (= (and b!16104 res!12645) b!16097))

(declare-fun m!24087 () Bool)

(assert (=> b!16102 m!24087))

(declare-fun m!24089 () Bool)

(assert (=> b!16102 m!24089))

(assert (=> b!16102 m!24089))

(declare-fun m!24091 () Bool)

(assert (=> b!16102 m!24091))

(declare-fun m!24093 () Bool)

(assert (=> b!16097 m!24093))

(declare-fun m!24095 () Bool)

(assert (=> b!16103 m!24095))

(assert (=> b!16104 m!24093))

(assert (=> b!16104 m!24093))

(declare-fun m!24097 () Bool)

(assert (=> b!16104 m!24097))

(declare-fun m!24099 () Bool)

(assert (=> start!2915 m!24099))

(declare-fun m!24101 () Bool)

(assert (=> start!2915 m!24101))

(declare-fun m!24103 () Bool)

(assert (=> b!16100 m!24103))

(check-sat (not b!16102) (not b!16100) (not b!16103) (not b!16104) (not start!2915))
(check-sat)
