; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2845 () Bool)

(assert start!2845)

(declare-fun res!12354 () Bool)

(declare-fun e!8821 () Bool)

(assert (=> start!2845 (=> (not res!12354) (not e!8821))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2845 (= res!12354 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2845 e!8821))

(assert (=> start!2845 true))

(declare-datatypes ((array!1278 0))(
  ( (array!1279 (arr!561 (Array (_ BitVec 32) (_ BitVec 32))) (size!561 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1278)

(declare-fun array_inv!509 (array!1278) Bool)

(assert (=> start!2845 (array_inv!509 iq!146)))

(declare-datatypes ((array!1280 0))(
  ( (array!1281 (arr!562 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!562 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1280)

(declare-fun array_inv!510 (array!1280) Bool)

(assert (=> start!2845 (array_inv!510 q!79)))

(declare-fun b!15789 () Bool)

(declare-fun res!12349 () Bool)

(assert (=> b!15789 (=> (not res!12349) (not e!8821))))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!15789 (= res!12349 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!15790 () Bool)

(declare-fun e!8823 () Bool)

(declare-fun lt!8122 () (_ FloatingPoint 11 53))

(assert (=> b!15790 (= e!8823 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8122) (fp.leq lt!8122 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) (bvand (bvsub j!78 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15791 () Bool)

(declare-fun res!12351 () Bool)

(assert (=> b!15791 (=> (not res!12351) (not e!8821))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!15791 (= res!12351 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15792 () Bool)

(declare-fun res!12350 () Bool)

(assert (=> b!15792 (=> (not res!12350) (not e!8821))))

(declare-fun qInv!0 (array!1280) Bool)

(assert (=> b!15792 (= res!12350 (qInv!0 q!79))))

(declare-fun b!15793 () Bool)

(declare-fun res!12353 () Bool)

(assert (=> b!15793 (=> (not res!12353) (not e!8821))))

(declare-fun iqInv!0 (array!1278) Bool)

(assert (=> b!15793 (= res!12353 (iqInv!0 iq!146))))

(declare-fun b!15794 () Bool)

(assert (=> b!15794 (= e!8821 e!8823)))

(declare-fun res!12352 () Bool)

(assert (=> b!15794 (=> (not res!12352) (not e!8823))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15794 (= res!12352 (QInt!0 (select (store (arr!561 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8122))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8122)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8122)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8122))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15794 (= lt!8122 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(assert (= (and start!2845 res!12354) b!15792))

(assert (= (and b!15792 res!12350) b!15791))

(assert (= (and b!15791 res!12351) b!15793))

(assert (= (and b!15793 res!12353) b!15789))

(assert (= (and b!15789 res!12349) b!15794))

(assert (= (and b!15794 res!12352) b!15790))

(declare-fun m!23867 () Bool)

(assert (=> start!2845 m!23867))

(declare-fun m!23869 () Bool)

(assert (=> start!2845 m!23869))

(declare-fun m!23871 () Bool)

(assert (=> b!15792 m!23871))

(declare-fun m!23873 () Bool)

(assert (=> b!15793 m!23873))

(declare-fun m!23875 () Bool)

(assert (=> b!15794 m!23875))

(declare-fun m!23877 () Bool)

(assert (=> b!15794 m!23877))

(assert (=> b!15794 m!23877))

(declare-fun m!23879 () Bool)

(assert (=> b!15794 m!23879))

(check-sat (not b!15793) (not b!15794) (not start!2845) (not b!15792))
(check-sat)
