; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!669 () Bool)

(assert start!669)

(declare-fun res!1384 () Bool)

(declare-fun e!930 () Bool)

(assert (=> start!669 (=> (not res!1384) (not e!930))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!669 (= res!1384 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!669 e!930))

(assert (=> start!669 true))

(declare-datatypes ((array!90 0))(
  ( (array!91 (arr!39 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!39 (_ BitVec 32))) )
))
(declare-fun q!70 () array!90)

(declare-fun array_inv!16 (array!90) Bool)

(assert (=> start!669 (array_inv!16 q!70)))

(declare-fun lt!1255 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!104 0))(
  ( (Unit!105) )
))
(declare-datatypes ((array!92 0))(
  ( (array!93 (arr!40 (Array (_ BitVec 32) (_ BitVec 32))) (size!40 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!44 0))(
  ( (tuple4!45 (_1!66 Unit!104) (_2!66 array!92) (_3!54 (_ BitVec 32)) (_4!22 (_ FloatingPoint 11 53))) )
))
(declare-fun e!928 () tuple4!44)

(declare-fun lt!1254 () array!92)

(declare-fun b!1635 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!90 array!92 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!44)

(assert (=> b!1635 (= e!928 (computeModuloWhile!0 jz!42 q!70 lt!1254 jz!42 lt!1255))))

(declare-fun b!1633 () Bool)

(declare-fun res!1385 () Bool)

(assert (=> b!1633 (=> (not res!1385) (not e!930))))

(declare-fun qInv!0 (array!90) Bool)

(assert (=> b!1633 (= res!1385 (qInv!0 q!70))))

(declare-fun b!1636 () Bool)

(declare-fun Unit!106 () Unit!104)

(assert (=> b!1636 (= e!928 (tuple4!45 Unit!106 lt!1254 jz!42 lt!1255))))

(declare-fun b!1634 () Bool)

(declare-fun lt!1257 () (_ FloatingPoint 11 53))

(assert (=> b!1634 (= e!930 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1257) (fp.lt lt!1257 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1256 () tuple4!44)

(assert (=> b!1634 (= lt!1257 (fp.sub roundNearestTiesToEven (_4!22 lt!1256) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!22 lt!1256) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!22 lt!1256) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!22 lt!1256) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!22 lt!1256) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1634 (= lt!1256 e!928)))

(declare-fun c!331 () Bool)

(assert (=> b!1634 (= c!331 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1634 (= lt!1255 (select (arr!39 q!70) jz!42))))

(assert (=> b!1634 (= lt!1254 (array!93 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!669 res!1384) b!1633))

(assert (= (and b!1633 res!1385) b!1634))

(assert (= (and b!1634 c!331) b!1635))

(assert (= (and b!1634 (not c!331)) b!1636))

(declare-fun m!1893 () Bool)

(assert (=> start!669 m!1893))

(declare-fun m!1895 () Bool)

(assert (=> b!1635 m!1895))

(declare-fun m!1897 () Bool)

(assert (=> b!1633 m!1897))

(declare-fun m!1899 () Bool)

(assert (=> b!1634 m!1899))

(check-sat (not start!669) (not b!1633) (not b!1635))
(check-sat)
