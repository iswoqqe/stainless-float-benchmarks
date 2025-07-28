; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697 () Bool)

(assert start!697)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!111 0))(
  ( (array!112 (arr!49 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!49 (_ BitVec 32))) )
))
(declare-fun q!70 () array!111)

(declare-fun b!2151 () Bool)

(declare-datatypes ((array!113 0))(
  ( (array!114 (arr!50 (Array (_ BitVec 32) (_ BitVec 32))) (size!50 (_ BitVec 32))) )
))
(declare-fun lt!1408 () array!113)

(declare-fun lt!1406 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!136 0))(
  ( (Unit!137) )
))
(declare-datatypes ((tuple4!54 0))(
  ( (tuple4!55 (_1!71 Unit!136) (_2!71 array!113) (_3!59 (_ BitVec 32)) (_4!27 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1066 () tuple4!54)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!111 array!113 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!54)

(assert (=> b!2151 (= e!1066 (computeModuloWhile!0 jz!42 q!70 lt!1408 jz!42 lt!1406))))

(declare-fun b!2149 () Bool)

(declare-fun res!1832 () Bool)

(declare-fun e!1068 () Bool)

(assert (=> b!2149 (=> (not res!1832) (not e!1068))))

(declare-fun qInv!0 (array!111) Bool)

(assert (=> b!2149 (= res!1832 (qInv!0 q!70))))

(declare-fun res!1833 () Bool)

(assert (=> start!697 (=> (not res!1833) (not e!1068))))

(assert (=> start!697 (= res!1833 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!697 e!1068))

(assert (=> start!697 true))

(declare-fun array_inv!21 (array!111) Bool)

(assert (=> start!697 (array_inv!21 q!70)))

(declare-fun lt!1407 () tuple4!54)

(declare-fun lt!1409 () (_ FloatingPoint 11 53))

(declare-fun b!2150 () Bool)

(assert (=> b!2150 (= e!1068 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1409) (fp.lt lt!1409 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!50 (_2!71 lt!1407)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (let ((lhs!86 (ite (fp.isNaN lt!1409) #b00000000000000000000000000000000 (ite (fp.gt lt!1409 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!1409 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!1409)))))) (and (= (bvand lhs!86 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!86 #b10000000000000000000000000000000) (bvand (bvadd lhs!86 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))

(assert (=> b!2150 (= lt!1409 (fp.sub roundNearestTiesToEven (_4!27 lt!1407) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!27 lt!1407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!27 lt!1407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!27 lt!1407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!27 lt!1407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2150 (= lt!1407 e!1066)))

(declare-fun c!365 () Bool)

(assert (=> b!2150 (= c!365 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2150 (= lt!1406 (select (arr!49 q!70) jz!42))))

(assert (=> b!2150 (= lt!1408 (array!114 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2152 () Bool)

(declare-fun Unit!138 () Unit!136)

(assert (=> b!2152 (= e!1066 (tuple4!55 Unit!138 lt!1408 jz!42 lt!1406))))

(assert (= (and start!697 res!1833) b!2149))

(assert (= (and b!2149 res!1832) b!2150))

(assert (= (and b!2150 c!365) b!2151))

(assert (= (and b!2150 (not c!365)) b!2152))

(declare-fun m!3693 () Bool)

(assert (=> b!2151 m!3693))

(declare-fun m!3695 () Bool)

(assert (=> b!2149 m!3695))

(declare-fun m!3697 () Bool)

(assert (=> start!697 m!3697))

(declare-fun m!3699 () Bool)

(assert (=> b!2150 m!3699))

(declare-fun m!3701 () Bool)

(assert (=> b!2150 m!3701))

(check-sat (not b!2151) (not b!2149) (not start!697))
(check-sat)
