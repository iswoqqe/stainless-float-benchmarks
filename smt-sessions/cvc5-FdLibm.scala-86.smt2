; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!711 () Bool)

(assert start!711)

(declare-fun lt!1525 () (_ BitVec 32))

(declare-fun lt!1526 () (_ BitVec 32))

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun b!2397 () Bool)

(declare-datatypes ((Unit!161 0))(
  ( (Unit!162) )
))
(declare-datatypes ((array!135 0))(
  ( (array!136 (arr!61 (Array (_ BitVec 32) (_ BitVec 32))) (size!61 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!68 0))(
  ( (tuple4!69 (_1!78 Unit!161) (_2!78 (_ BitVec 32)) (_3!66 array!135) (_4!34 (_ BitVec 32))) )
))
(declare-fun e!1167 () tuple4!68)

(declare-datatypes ((tuple4!70 0))(
  ( (tuple4!71 (_1!79 Unit!161) (_2!79 array!135) (_3!67 (_ BitVec 32)) (_4!35 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1524 () tuple4!70)

(declare-datatypes ((array!137 0))(
  ( (array!138 (arr!62 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!62 (_ BitVec 32))) )
))
(declare-fun q!70 () array!137)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!137 (_ BitVec 32) array!135 (_ BitVec 32)) tuple4!68)

(assert (=> b!2397 (= e!1167 (computeModuloWhile!1 jz!42 q!70 lt!1525 (_2!79 lt!1524) lt!1526))))

(declare-fun res!2022 () Bool)

(declare-fun e!1168 () Bool)

(assert (=> start!711 (=> (not res!2022) (not e!1168))))

(assert (=> start!711 (= res!2022 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!711 e!1168))

(assert (=> start!711 true))

(declare-fun array_inv!27 (array!137) Bool)

(assert (=> start!711 (array_inv!27 q!70)))

(declare-fun lt!1529 () (_ FloatingPoint 11 53))

(declare-fun e!1169 () tuple4!70)

(declare-fun b!2398 () Bool)

(declare-fun lt!1527 () array!135)

(declare-fun Unit!163 () Unit!161)

(assert (=> b!2398 (= e!1169 (tuple4!71 Unit!163 lt!1527 jz!42 lt!1529))))

(declare-fun b!2399 () Bool)

(declare-fun e!1166 () Bool)

(declare-fun lt!1530 () (_ BitVec 32))

(declare-fun lt!1528 () tuple4!68)

(assert (=> b!2399 (= e!1166 (or (bvslt lt!1530 #b00000000000000000000000000000000) (bvsge lt!1530 (size!61 (_3!66 lt!1528)))))))

(assert (=> b!2399 (= lt!1530 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2399 (= lt!1528 e!1167)))

(declare-fun c!395 () Bool)

(assert (=> b!2399 (= c!395 (bvslt lt!1525 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2399 (= lt!1525 #b00000000000000000000000000000000)))

(declare-fun b!2400 () Bool)

(declare-fun Unit!164 () Unit!161)

(assert (=> b!2400 (= e!1167 (tuple4!69 Unit!164 lt!1525 (_2!79 lt!1524) lt!1526))))

(declare-fun b!2401 () Bool)

(declare-fun res!2024 () Bool)

(assert (=> b!2401 (=> (not res!2024) (not e!1168))))

(declare-fun qInv!0 (array!137) Bool)

(assert (=> b!2401 (= res!2024 (qInv!0 q!70))))

(declare-fun b!2402 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!137 array!135 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!70)

(assert (=> b!2402 (= e!1169 (computeModuloWhile!0 jz!42 q!70 lt!1527 jz!42 lt!1529))))

(declare-fun b!2403 () Bool)

(declare-fun e!1165 () Bool)

(assert (=> b!2403 (= e!1165 e!1166)))

(declare-fun res!2023 () Bool)

(assert (=> b!2403 (=> (not res!2023) (not e!1166))))

(assert (=> b!2403 (= res!2023 (bvsge (select (arr!61 (_2!79 lt!1524)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2403 (= lt!1526 #b00000000000000000000000000000000)))

(declare-fun b!2404 () Bool)

(assert (=> b!2404 (= e!1168 e!1165)))

(declare-fun res!2025 () Bool)

(assert (=> b!2404 (=> (not res!2025) (not e!1165))))

(declare-fun lt!1531 () (_ FloatingPoint 11 53))

(assert (=> b!2404 (= res!2025 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1531) (fp.lt lt!1531 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2404 (= lt!1531 (fp.sub roundNearestTiesToEven (_4!35 lt!1524) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!35 lt!1524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!35 lt!1524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!35 lt!1524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!35 lt!1524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2404 (= lt!1524 e!1169)))

(declare-fun c!394 () Bool)

(assert (=> b!2404 (= c!394 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2404 (= lt!1529 (select (arr!62 q!70) jz!42))))

(assert (=> b!2404 (= lt!1527 (array!136 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!711 res!2022) b!2401))

(assert (= (and b!2401 res!2024) b!2404))

(assert (= (and b!2404 c!394) b!2402))

(assert (= (and b!2404 (not c!394)) b!2398))

(assert (= (and b!2404 res!2025) b!2403))

(assert (= (and b!2403 res!2023) b!2399))

(assert (= (and b!2399 c!395) b!2397))

(assert (= (and b!2399 (not c!395)) b!2400))

(declare-fun m!4545 () Bool)

(assert (=> b!2402 m!4545))

(declare-fun m!4547 () Bool)

(assert (=> start!711 m!4547))

(declare-fun m!4549 () Bool)

(assert (=> b!2403 m!4549))

(declare-fun m!4551 () Bool)

(assert (=> b!2397 m!4551))

(declare-fun m!4553 () Bool)

(assert (=> b!2401 m!4553))

(declare-fun m!4555 () Bool)

(assert (=> b!2404 m!4555))

(push 1)

(assert (not b!2401))

(assert (not start!711))

(assert (not b!2402))

(assert (not b!2397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2104 () Bool)

(declare-fun res!2028 () Bool)

(declare-fun e!1173 () Bool)

(assert (=> d!2104 (=> (not res!2028) (not e!1173))))

(assert (=> d!2104 (= res!2028 (= (size!62 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2104 (= (qInv!0 q!70) e!1173)))

(declare-fun b!2407 () Bool)

(declare-fun lambda!97 () Int)

(declare-fun all20!0 (array!137 Int) Bool)

(assert (=> b!2407 (= e!1173 (all20!0 q!70 lambda!97))))

(assert (= (and d!2104 res!2028) b!2407))

(declare-fun m!4557 () Bool)

(assert (=> b!2407 m!4557))

(assert (=> b!2401 d!2104))

(declare-fun d!2106 () Bool)

(assert (=> d!2106 (= (array_inv!27 q!70) (bvsge (size!62 q!70) #b00000000000000000000000000000000))))

(assert (=> start!711 d!2106))

(declare-fun b!2420 () Bool)

(declare-fun e!1180 () Bool)

(declare-fun lt!1542 () tuple4!70)

(assert (=> b!2420 (= e!1180 (bvsle (_3!67 lt!1542) #b00000000000000000000000000000000))))

(declare-fun lt!1545 () array!135)

(declare-fun b!2421 () Bool)

(declare-fun e!1182 () tuple4!70)

(declare-fun lt!1546 () (_ FloatingPoint 11 53))

(declare-fun lt!1544 () (_ BitVec 32))

(declare-fun Unit!165 () Unit!161)

(assert (=> b!2421 (= e!1182 (tuple4!71 Unit!165 lt!1545 lt!1544 lt!1546))))

(declare-fun b!2422 () Bool)

(declare-fun e!1181 () Bool)

(assert (=> b!2422 (= e!1181 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2423 () Bool)

(assert (=> b!2423 (= e!1182 (computeModuloWhile!0 jz!42 q!70 lt!1545 lt!1544 lt!1546))))

(declare-fun d!2108 () Bool)

(assert (=> d!2108 e!1180))

(declare-fun res!2039 () Bool)

(assert (=> d!2108 (=> (not res!2039) (not e!1180))))

(assert (=> d!2108 (= res!2039 (and true true (bvsle #b00000000000000000000000000000000 (_3!67 lt!1542)) (bvsle (_3!67 lt!1542) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!35 lt!1542)) (fp.leq (_4!35 lt!1542) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2108 (= lt!1542 e!1182)))

(declare-fun c!398 () Bool)

(assert (=> d!2108 (= c!398 (bvsgt lt!1544 #b00000000000000000000000000000000))))

(assert (=> d!2108 (= lt!1544 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1543 () (_ FloatingPoint 11 53))

(assert (=> d!2108 (= lt!1546 (fp.add roundNearestTiesToEven (select (arr!62 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1543))))

(assert (=> d!2108 (= lt!1545 (array!136 (store (arr!61 lt!1527) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1529 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1543))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1529 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1543)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1529 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1543)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1529 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1543))))))) (size!61 lt!1527)))))

(assert (=> d!2108 (= lt!1543 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1529)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1529) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1529) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1529)))))))))

(assert (=> d!2108 e!1181))

(declare-fun res!2037 () Bool)

(assert (=> d!2108 (=> (not res!2037) (not e!1181))))

(assert (=> d!2108 (= res!2037 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1529) (fp.leq lt!1529 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2108 (= (computeModuloWhile!0 jz!42 q!70 lt!1527 jz!42 lt!1529) lt!1542)))

(declare-fun b!2424 () Bool)

(declare-fun res!2040 () Bool)

(assert (=> b!2424 (=> (not res!2040) (not e!1181))))

(declare-fun iqInv!0 (array!135) Bool)

(assert (=> b!2424 (= res!2040 (iqInv!0 lt!1527))))

(declare-fun b!2425 () Bool)

(declare-fun res!2038 () Bool)

(assert (=> b!2425 (=> (not res!2038) (not e!1180))))

(assert (=> b!2425 (= res!2038 (iqInv!0 (_2!79 lt!1542)))))

(assert (= (and d!2108 res!2037) b!2424))

(assert (= (and b!2424 res!2040) b!2422))

(assert (= (and d!2108 c!398) b!2423))

(assert (= (and d!2108 (not c!398)) b!2421))

(assert (= (and d!2108 res!2039) b!2425))

(assert (= (and b!2425 res!2038) b!2420))

(declare-fun m!4559 () Bool)

(assert (=> b!2423 m!4559))

(declare-fun m!4561 () Bool)

(assert (=> d!2108 m!4561))

(declare-fun m!4563 () Bool)

(assert (=> d!2108 m!4563))

(declare-fun m!4565 () Bool)

(assert (=> b!2424 m!4565))

(declare-fun m!4567 () Bool)

(assert (=> b!2425 m!4567))

(assert (=> b!2402 d!2108))

(declare-fun b!2446 () Bool)

(declare-fun res!2056 () Bool)

(declare-fun e!1192 () Bool)

(assert (=> b!2446 (=> (not res!2056) (not e!1192))))

(declare-fun lt!1568 () tuple4!68)

(assert (=> b!2446 (= res!2056 (or (= (_4!34 lt!1568) #b00000000000000000000000000000000) (= (_4!34 lt!1568) #b00000000000000000000000000000001)))))

(declare-fun b!2447 () Bool)

(declare-fun res!2054 () Bool)

(assert (=> b!2447 (=> (not res!2054) (not e!1192))))

(assert (=> b!2447 (= res!2054 (iqInv!0 (_3!66 lt!1568)))))

(declare-fun d!2110 () Bool)

(assert (=> d!2110 e!1192))

(declare-fun res!2058 () Bool)

(assert (=> d!2110 (=> (not res!2058) (not e!1192))))

(assert (=> d!2110 (= res!2058 (and (or (bvsgt #b00000000000000000000000000000000 (_2!78 lt!1568)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!78 lt!1568)) (bvsle (_2!78 lt!1568) (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun e!1193 () tuple4!68)

(assert (=> d!2110 (= lt!1568 e!1193)))

(declare-fun c!403 () Bool)

(declare-fun lt!1567 () (_ BitVec 32))

(assert (=> d!2110 (= c!403 (bvslt lt!1567 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!2110 (= lt!1567 (bvadd lt!1525 #b00000000000000000000000000000001))))

(declare-fun lt!1573 () (_ BitVec 32))

(declare-fun lt!1570 () (_ BitVec 32))

(assert (=> d!2110 (= lt!1573 (ite (and (= lt!1526 #b00000000000000000000000000000000) (not (= lt!1570 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1526))))

(declare-fun lt!1565 () array!135)

(assert (=> d!2110 (= lt!1565 (array!136 (store (arr!61 (_2!79 lt!1524)) lt!1525 (ite (= lt!1526 #b00000000000000000000000000000000) (ite (not (= lt!1570 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1570) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1570))) (size!61 (_2!79 lt!1524))))))

(assert (=> d!2110 (= lt!1570 (select (arr!61 (_2!79 lt!1524)) lt!1525))))

(declare-fun e!1194 () Bool)

(assert (=> d!2110 e!1194))

(declare-fun res!2055 () Bool)

(assert (=> d!2110 (=> (not res!2055) (not e!1194))))

(assert (=> d!2110 (= res!2055 (and (bvsle #b00000000000000000000000000000000 lt!1525) (bvsle lt!1525 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1572 () tuple4!70)

(declare-fun e!1191 () tuple4!70)

(assert (=> d!2110 (= lt!1572 e!1191)))

(declare-fun c!404 () Bool)

(assert (=> d!2110 (= c!404 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1571 () (_ FloatingPoint 11 53))

(assert (=> d!2110 (= lt!1571 (select (arr!62 q!70) jz!42))))

(declare-fun lt!1569 () array!135)

(assert (=> d!2110 (= lt!1569 (array!136 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!2110 (= (computeModuloWhile!1 jz!42 q!70 lt!1525 (_2!79 lt!1524) lt!1526) lt!1568)))

(declare-fun b!2448 () Bool)

(assert (=> b!2448 (= e!1194 (and (bvsge (select (arr!61 (_2!79 lt!1524)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1526 #b00000000000000000000000000000000) (= lt!1526 #b00000000000000000000000000000001)) (bvslt lt!1525 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun b!2449 () Bool)

(assert (=> b!2449 (= e!1191 (computeModuloWhile!0 jz!42 q!70 lt!1569 jz!42 lt!1571))))

(declare-fun b!2450 () Bool)

(declare-fun res!2053 () Bool)

(assert (=> b!2450 (=> (not res!2053) (not e!1192))))

(declare-fun lt!1566 () (_ BitVec 32))

(assert (=> b!2450 (= res!2053 (bvsge (select (arr!61 (_3!66 lt!1568)) lt!1566) #b00000000100000000000000000000000))))

(assert (=> b!2450 (and (bvsge lt!1566 #b00000000000000000000000000000000) (bvslt lt!1566 (size!61 (_3!66 lt!1568))))))

(assert (=> b!2450 (= lt!1566 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2450 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2451 () Bool)

(declare-fun Unit!166 () Unit!161)

(assert (=> b!2451 (= e!1193 (tuple4!69 Unit!166 lt!1567 lt!1565 lt!1573))))

(declare-fun b!2452 () Bool)

(assert (=> b!2452 (= e!1193 (computeModuloWhile!1 jz!42 q!70 lt!1567 lt!1565 lt!1573))))

(declare-fun b!2453 () Bool)

(declare-fun Unit!167 () Unit!161)

(assert (=> b!2453 (= e!1191 (tuple4!71 Unit!167 lt!1569 jz!42 lt!1571))))

(declare-fun b!2454 () Bool)

(assert (=> b!2454 (= e!1192 (bvsge (_2!78 lt!1568) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2454 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2455 () Bool)

(declare-fun res!2057 () Bool)

(assert (=> b!2455 (=> (not res!2057) (not e!1194))))

(assert (=> b!2455 (= res!2057 (iqInv!0 (_2!79 lt!1524)))))

(assert (= (and d!2110 c!404) b!2449))

(assert (= (and d!2110 (not c!404)) b!2453))

(assert (= (and d!2110 res!2055) b!2455))

(assert (= (and b!2455 res!2057) b!2448))

(assert (= (and d!2110 c!403) b!2452))

(assert (= (and d!2110 (not c!403)) b!2451))

(assert (= (and d!2110 res!2058) b!2447))

(assert (= (and b!2447 res!2054) b!2450))

(assert (= (and b!2450 res!2053) b!2446))

(assert (= (and b!2446 res!2056) b!2454))

(declare-fun m!4569 () Bool)

(assert (=> b!2449 m!4569))

(declare-fun m!4571 () Bool)

(assert (=> b!2452 m!4571))

(declare-fun m!4573 () Bool)

(assert (=> b!2455 m!4573))

(declare-fun m!4575 () Bool)

(assert (=> b!2450 m!4575))

(declare-fun m!4577 () Bool)

(assert (=> d!2110 m!4577))

(declare-fun m!4579 () Bool)

(assert (=> d!2110 m!4579))

(assert (=> d!2110 m!4555))

(declare-fun m!4581 () Bool)

(assert (=> b!2447 m!4581))

(assert (=> b!2448 m!4549))

(assert (=> b!2397 d!2110))

(push 1)

(assert (not b!2447))

(assert (not b!2424))

(assert (not b!2425))

(assert (not b!2452))

(assert (not b!2407))

(assert (not b!2455))

(assert (not b!2423))

(assert (not b!2449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

