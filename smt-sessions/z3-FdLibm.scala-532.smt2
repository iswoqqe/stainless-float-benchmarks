; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2827 () Bool)

(assert start!2827)

(declare-fun b!15369 () Bool)

(declare-fun res!11970 () Bool)

(declare-fun e!8763 () Bool)

(assert (=> b!15369 (=> (not res!11970) (not e!8763))))

(declare-fun lt!8046 () (_ FloatingPoint 11 53))

(assert (=> b!15369 (= res!11970 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8046) (fp.leq lt!8046 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!15370 () Bool)

(declare-fun e!8765 () Bool)

(assert (=> b!15370 (= e!8765 e!8763)))

(declare-fun res!11969 () Bool)

(assert (=> b!15370 (=> (not res!11969) (not e!8763))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1285 0))(
  ( (array!1286 (arr!565 (Array (_ BitVec 32) (_ BitVec 32))) (size!565 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1285)

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15370 (= res!11969 (QInt!0 (select (store (arr!565 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8046))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8046)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8046)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8046))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15370 (= lt!8046 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!15371 () Bool)

(declare-fun res!11975 () Bool)

(assert (=> b!15371 (=> (not res!11975) (not e!8763))))

(declare-datatypes ((array!1287 0))(
  ( (array!1288 (arr!566 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!566 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1287)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!15371 (= res!11975 (P!3 (select (arr!566 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun res!11976 () Bool)

(assert (=> start!2827 (=> (not res!11976) (not e!8765))))

(assert (=> start!2827 (= res!11976 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2827 e!8765))

(assert (=> start!2827 true))

(declare-fun array_inv!513 (array!1285) Bool)

(assert (=> start!2827 (array_inv!513 iq!146)))

(declare-fun array_inv!514 (array!1287) Bool)

(assert (=> start!2827 (array_inv!514 q!79)))

(declare-fun b!15372 () Bool)

(declare-fun res!11971 () Bool)

(assert (=> b!15372 (=> (not res!11971) (not e!8765))))

(assert (=> b!15372 (= res!11971 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!15373 () Bool)

(assert (=> b!15373 (= e!8763 (and (not (= (bvand j!78 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) (bvand (bvsub j!78 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15374 () Bool)

(declare-fun res!11972 () Bool)

(assert (=> b!15374 (=> (not res!11972) (not e!8765))))

(declare-fun iqInv!0 (array!1285) Bool)

(assert (=> b!15374 (= res!11972 (iqInv!0 iq!146))))

(declare-fun b!15375 () Bool)

(declare-fun res!11974 () Bool)

(assert (=> b!15375 (=> (not res!11974) (not e!8765))))

(assert (=> b!15375 (= res!11974 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15376 () Bool)

(declare-fun res!11973 () Bool)

(assert (=> b!15376 (=> (not res!11973) (not e!8765))))

(declare-fun qInv!0 (array!1287) Bool)

(assert (=> b!15376 (= res!11973 (qInv!0 q!79))))

(assert (= (and start!2827 res!11976) b!15376))

(assert (= (and b!15376 res!11973) b!15375))

(assert (= (and b!15375 res!11974) b!15374))

(assert (= (and b!15374 res!11972) b!15372))

(assert (= (and b!15372 res!11971) b!15370))

(assert (= (and b!15370 res!11969) b!15369))

(assert (= (and b!15369 res!11970) b!15371))

(assert (= (and b!15371 res!11975) b!15373))

(declare-fun m!21565 () Bool)

(assert (=> b!15371 m!21565))

(assert (=> b!15371 m!21565))

(declare-fun m!21567 () Bool)

(assert (=> b!15371 m!21567))

(declare-fun m!21569 () Bool)

(assert (=> b!15376 m!21569))

(declare-fun m!21571 () Bool)

(assert (=> b!15374 m!21571))

(declare-fun m!21573 () Bool)

(assert (=> start!2827 m!21573))

(declare-fun m!21575 () Bool)

(assert (=> start!2827 m!21575))

(declare-fun m!21577 () Bool)

(assert (=> b!15370 m!21577))

(declare-fun m!21579 () Bool)

(assert (=> b!15370 m!21579))

(assert (=> b!15370 m!21579))

(declare-fun m!21581 () Bool)

(assert (=> b!15370 m!21581))

(check-sat (not b!15370) (not b!15371) (not b!15376) (not b!15374) (not start!2827))
(check-sat)
