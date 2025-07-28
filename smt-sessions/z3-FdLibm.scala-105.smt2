; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!871 () Bool)

(assert start!871)

(declare-fun b!3954 () Bool)

(declare-fun res!3074 () Bool)

(declare-fun e!1870 () Bool)

(assert (=> b!3954 (=> (not res!3074) (not e!1870))))

(declare-datatypes ((array!224 0))(
  ( (array!225 (arr!99 (Array (_ BitVec 32) (_ BitVec 32))) (size!99 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!224)

(declare-fun iqInv!0 (array!224) Bool)

(assert (=> b!3954 (= res!3074 (iqInv!0 iq!165))))

(declare-fun res!3075 () Bool)

(declare-fun e!1871 () Bool)

(assert (=> start!871 (=> (not res!3075) (not e!1871))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!871 (= res!3075 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!871 e!1871))

(assert (=> start!871 true))

(declare-datatypes ((array!226 0))(
  ( (array!227 (arr!100 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!100 (_ BitVec 32))) )
))
(declare-fun q!85 () array!226)

(declare-fun array_inv!49 (array!226) Bool)

(assert (=> start!871 (array_inv!49 q!85)))

(declare-fun array_inv!50 (array!224) Bool)

(assert (=> start!871 (array_inv!50 iq!165)))

(declare-fun b!3955 () Bool)

(declare-fun lt!2519 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!303 0))(
  ( (Unit!304) )
))
(declare-datatypes ((tuple4!138 0))(
  ( (tuple4!139 (_1!124 Unit!303) (_2!124 array!224) (_3!112 (_ BitVec 32)) (_4!69 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1872 () tuple4!138)

(declare-fun lt!2520 () array!224)

(declare-fun Unit!305 () Unit!303)

(assert (=> b!3955 (= e!1872 (tuple4!139 Unit!305 lt!2520 jz!53 lt!2519))))

(declare-fun b!3956 () Bool)

(declare-fun res!3076 () Bool)

(assert (=> b!3956 (=> (not res!3076) (not e!1871))))

(declare-fun qInv!0 (array!226) Bool)

(assert (=> b!3956 (= res!3076 (qInv!0 q!85))))

(declare-fun b!3957 () Bool)

(assert (=> b!3957 (= e!1871 e!1870)))

(declare-fun res!3073 () Bool)

(assert (=> b!3957 (=> (not res!3073) (not e!1870))))

(declare-fun lt!2522 () (_ FloatingPoint 11 53))

(declare-fun lt!2521 () tuple4!138)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3957 (= res!3073 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2522) (fp.lt lt!2522 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!99 (_2!124 lt!2521)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3957 (= lt!2522 (fp.sub roundNearestTiesToEven (_4!69 lt!2521) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!69 lt!2521) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!69 lt!2521) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!69 lt!2521) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!69 lt!2521) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3957 (= lt!2521 e!1872)))

(declare-fun c!647 () Bool)

(assert (=> b!3957 (= c!647 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3957 (= lt!2519 (select (arr!100 q!85) jz!53))))

(assert (=> b!3957 (= lt!2520 (array!225 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3958 () Bool)

(assert (=> b!3958 (= e!1870 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!3959 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!226 array!224 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!138)

(assert (=> b!3959 (= e!1872 (computeModuloWhile!0 jz!53 q!85 lt!2520 jz!53 lt!2519))))

(assert (= (and start!871 res!3075) b!3956))

(assert (= (and b!3956 res!3076) b!3957))

(assert (= (and b!3957 c!647) b!3959))

(assert (= (and b!3957 (not c!647)) b!3955))

(assert (= (and b!3957 res!3073) b!3954))

(assert (= (and b!3954 res!3074) b!3958))

(declare-fun m!6143 () Bool)

(assert (=> b!3956 m!6143))

(declare-fun m!6145 () Bool)

(assert (=> b!3954 m!6145))

(declare-fun m!6147 () Bool)

(assert (=> b!3957 m!6147))

(declare-fun m!6149 () Bool)

(assert (=> b!3957 m!6149))

(declare-fun m!6151 () Bool)

(assert (=> start!871 m!6151))

(declare-fun m!6153 () Bool)

(assert (=> start!871 m!6153))

(declare-fun m!6155 () Bool)

(assert (=> b!3959 m!6155))

(check-sat (not start!871) (not b!3959) (not b!3954) (not b!3956))
(check-sat)
