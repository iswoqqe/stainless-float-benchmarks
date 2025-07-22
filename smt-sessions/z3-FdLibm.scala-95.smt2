; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!775 () Bool)

(assert start!775)

(declare-fun b!2583 () Bool)

(declare-datatypes ((Unit!210 0))(
  ( (Unit!211) )
))
(declare-datatypes ((array!177 0))(
  ( (array!178 (arr!79 (Array (_ BitVec 32) (_ BitVec 32))) (size!79 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!72 0))(
  ( (tuple3!73 (_1!100 Unit!210) (_2!100 array!177) (_3!88 (_ BitVec 32))) )
))
(declare-fun e!1416 () tuple3!72)

(declare-datatypes ((tuple4!104 0))(
  ( (tuple4!105 (_1!101 Unit!210) (_2!101 array!177) (_3!89 (_ BitVec 32)) (_4!52 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1943 () tuple4!104)

(declare-fun lt!1947 () (_ BitVec 32))

(declare-fun Unit!212 () Unit!210)

(assert (=> b!2583 (= e!1416 (tuple3!73 Unit!212 (_2!101 lt!1943) lt!1947))))

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((tuple4!106 0))(
  ( (tuple4!107 (_1!102 Unit!210) (_2!102 (_ BitVec 32)) (_3!90 array!177) (_4!53 (_ BitVec 32))) )
))
(declare-fun e!1412 () tuple4!106)

(declare-datatypes ((array!179 0))(
  ( (array!180 (arr!80 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!80 (_ BitVec 32))) )
))
(declare-fun q!70 () array!179)

(declare-fun b!2584 () Bool)

(declare-fun lt!1950 () (_ BitVec 32))

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!179 (_ BitVec 32) array!177 (_ BitVec 32)) tuple4!106)

(assert (=> b!2584 (= e!1412 (computeModuloWhile!1 jz!42 q!70 lt!1950 (_2!101 lt!1943) lt!1947))))

(declare-fun e!1415 () tuple4!104)

(declare-fun lt!1942 () array!177)

(declare-fun b!2585 () Bool)

(declare-fun lt!1946 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!179 array!177 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!104)

(assert (=> b!2585 (= e!1415 (computeModuloWhile!0 jz!42 q!70 lt!1942 jz!42 lt!1946))))

(declare-fun b!2586 () Bool)

(declare-fun Unit!213 () Unit!210)

(assert (=> b!2586 (= e!1415 (tuple4!105 Unit!213 lt!1942 jz!42 lt!1946))))

(declare-fun lt!1945 () (_ BitVec 32))

(declare-fun b!2587 () Bool)

(declare-fun lt!1951 () tuple4!106)

(declare-fun Unit!214 () Unit!210)

(assert (=> b!2587 (= e!1416 (tuple3!73 Unit!214 (array!178 (store (arr!79 (_3!90 lt!1951)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!53 lt!1951) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!1945) (bvsub #b00000000111111111111111111111111 lt!1945))) (size!79 (_3!90 lt!1951))) (_4!53 lt!1951)))))

(assert (=> b!2587 (= lt!1950 #b00000000000000000000000000000000)))

(declare-fun c!503 () Bool)

(assert (=> b!2587 (= c!503 (bvslt lt!1950 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2587 (= lt!1951 e!1412)))

(assert (=> b!2587 (= lt!1945 (select (arr!79 (_3!90 lt!1951)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!2588 () Bool)

(declare-fun res!1990 () Bool)

(declare-fun e!1414 () Bool)

(assert (=> b!2588 (=> (not res!1990) (not e!1414))))

(declare-fun qInv!0 (array!179) Bool)

(assert (=> b!2588 (= res!1990 (qInv!0 q!70))))

(declare-fun b!2582 () Bool)

(declare-fun e!1411 () Bool)

(assert (=> b!2582 (= e!1414 e!1411)))

(declare-fun res!1991 () Bool)

(assert (=> b!2582 (=> (not res!1991) (not e!1411))))

(declare-fun lt!1948 () (_ FloatingPoint 11 53))

(assert (=> b!2582 (= res!1991 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1948) (fp.lt lt!1948 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2582 (= lt!1948 (fp.sub roundNearestTiesToEven (_4!52 lt!1943) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!52 lt!1943) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!52 lt!1943) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!52 lt!1943) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!52 lt!1943) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2582 (= lt!1943 e!1415)))

(declare-fun c!505 () Bool)

(assert (=> b!2582 (= c!505 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2582 (= lt!1946 (select (arr!80 q!70) jz!42))))

(assert (=> b!2582 (= lt!1942 (array!178 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1989 () Bool)

(assert (=> start!775 (=> (not res!1989) (not e!1414))))

(assert (=> start!775 (= res!1989 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!775 e!1414))

(assert (=> start!775 true))

(declare-fun array_inv!36 (array!179) Bool)

(assert (=> start!775 (array_inv!36 q!70)))

(declare-fun b!2589 () Bool)

(declare-fun lt!1944 () Bool)

(declare-fun lt!1949 () tuple3!72)

(assert (=> b!2589 (= e!1411 (and (bvsle #b00000000000000000000000000000000 (select (arr!79 (_2!100 lt!1949)) (bvsub jz!42 #b00000000000000000000000000000001))) (bvsle (select (arr!79 (_2!100 lt!1949)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) lt!1944 (= (_3!88 lt!1949) #b00000000000000000000000000000000) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!2589 (= lt!1949 e!1416)))

(declare-fun c!504 () Bool)

(assert (=> b!2589 (= c!504 lt!1944)))

(assert (=> b!2589 (= lt!1947 #b00000000000000000000000000000000)))

(assert (=> b!2589 (= lt!1944 (bvsge (select (arr!79 (_2!101 lt!1943)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun b!2590 () Bool)

(declare-fun Unit!215 () Unit!210)

(assert (=> b!2590 (= e!1412 (tuple4!107 Unit!215 lt!1950 (_2!101 lt!1943) lt!1947))))

(assert (= (and start!775 res!1989) b!2588))

(assert (= (and b!2588 res!1990) b!2582))

(assert (= (and b!2582 c!505) b!2585))

(assert (= (and b!2582 (not c!505)) b!2586))

(assert (= (and b!2582 res!1991) b!2589))

(assert (= (and b!2589 c!504) b!2587))

(assert (= (and b!2589 (not c!504)) b!2583))

(assert (= (and b!2587 c!503) b!2584))

(assert (= (and b!2587 (not c!503)) b!2590))

(declare-fun m!2759 () Bool)

(assert (=> b!2588 m!2759))

(declare-fun m!2761 () Bool)

(assert (=> b!2584 m!2761))

(declare-fun m!2763 () Bool)

(assert (=> b!2585 m!2763))

(declare-fun m!2765 () Bool)

(assert (=> b!2589 m!2765))

(declare-fun m!2767 () Bool)

(assert (=> b!2589 m!2767))

(declare-fun m!2769 () Bool)

(assert (=> start!775 m!2769))

(declare-fun m!2771 () Bool)

(assert (=> b!2582 m!2771))

(declare-fun m!2773 () Bool)

(assert (=> b!2587 m!2773))

(declare-fun m!2775 () Bool)

(assert (=> b!2587 m!2775))

(check-sat (not start!775) (not b!2588) (not b!2585) (not b!2584))
(check-sat)
