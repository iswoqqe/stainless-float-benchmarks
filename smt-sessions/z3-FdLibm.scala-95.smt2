; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!783 () Bool)

(assert start!783)

(declare-fun res!2327 () Bool)

(declare-fun e!1487 () Bool)

(assert (=> start!783 (=> (not res!2327) (not e!1487))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!783 (= res!2327 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!783 e!1487))

(assert (=> start!783 true))

(declare-datatypes ((array!177 0))(
  ( (array!178 (arr!79 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!79 (_ BitVec 32))) )
))
(declare-fun q!70 () array!177)

(declare-fun array_inv!36 (array!177) Bool)

(assert (=> start!783 (array_inv!36 q!70)))

(declare-fun b!2950 () Bool)

(declare-fun e!1486 () Bool)

(assert (=> b!2950 (= e!1487 e!1486)))

(declare-fun res!2329 () Bool)

(assert (=> b!2950 (=> (not res!2329) (not e!1486))))

(declare-fun lt!2014 () (_ FloatingPoint 11 53))

(assert (=> b!2950 (= res!2329 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2014) (fp.lt lt!2014 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!225 0))(
  ( (Unit!226) )
))
(declare-datatypes ((array!179 0))(
  ( (array!180 (arr!80 (Array (_ BitVec 32) (_ BitVec 32))) (size!80 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!104 0))(
  ( (tuple4!105 (_1!100 Unit!225) (_2!100 array!179) (_3!88 (_ BitVec 32)) (_4!52 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2015 () tuple4!104)

(assert (=> b!2950 (= lt!2014 (fp.sub roundNearestTiesToEven (_4!52 lt!2015) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!52 lt!2015) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!52 lt!2015) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!52 lt!2015) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!52 lt!2015) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1482 () tuple4!104)

(assert (=> b!2950 (= lt!2015 e!1482)))

(declare-fun c!519 () Bool)

(assert (=> b!2950 (= c!519 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!2017 () (_ FloatingPoint 11 53))

(assert (=> b!2950 (= lt!2017 (select (arr!79 q!70) jz!42))))

(declare-fun lt!2021 () array!179)

(assert (=> b!2950 (= lt!2021 (array!180 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2951 () Bool)

(declare-datatypes ((tuple3!72 0))(
  ( (tuple3!73 (_1!101 Unit!225) (_2!101 array!179) (_3!89 (_ BitVec 32))) )
))
(declare-fun lt!2020 () tuple3!72)

(declare-fun lt!2022 () Bool)

(assert (=> b!2951 (= e!1486 (and (bvsle #b00000000000000000000000000000000 (select (arr!80 (_2!101 lt!2020)) (bvsub jz!42 #b00000000000000000000000000000001))) (bvsle (select (arr!80 (_2!101 lt!2020)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) lt!2022 (= (_3!89 lt!2020) #b00000000000000000000000000000000) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun e!1485 () tuple3!72)

(assert (=> b!2951 (= lt!2020 e!1485)))

(declare-fun c!520 () Bool)

(assert (=> b!2951 (= c!520 lt!2022)))

(declare-fun lt!2019 () (_ BitVec 32))

(assert (=> b!2951 (= lt!2019 #b00000000000000000000000000000000)))

(assert (=> b!2951 (= lt!2022 (bvsge (select (arr!80 (_2!100 lt!2015)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun b!2952 () Bool)

(declare-fun res!2328 () Bool)

(assert (=> b!2952 (=> (not res!2328) (not e!1487))))

(declare-fun qInv!0 (array!177) Bool)

(assert (=> b!2952 (= res!2328 (qInv!0 q!70))))

(declare-fun b!2953 () Bool)

(declare-fun lt!2016 () (_ BitVec 32))

(declare-datatypes ((tuple4!106 0))(
  ( (tuple4!107 (_1!102 Unit!225) (_2!102 (_ BitVec 32)) (_3!90 array!179) (_4!53 (_ BitVec 32))) )
))
(declare-fun e!1484 () tuple4!106)

(declare-fun Unit!227 () Unit!225)

(assert (=> b!2953 (= e!1484 (tuple4!107 Unit!227 lt!2016 (_2!100 lt!2015) lt!2019))))

(declare-fun b!2954 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!177 (_ BitVec 32) array!179 (_ BitVec 32)) tuple4!106)

(assert (=> b!2954 (= e!1484 (computeModuloWhile!1 jz!42 q!70 lt!2016 (_2!100 lt!2015) lt!2019))))

(declare-fun b!2955 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!177 array!179 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!104)

(assert (=> b!2955 (= e!1482 (computeModuloWhile!0 jz!42 q!70 lt!2021 jz!42 lt!2017))))

(declare-fun b!2956 () Bool)

(declare-fun Unit!228 () Unit!225)

(assert (=> b!2956 (= e!1485 (tuple3!73 Unit!228 (_2!100 lt!2015) lt!2019))))

(declare-fun b!2957 () Bool)

(declare-fun lt!2023 () tuple4!106)

(declare-fun lt!2018 () (_ BitVec 32))

(declare-fun Unit!229 () Unit!225)

(assert (=> b!2957 (= e!1485 (tuple3!73 Unit!229 (array!180 (store (arr!80 (_3!90 lt!2023)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!53 lt!2023) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!2018) (bvsub #b00000000111111111111111111111111 lt!2018))) (size!80 (_3!90 lt!2023))) (_4!53 lt!2023)))))

(assert (=> b!2957 (= lt!2016 #b00000000000000000000000000000000)))

(declare-fun c!518 () Bool)

(assert (=> b!2957 (= c!518 (bvslt lt!2016 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2957 (= lt!2023 e!1484)))

(assert (=> b!2957 (= lt!2018 (select (arr!80 (_3!90 lt!2023)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!2958 () Bool)

(declare-fun Unit!230 () Unit!225)

(assert (=> b!2958 (= e!1482 (tuple4!105 Unit!230 lt!2021 jz!42 lt!2017))))

(assert (= (and start!783 res!2327) b!2952))

(assert (= (and b!2952 res!2328) b!2950))

(assert (= (and b!2950 c!519) b!2955))

(assert (= (and b!2950 (not c!519)) b!2958))

(assert (= (and b!2950 res!2329) b!2951))

(assert (= (and b!2951 c!520) b!2957))

(assert (= (and b!2951 (not c!520)) b!2956))

(assert (= (and b!2957 c!518) b!2954))

(assert (= (and b!2957 (not c!518)) b!2953))

(declare-fun m!4367 () Bool)

(assert (=> b!2954 m!4367))

(declare-fun m!4369 () Bool)

(assert (=> b!2952 m!4369))

(declare-fun m!4371 () Bool)

(assert (=> start!783 m!4371))

(declare-fun m!4373 () Bool)

(assert (=> b!2951 m!4373))

(declare-fun m!4375 () Bool)

(assert (=> b!2951 m!4375))

(declare-fun m!4377 () Bool)

(assert (=> b!2955 m!4377))

(declare-fun m!4379 () Bool)

(assert (=> b!2950 m!4379))

(declare-fun m!4381 () Bool)

(assert (=> b!2957 m!4381))

(declare-fun m!4383 () Bool)

(assert (=> b!2957 m!4383))

(check-sat (not b!2955) (not start!783) (not b!2952) (not b!2954))
(check-sat)
