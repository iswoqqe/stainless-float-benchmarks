; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699 () Bool)

(assert start!699)

(declare-datatypes ((array!131 0))(
  ( (array!132 (arr!59 (Array (_ BitVec 32) (_ BitVec 32))) (size!59 (_ BitVec 32))) )
))
(declare-fun lt!1402 () array!131)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!133 0))(
  ( (array!134 (arr!60 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!60 (_ BitVec 32))) )
))
(declare-fun q!70 () array!133)

(declare-fun lt!1405 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!136 0))(
  ( (Unit!137) )
))
(declare-datatypes ((tuple4!64 0))(
  ( (tuple4!65 (_1!76 Unit!136) (_2!76 array!131) (_3!64 (_ BitVec 32)) (_4!32 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1049 () tuple4!64)

(declare-fun b!1849 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!133 array!131 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!64)

(assert (=> b!1849 (= e!1049 (computeModuloWhile!0 jz!42 q!70 lt!1402 jz!42 lt!1405))))

(declare-fun b!1850 () Bool)

(declare-fun res!1530 () Bool)

(declare-fun e!1050 () Bool)

(assert (=> b!1850 (=> (not res!1530) (not e!1050))))

(declare-fun qInv!0 (array!133) Bool)

(assert (=> b!1850 (= res!1530 (qInv!0 q!70))))

(declare-fun b!1851 () Bool)

(declare-fun Unit!138 () Unit!136)

(assert (=> b!1851 (= e!1049 (tuple4!65 Unit!138 lt!1402 jz!42 lt!1405))))

(declare-fun lt!1400 () (_ BitVec 32))

(declare-fun lt!1404 () (_ BitVec 32))

(declare-fun b!1852 () Bool)

(declare-fun lt!1406 () tuple4!64)

(declare-datatypes ((tuple4!66 0))(
  ( (tuple4!67 (_1!77 Unit!136) (_2!77 (_ BitVec 32)) (_3!65 array!131) (_4!33 (_ BitVec 32))) )
))
(declare-fun e!1048 () tuple4!66)

(declare-fun Unit!139 () Unit!136)

(assert (=> b!1852 (= e!1048 (tuple4!67 Unit!139 lt!1400 (_2!76 lt!1406) lt!1404))))

(declare-fun b!1853 () Bool)

(declare-fun e!1046 () Bool)

(assert (=> b!1853 (= e!1050 e!1046)))

(declare-fun res!1529 () Bool)

(assert (=> b!1853 (=> (not res!1529) (not e!1046))))

(declare-fun lt!1403 () (_ FloatingPoint 11 53))

(assert (=> b!1853 (= res!1529 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1403) (fp.lt lt!1403 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1853 (= lt!1403 (fp.sub roundNearestTiesToEven (_4!32 lt!1406) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!32 lt!1406) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!32 lt!1406) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!32 lt!1406) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!32 lt!1406) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1853 (= lt!1406 e!1049)))

(declare-fun c!368 () Bool)

(assert (=> b!1853 (= c!368 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1853 (= lt!1405 (select (arr!60 q!70) jz!42))))

(assert (=> b!1853 (= lt!1402 (array!132 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1854 () Bool)

(declare-fun e!1051 () Bool)

(assert (=> b!1854 (= e!1051 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1401 () tuple4!66)

(assert (=> b!1854 (= lt!1401 e!1048)))

(declare-fun c!367 () Bool)

(assert (=> b!1854 (= c!367 (bvslt lt!1400 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!1854 (= lt!1400 #b00000000000000000000000000000000)))

(declare-fun b!1855 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!133 (_ BitVec 32) array!131 (_ BitVec 32)) tuple4!66)

(assert (=> b!1855 (= e!1048 (computeModuloWhile!1 jz!42 q!70 lt!1400 (_2!76 lt!1406) lt!1404))))

(declare-fun res!1528 () Bool)

(assert (=> start!699 (=> (not res!1528) (not e!1050))))

(assert (=> start!699 (= res!1528 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!699 e!1050))

(assert (=> start!699 true))

(declare-fun array_inv!26 (array!133) Bool)

(assert (=> start!699 (array_inv!26 q!70)))

(declare-fun b!1856 () Bool)

(assert (=> b!1856 (= e!1046 e!1051)))

(declare-fun res!1531 () Bool)

(assert (=> b!1856 (=> (not res!1531) (not e!1051))))

(assert (=> b!1856 (= res!1531 (bvsge (select (arr!59 (_2!76 lt!1406)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!1856 (= lt!1404 #b00000000000000000000000000000000)))

(assert (= (and start!699 res!1528) b!1850))

(assert (= (and b!1850 res!1530) b!1853))

(assert (= (and b!1853 c!368) b!1849))

(assert (= (and b!1853 (not c!368)) b!1851))

(assert (= (and b!1853 res!1529) b!1856))

(assert (= (and b!1856 res!1531) b!1854))

(assert (= (and b!1854 c!367) b!1855))

(assert (= (and b!1854 (not c!367)) b!1852))

(declare-fun m!2135 () Bool)

(assert (=> b!1850 m!2135))

(declare-fun m!2137 () Bool)

(assert (=> b!1855 m!2137))

(declare-fun m!2139 () Bool)

(assert (=> b!1849 m!2139))

(declare-fun m!2141 () Bool)

(assert (=> start!699 m!2141))

(declare-fun m!2143 () Bool)

(assert (=> b!1853 m!2143))

(declare-fun m!2145 () Bool)

(assert (=> b!1856 m!2145))

(check-sat (not b!1849) (not start!699) (not b!1855) (not b!1850))
(check-sat)
