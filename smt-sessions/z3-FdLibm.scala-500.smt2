; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2655 () Bool)

(assert start!2655)

(declare-datatypes ((Unit!1570 0))(
  ( (Unit!1571) )
))
(declare-datatypes ((array!1142 0))(
  ( (array!1143 (arr!503 (Array (_ BitVec 32) (_ BitVec 32))) (size!503 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!384 0))(
  ( (tuple4!385 (_1!386 Unit!1570) (_2!386 array!1142) (_3!323 (_ BitVec 32)) (_4!192 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8225 () tuple4!384)

(declare-fun lt!7716 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun b!14506 () Bool)

(declare-fun lt!7712 () array!1142)

(declare-fun Unit!1572 () Unit!1570)

(assert (=> b!14506 (= e!8225 (tuple4!385 Unit!1572 lt!7712 jz!20 lt!7716))))

(declare-datatypes ((array!1144 0))(
  ( (array!1145 (arr!504 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!504 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1144)

(declare-fun b!14507 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1144 array!1142 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!384)

(assert (=> b!14507 (= e!8225 (computeModuloWhile!0 jz!20 q!31 lt!7712 jz!20 lt!7716))))

(declare-fun b!14508 () Bool)

(declare-fun res!11204 () Bool)

(declare-fun e!8224 () Bool)

(assert (=> b!14508 (=> (not res!11204) (not e!8224))))

(declare-fun qInv!0 (array!1144) Bool)

(assert (=> b!14508 (= res!11204 (qInv!0 q!31))))

(declare-fun b!14509 () Bool)

(declare-fun e!8223 () Bool)

(declare-fun e!8219 () Bool)

(assert (=> b!14509 (= e!8223 e!8219)))

(declare-fun res!11209 () Bool)

(assert (=> b!14509 (=> (not res!11209) (not e!8219))))

(declare-fun lt!7715 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14509 (= res!11209 (QInt!0 lt!7715))))

(declare-fun iq!76 () array!1142)

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!14509 (= lt!7715 (select (arr!503 iq!76) i!142))))

(declare-fun b!14510 () Bool)

(declare-fun res!11205 () Bool)

(declare-fun e!8222 () Bool)

(assert (=> b!14510 (=> (not res!11205) (not e!8222))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun lt!7714 () (_ BitVec 32))

(declare-datatypes ((tuple4!386 0))(
  ( (tuple4!387 (_1!387 Unit!1570) (_2!387 (_ BitVec 32)) (_3!324 array!1142) (_4!193 (_ BitVec 32))) )
))
(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!1144 (_ BitVec 32) array!1142 (_ BitVec 32)) tuple4!386)

(assert (=> b!14510 (= res!11205 (bvsle #b00000000000000000000000000000000 (_2!387 (computeModuloWhile!3 jz!20 q!31 lt!7714 (array!1143 (store (arr!503 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7715 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7715) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7715))) (size!503 iq!76)) (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!7715 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33)))))))

(declare-fun b!14511 () Bool)

(declare-fun res!11211 () Bool)

(assert (=> b!14511 (=> (not res!11211) (not e!8223))))

(declare-fun iqInv!0 (array!1142) Bool)

(assert (=> b!14511 (= res!11211 (iqInv!0 iq!76))))

(declare-fun b!14512 () Bool)

(assert (=> b!14512 (= e!8224 e!8223)))

(declare-fun res!11210 () Bool)

(assert (=> b!14512 (=> (not res!11210) (not e!8223))))

(declare-fun lt!7713 () tuple4!384)

(declare-fun lt!7711 () (_ FloatingPoint 11 53))

(assert (=> b!14512 (= res!11210 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7711) (fp.lt lt!7711 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!503 (_2!386 lt!7713)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14512 (= lt!7711 (fp.sub roundNearestTiesToEven (_4!192 lt!7713) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!192 lt!7713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!192 lt!7713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!192 lt!7713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!192 lt!7713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14512 (= lt!7713 e!8225)))

(declare-fun c!1862 () Bool)

(assert (=> b!14512 (= c!1862 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14512 (= lt!7716 (select (arr!504 q!31) jz!20))))

(assert (=> b!14512 (= lt!7712 (array!1143 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!11207 () Bool)

(assert (=> start!2655 (=> (not res!11207) (not e!8224))))

(assert (=> start!2655 (= res!11207 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2655 e!8224))

(assert (=> start!2655 true))

(declare-fun array_inv!451 (array!1144) Bool)

(assert (=> start!2655 (array_inv!451 q!31)))

(declare-fun array_inv!452 (array!1142) Bool)

(assert (=> start!2655 (array_inv!452 iq!76)))

(declare-fun b!14513 () Bool)

(declare-fun res!11208 () Bool)

(assert (=> b!14513 (=> (not res!11208) (not e!8223))))

(assert (=> b!14513 (= res!11208 (and (bvsge (select (arr!503 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!14514 () Bool)

(assert (=> b!14514 (= e!8222 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!14515 () Bool)

(assert (=> b!14515 (= e!8219 e!8222)))

(declare-fun res!11206 () Bool)

(assert (=> b!14515 (=> (not res!11206) (not e!8222))))

(assert (=> b!14515 (= res!11206 (bvslt lt!7714 (bvsub jz!20 #b00000000000000000000000000000001)))))

(assert (=> b!14515 (= lt!7714 (bvadd i!142 #b00000000000000000000000000000001))))

(assert (= (and start!2655 res!11207) b!14508))

(assert (= (and b!14508 res!11204) b!14512))

(assert (= (and b!14512 c!1862) b!14507))

(assert (= (and b!14512 (not c!1862)) b!14506))

(assert (= (and b!14512 res!11210) b!14511))

(assert (= (and b!14511 res!11211) b!14513))

(assert (= (and b!14513 res!11208) b!14509))

(assert (= (and b!14509 res!11209) b!14515))

(assert (= (and b!14515 res!11206) b!14510))

(assert (= (and b!14510 res!11205) b!14514))

(declare-fun m!22015 () Bool)

(assert (=> start!2655 m!22015))

(declare-fun m!22017 () Bool)

(assert (=> start!2655 m!22017))

(declare-fun m!22019 () Bool)

(assert (=> b!14507 m!22019))

(declare-fun m!22021 () Bool)

(assert (=> b!14510 m!22021))

(declare-fun m!22023 () Bool)

(assert (=> b!14510 m!22023))

(declare-fun m!22025 () Bool)

(assert (=> b!14513 m!22025))

(declare-fun m!22027 () Bool)

(assert (=> b!14508 m!22027))

(declare-fun m!22029 () Bool)

(assert (=> b!14511 m!22029))

(declare-fun m!22031 () Bool)

(assert (=> b!14509 m!22031))

(declare-fun m!22033 () Bool)

(assert (=> b!14509 m!22033))

(declare-fun m!22035 () Bool)

(assert (=> b!14512 m!22035))

(declare-fun m!22037 () Bool)

(assert (=> b!14512 m!22037))

(check-sat (not b!14507) (not b!14508) (not b!14511) (not start!2655) (not b!14510) (not b!14509))
(check-sat)
