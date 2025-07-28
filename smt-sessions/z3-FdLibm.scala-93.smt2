; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!767 () Bool)

(assert start!767)

(declare-fun b!2759 () Bool)

(declare-datatypes ((Unit!206 0))(
  ( (Unit!207) )
))
(declare-datatypes ((array!168 0))(
  ( (array!169 (arr!75 (Array (_ BitVec 32) (_ BitVec 32))) (size!75 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!68 0))(
  ( (tuple3!69 (_1!94 Unit!206) (_2!94 array!168) (_3!82 (_ BitVec 32))) )
))
(declare-fun e!1407 () tuple3!68)

(declare-datatypes ((tuple4!96 0))(
  ( (tuple4!97 (_1!95 Unit!206) (_2!95 array!168) (_3!83 (_ BitVec 32)) (_4!48 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1898 () tuple4!96)

(declare-fun lt!1899 () (_ BitVec 32))

(declare-fun Unit!208 () Unit!206)

(assert (=> b!2759 (= e!1407 (tuple3!69 Unit!208 (_2!95 lt!1898) lt!1899))))

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!170 0))(
  ( (array!171 (arr!76 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!76 (_ BitVec 32))) )
))
(declare-fun q!70 () array!170)

(declare-fun lt!1901 () (_ FloatingPoint 11 53))

(declare-fun b!2760 () Bool)

(declare-fun e!1402 () tuple4!96)

(declare-fun lt!1905 () array!168)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!170 array!168 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!96)

(assert (=> b!2760 (= e!1402 (computeModuloWhile!0 jz!42 q!70 lt!1905 jz!42 lt!1901))))

(declare-fun b!2761 () Bool)

(declare-fun Unit!209 () Unit!206)

(assert (=> b!2761 (= e!1402 (tuple4!97 Unit!209 lt!1905 jz!42 lt!1901))))

(declare-fun lt!1900 () (_ BitVec 32))

(declare-fun b!2762 () Bool)

(declare-datatypes ((tuple4!98 0))(
  ( (tuple4!99 (_1!96 Unit!206) (_2!96 (_ BitVec 32)) (_3!84 array!168) (_4!49 (_ BitVec 32))) )
))
(declare-fun lt!1904 () tuple4!98)

(declare-fun Unit!210 () Unit!206)

(assert (=> b!2762 (= e!1407 (tuple3!69 Unit!210 (array!169 (store (arr!75 (_3!84 lt!1904)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!49 lt!1904) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!1900) (bvsub #b00000000111111111111111111111111 lt!1900))) (size!75 (_3!84 lt!1904))) (_4!49 lt!1904)))))

(declare-fun lt!1903 () (_ BitVec 32))

(assert (=> b!2762 (= lt!1903 #b00000000000000000000000000000000)))

(declare-fun c!488 () Bool)

(assert (=> b!2762 (= c!488 (bvslt lt!1903 (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun e!1406 () tuple4!98)

(assert (=> b!2762 (= lt!1904 e!1406)))

(assert (=> b!2762 (= lt!1900 (select (arr!75 (_3!84 lt!1904)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun res!2198 () Bool)

(declare-fun e!1405 () Bool)

(assert (=> start!767 (=> (not res!2198) (not e!1405))))

(assert (=> start!767 (= res!2198 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!767 e!1405))

(assert (=> start!767 true))

(declare-fun array_inv!34 (array!170) Bool)

(assert (=> start!767 (array_inv!34 q!70)))

(declare-fun b!2763 () Bool)

(declare-fun Unit!211 () Unit!206)

(assert (=> b!2763 (= e!1406 (tuple4!99 Unit!211 lt!1903 (_2!95 lt!1898) lt!1899))))

(declare-fun b!2764 () Bool)

(declare-fun e!1404 () Bool)

(declare-fun e!1408 () Bool)

(assert (=> b!2764 (= e!1404 e!1408)))

(declare-fun res!2199 () Bool)

(assert (=> b!2764 (=> (not res!2199) (not e!1408))))

(assert (=> b!2764 (= res!2199 (bvsle #b00000000000000000000000000000000 (select (arr!75 (_2!94 e!1407)) (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun c!489 () Bool)

(assert (=> b!2764 (= c!489 (bvsge (select (arr!75 (_2!95 lt!1898)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2764 (= lt!1899 #b00000000000000000000000000000000)))

(declare-fun b!2765 () Bool)

(declare-fun res!2201 () Bool)

(assert (=> b!2765 (=> (not res!2201) (not e!1405))))

(declare-fun qInv!0 (array!170) Bool)

(assert (=> b!2765 (= res!2201 (qInv!0 q!70))))

(declare-fun b!2766 () Bool)

(assert (=> b!2766 (= e!1408 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!2767 () Bool)

(assert (=> b!2767 (= e!1405 e!1404)))

(declare-fun res!2200 () Bool)

(assert (=> b!2767 (=> (not res!2200) (not e!1404))))

(declare-fun lt!1902 () (_ FloatingPoint 11 53))

(assert (=> b!2767 (= res!2200 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1902) (fp.lt lt!1902 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2767 (= lt!1902 (fp.sub roundNearestTiesToEven (_4!48 lt!1898) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!48 lt!1898) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!48 lt!1898) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!48 lt!1898) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!48 lt!1898) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2767 (= lt!1898 e!1402)))

(declare-fun c!487 () Bool)

(assert (=> b!2767 (= c!487 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2767 (= lt!1901 (select (arr!76 q!70) jz!42))))

(assert (=> b!2767 (= lt!1905 (array!169 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2768 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!170 (_ BitVec 32) array!168 (_ BitVec 32)) tuple4!98)

(assert (=> b!2768 (= e!1406 (computeModuloWhile!1 jz!42 q!70 lt!1903 (_2!95 lt!1898) lt!1899))))

(assert (= (and start!767 res!2198) b!2765))

(assert (= (and b!2765 res!2201) b!2767))

(assert (= (and b!2767 c!487) b!2760))

(assert (= (and b!2767 (not c!487)) b!2761))

(assert (= (and b!2767 res!2200) b!2764))

(assert (= (and b!2764 c!489) b!2762))

(assert (= (and b!2764 (not c!489)) b!2759))

(assert (= (and b!2762 c!488) b!2768))

(assert (= (and b!2762 (not c!488)) b!2763))

(assert (= (and b!2764 res!2199) b!2766))

(declare-fun m!4143 () Bool)

(assert (=> b!2762 m!4143))

(declare-fun m!4145 () Bool)

(assert (=> b!2762 m!4145))

(declare-fun m!4147 () Bool)

(assert (=> b!2764 m!4147))

(declare-fun m!4149 () Bool)

(assert (=> b!2764 m!4149))

(declare-fun m!4151 () Bool)

(assert (=> start!767 m!4151))

(declare-fun m!4153 () Bool)

(assert (=> b!2767 m!4153))

(declare-fun m!4155 () Bool)

(assert (=> b!2768 m!4155))

(declare-fun m!4157 () Bool)

(assert (=> b!2765 m!4157))

(declare-fun m!4159 () Bool)

(assert (=> b!2760 m!4159))

(check-sat (not b!2760) (not b!2765) (not b!2768) (not start!767))
(check-sat)
