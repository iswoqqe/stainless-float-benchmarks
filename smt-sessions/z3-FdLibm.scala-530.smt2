; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2813 () Bool)

(assert start!2813)

(declare-fun b!15323 () Bool)

(declare-fun e!8732 () Bool)

(declare-fun e!8735 () Bool)

(assert (=> b!15323 (= e!8732 e!8735)))

(declare-fun res!11927 () Bool)

(assert (=> b!15323 (=> (not res!11927) (not e!8735))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1275 0))(
  ( (array!1276 (arr!561 (Array (_ BitVec 32) (_ BitVec 32))) (size!561 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1275)

(declare-fun lt!8040 () (_ FloatingPoint 11 53))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15323 (= res!11927 (QInt!0 (select (store (arr!561 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8040))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8040)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8040)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8040))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15323 (= lt!8040 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!15324 () Bool)

(declare-fun res!11923 () Bool)

(assert (=> b!15324 (=> (not res!11923) (not e!8732))))

(assert (=> b!15324 (= res!11923 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15325 () Bool)

(declare-fun res!11924 () Bool)

(assert (=> b!15325 (=> (not res!11924) (not e!8732))))

(declare-datatypes ((array!1277 0))(
  ( (array!1278 (arr!562 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!562 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1277)

(declare-fun qInv!0 (array!1277) Bool)

(assert (=> b!15325 (= res!11924 (qInv!0 q!79))))

(declare-fun b!15326 () Bool)

(assert (=> b!15326 (= e!8735 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8040) (fp.leq lt!8040 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) (bvand (bvsub j!78 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15327 () Bool)

(declare-fun res!11926 () Bool)

(assert (=> b!15327 (=> (not res!11926) (not e!8732))))

(declare-fun iqInv!0 (array!1275) Bool)

(assert (=> b!15327 (= res!11926 (iqInv!0 iq!146))))

(declare-fun res!11928 () Bool)

(assert (=> start!2813 (=> (not res!11928) (not e!8732))))

(assert (=> start!2813 (= res!11928 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2813 e!8732))

(assert (=> start!2813 true))

(declare-fun array_inv!509 (array!1275) Bool)

(assert (=> start!2813 (array_inv!509 iq!146)))

(declare-fun array_inv!510 (array!1277) Bool)

(assert (=> start!2813 (array_inv!510 q!79)))

(declare-fun b!15328 () Bool)

(declare-fun res!11925 () Bool)

(assert (=> b!15328 (=> (not res!11925) (not e!8732))))

(assert (=> b!15328 (= res!11925 (bvsgt j!78 #b00000000000000000000000000000000))))

(assert (= (and start!2813 res!11928) b!15325))

(assert (= (and b!15325 res!11924) b!15324))

(assert (= (and b!15324 res!11923) b!15327))

(assert (= (and b!15327 res!11926) b!15328))

(assert (= (and b!15328 res!11925) b!15323))

(assert (= (and b!15323 res!11927) b!15326))

(declare-fun m!21533 () Bool)

(assert (=> b!15323 m!21533))

(declare-fun m!21535 () Bool)

(assert (=> b!15323 m!21535))

(assert (=> b!15323 m!21535))

(declare-fun m!21537 () Bool)

(assert (=> b!15323 m!21537))

(declare-fun m!21539 () Bool)

(assert (=> b!15325 m!21539))

(declare-fun m!21541 () Bool)

(assert (=> b!15327 m!21541))

(declare-fun m!21543 () Bool)

(assert (=> start!2813 m!21543))

(declare-fun m!21545 () Bool)

(assert (=> start!2813 m!21545))

(check-sat (not b!15327) (not b!15325) (not start!2813) (not b!15323))
(check-sat)
