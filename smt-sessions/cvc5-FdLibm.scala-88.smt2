; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!731 () Bool)

(assert start!731)

(declare-fun b!2547 () Bool)

(declare-fun e!1249 () Bool)

(declare-datatypes ((Unit!175 0))(
  ( (Unit!176) )
))
(declare-datatypes ((array!145 0))(
  ( (array!146 (arr!65 (Array (_ BitVec 32) (_ BitVec 32))) (size!65 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!76 0))(
  ( (tuple4!77 (_1!82 Unit!175) (_2!82 (_ BitVec 32)) (_3!70 array!145) (_4!38 (_ BitVec 32))) )
))
(declare-fun lt!1662 () tuple4!76)

(declare-fun lt!1661 () (_ BitVec 32))

(assert (=> b!2547 (= e!1249 (and (not (= (_4!38 lt!1662) #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!1661 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000000111111111111111111111111 lt!1661) #b10000000000000000000000000000000)))))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2547 (= lt!1661 (select (arr!65 (_3!70 lt!1662)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun e!1250 () tuple4!76)

(assert (=> b!2547 (= lt!1662 e!1250)))

(declare-fun c!424 () Bool)

(declare-fun lt!1660 () (_ BitVec 32))

(assert (=> b!2547 (= c!424 (bvslt lt!1660 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2547 (= lt!1660 #b00000000000000000000000000000000)))

(declare-fun b!2548 () Bool)

(declare-fun res!2115 () Bool)

(declare-fun e!1254 () Bool)

(assert (=> b!2548 (=> (not res!2115) (not e!1254))))

(declare-datatypes ((array!147 0))(
  ( (array!148 (arr!66 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!66 (_ BitVec 32))) )
))
(declare-fun q!70 () array!147)

(declare-fun qInv!0 (array!147) Bool)

(assert (=> b!2548 (= res!2115 (qInv!0 q!70))))

(declare-datatypes ((tuple4!78 0))(
  ( (tuple4!79 (_1!83 Unit!175) (_2!83 array!145) (_3!71 (_ BitVec 32)) (_4!39 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1253 () tuple4!78)

(declare-fun lt!1656 () array!145)

(declare-fun lt!1663 () (_ FloatingPoint 11 53))

(declare-fun b!2549 () Bool)

(declare-fun Unit!177 () Unit!175)

(assert (=> b!2549 (= e!1253 (tuple4!79 Unit!177 lt!1656 jz!42 lt!1663))))

(declare-fun b!2550 () Bool)

(declare-fun lt!1658 () tuple4!78)

(declare-fun lt!1659 () (_ BitVec 32))

(declare-fun Unit!178 () Unit!175)

(assert (=> b!2550 (= e!1250 (tuple4!77 Unit!178 lt!1660 (_2!83 lt!1658) lt!1659))))

(declare-fun b!2551 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!147 array!145 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!78)

(assert (=> b!2551 (= e!1253 (computeModuloWhile!0 jz!42 q!70 lt!1656 jz!42 lt!1663))))

(declare-fun b!2552 () Bool)

(declare-fun e!1251 () Bool)

(assert (=> b!2552 (= e!1254 e!1251)))

(declare-fun res!2114 () Bool)

(assert (=> b!2552 (=> (not res!2114) (not e!1251))))

(declare-fun lt!1657 () (_ FloatingPoint 11 53))

(assert (=> b!2552 (= res!2114 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1657) (fp.lt lt!1657 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2552 (= lt!1657 (fp.sub roundNearestTiesToEven (_4!39 lt!1658) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!39 lt!1658) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!39 lt!1658) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!39 lt!1658) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!39 lt!1658) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2552 (= lt!1658 e!1253)))

(declare-fun c!425 () Bool)

(assert (=> b!2552 (= c!425 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2552 (= lt!1663 (select (arr!66 q!70) jz!42))))

(assert (=> b!2552 (= lt!1656 (array!146 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2553 () Bool)

(assert (=> b!2553 (= e!1251 e!1249)))

(declare-fun res!2112 () Bool)

(assert (=> b!2553 (=> (not res!2112) (not e!1249))))

(assert (=> b!2553 (= res!2112 (bvsge (select (arr!65 (_2!83 lt!1658)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2553 (= lt!1659 #b00000000000000000000000000000000)))

(declare-fun res!2113 () Bool)

(assert (=> start!731 (=> (not res!2113) (not e!1254))))

(assert (=> start!731 (= res!2113 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!731 e!1254))

(assert (=> start!731 true))

(declare-fun array_inv!29 (array!147) Bool)

(assert (=> start!731 (array_inv!29 q!70)))

(declare-fun b!2554 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!147 (_ BitVec 32) array!145 (_ BitVec 32)) tuple4!76)

(assert (=> b!2554 (= e!1250 (computeModuloWhile!1 jz!42 q!70 lt!1660 (_2!83 lt!1658) lt!1659))))

(assert (= (and start!731 res!2113) b!2548))

(assert (= (and b!2548 res!2115) b!2552))

(assert (= (and b!2552 c!425) b!2551))

(assert (= (and b!2552 (not c!425)) b!2549))

(assert (= (and b!2552 res!2114) b!2553))

(assert (= (and b!2553 res!2112) b!2547))

(assert (= (and b!2547 c!424) b!2554))

(assert (= (and b!2547 (not c!424)) b!2550))

(declare-fun m!4623 () Bool)

(assert (=> start!731 m!4623))

(declare-fun m!4625 () Bool)

(assert (=> b!2547 m!4625))

(declare-fun m!4627 () Bool)

(assert (=> b!2551 m!4627))

(declare-fun m!4629 () Bool)

(assert (=> b!2554 m!4629))

(declare-fun m!4631 () Bool)

(assert (=> b!2552 m!4631))

(declare-fun m!4633 () Bool)

(assert (=> b!2548 m!4633))

(declare-fun m!4635 () Bool)

(assert (=> b!2553 m!4635))

(push 1)

(assert (not b!2551))

(assert (not start!731))

(assert (not b!2548))

(assert (not b!2554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2567 () Bool)

(declare-fun e!1263 () Bool)

(declare-fun lt!1675 () tuple4!78)

(assert (=> b!2567 (= e!1263 (bvsle (_3!71 lt!1675) #b00000000000000000000000000000000))))

(declare-fun b!2568 () Bool)

(declare-fun res!2127 () Bool)

(declare-fun e!1261 () Bool)

(assert (=> b!2568 (=> (not res!2127) (not e!1261))))

(declare-fun iqInv!0 (array!145) Bool)

(assert (=> b!2568 (= res!2127 (iqInv!0 lt!1656))))

(declare-fun lt!1677 () array!145)

(declare-fun b!2569 () Bool)

(declare-fun lt!1674 () (_ FloatingPoint 11 53))

(declare-fun lt!1676 () (_ BitVec 32))

(declare-fun e!1262 () tuple4!78)

(assert (=> b!2569 (= e!1262 (computeModuloWhile!0 jz!42 q!70 lt!1677 lt!1676 lt!1674))))

(declare-fun b!2570 () Bool)

(assert (=> b!2570 (= e!1261 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun d!2122 () Bool)

(assert (=> d!2122 e!1263))

(declare-fun res!2126 () Bool)

(assert (=> d!2122 (=> (not res!2126) (not e!1263))))

(assert (=> d!2122 (= res!2126 (and true true (bvsle #b00000000000000000000000000000000 (_3!71 lt!1675)) (bvsle (_3!71 lt!1675) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!39 lt!1675)) (fp.leq (_4!39 lt!1675) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2122 (= lt!1675 e!1262)))

(declare-fun c!428 () Bool)

(assert (=> d!2122 (= c!428 (bvsgt lt!1676 #b00000000000000000000000000000000))))

(assert (=> d!2122 (= lt!1676 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1678 () (_ FloatingPoint 11 53))

(assert (=> d!2122 (= lt!1674 (fp.add roundNearestTiesToEven (select (arr!66 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1678))))

(assert (=> d!2122 (= lt!1677 (array!146 (store (arr!65 lt!1656) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1663 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1678))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1663 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1678)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1663 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1678)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1663 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1678))))))) (size!65 lt!1656)))))

(assert (=> d!2122 (= lt!1678 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1663)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1663) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1663) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1663)))))))))

(assert (=> d!2122 e!1261))

(declare-fun res!2124 () Bool)

(assert (=> d!2122 (=> (not res!2124) (not e!1261))))

(assert (=> d!2122 (= res!2124 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1663) (fp.leq lt!1663 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2122 (= (computeModuloWhile!0 jz!42 q!70 lt!1656 jz!42 lt!1663) lt!1675)))

(declare-fun b!2571 () Bool)

(declare-fun res!2125 () Bool)

(assert (=> b!2571 (=> (not res!2125) (not e!1263))))

(assert (=> b!2571 (= res!2125 (iqInv!0 (_2!83 lt!1675)))))

(declare-fun b!2572 () Bool)

(declare-fun Unit!179 () Unit!175)

(assert (=> b!2572 (= e!1262 (tuple4!79 Unit!179 lt!1677 lt!1676 lt!1674))))

(assert (= (and d!2122 res!2124) b!2568))

(assert (= (and b!2568 res!2127) b!2570))

(assert (= (and d!2122 c!428) b!2569))

(assert (= (and d!2122 (not c!428)) b!2572))

(assert (= (and d!2122 res!2126) b!2571))

(assert (= (and b!2571 res!2125) b!2567))

(declare-fun m!4637 () Bool)

(assert (=> b!2568 m!4637))

(declare-fun m!4639 () Bool)

(assert (=> b!2569 m!4639))

(declare-fun m!4641 () Bool)

(assert (=> d!2122 m!4641))

(declare-fun m!4643 () Bool)

(assert (=> d!2122 m!4643))

(declare-fun m!4645 () Bool)

(assert (=> b!2571 m!4645))

(assert (=> b!2551 d!2122))

(declare-fun d!2124 () Bool)

(assert (=> d!2124 (= (array_inv!29 q!70) (bvsge (size!66 q!70) #b00000000000000000000000000000000))))

(assert (=> start!731 d!2124))

(declare-fun d!2126 () Bool)

(declare-fun res!2130 () Bool)

(declare-fun e!1266 () Bool)

(assert (=> d!2126 (=> (not res!2130) (not e!1266))))

(assert (=> d!2126 (= res!2130 (= (size!66 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2126 (= (qInv!0 q!70) e!1266)))

(declare-fun b!2575 () Bool)

(declare-fun lambda!103 () Int)

(declare-fun all20!0 (array!147 Int) Bool)

(assert (=> b!2575 (= e!1266 (all20!0 q!70 lambda!103))))

(assert (= (and d!2126 res!2130) b!2575))

(declare-fun m!4647 () Bool)

(assert (=> b!2575 m!4647))

(assert (=> b!2548 d!2126))

(declare-fun lt!1698 () (_ FloatingPoint 11 53))

(declare-fun e!1278 () tuple4!78)

(declare-fun lt!1704 () array!145)

(declare-fun b!2596 () Bool)

(assert (=> b!2596 (= e!1278 (computeModuloWhile!0 jz!42 q!70 lt!1704 jz!42 lt!1698))))

(declare-fun lt!1705 () array!145)

(declare-fun lt!1697 () (_ BitVec 32))

(declare-fun e!1275 () tuple4!76)

(declare-fun lt!1699 () (_ BitVec 32))

(declare-fun b!2597 () Bool)

(assert (=> b!2597 (= e!1275 (computeModuloWhile!1 jz!42 q!70 lt!1697 lt!1705 lt!1699))))

(declare-fun b!2598 () Bool)

(declare-fun Unit!180 () Unit!175)

(assert (=> b!2598 (= e!1275 (tuple4!77 Unit!180 lt!1697 lt!1705 lt!1699))))

(declare-fun b!2600 () Bool)

(declare-fun res!2145 () Bool)

(declare-fun e!1276 () Bool)

(assert (=> b!2600 (=> (not res!2145) (not e!1276))))

(declare-fun lt!1702 () tuple4!76)

(declare-fun lt!1703 () (_ BitVec 32))

(assert (=> b!2600 (= res!2145 (bvsge (select (arr!65 (_3!70 lt!1702)) lt!1703) #b00000000100000000000000000000000))))

(assert (=> b!2600 (and (bvsge lt!1703 #b00000000000000000000000000000000) (bvslt lt!1703 (size!65 (_3!70 lt!1702))))))

(assert (=> b!2600 (= lt!1703 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2600 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2601 () Bool)

(declare-fun res!2143 () Bool)

(declare-fun e!1277 () Bool)

(assert (=> b!2601 (=> (not res!2143) (not e!1277))))

(assert (=> b!2601 (= res!2143 (iqInv!0 (_2!83 lt!1658)))))

(declare-fun b!2602 () Bool)

(declare-fun Unit!181 () Unit!175)

(assert (=> b!2602 (= e!1278 (tuple4!79 Unit!181 lt!1704 jz!42 lt!1698))))

(declare-fun b!2603 () Bool)

(declare-fun res!2147 () Bool)

(assert (=> b!2603 (=> (not res!2147) (not e!1276))))

(assert (=> b!2603 (= res!2147 (iqInv!0 (_3!70 lt!1702)))))

(declare-fun b!2604 () Bool)

(assert (=> b!2604 (= e!1277 (and (bvsge (select (arr!65 (_2!83 lt!1658)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1659 #b00000000000000000000000000000000) (= lt!1659 #b00000000000000000000000000000001)) (bvslt lt!1660 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun b!2605 () Bool)

(declare-fun res!2144 () Bool)

(assert (=> b!2605 (=> (not res!2144) (not e!1276))))

(assert (=> b!2605 (= res!2144 (or (= (_4!38 lt!1702) #b00000000000000000000000000000000) (= (_4!38 lt!1702) #b00000000000000000000000000000001)))))

(declare-fun d!2128 () Bool)

(assert (=> d!2128 e!1276))

(declare-fun res!2148 () Bool)

(assert (=> d!2128 (=> (not res!2148) (not e!1276))))

(assert (=> d!2128 (= res!2148 (and (or (bvsgt #b00000000000000000000000000000000 (_2!82 lt!1702)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!82 lt!1702)) (bvsle (_2!82 lt!1702) (bvsub jz!42 #b00000000000000000000000000000001))))))

(assert (=> d!2128 (= lt!1702 e!1275)))

(declare-fun c!434 () Bool)

(assert (=> d!2128 (= c!434 (bvslt lt!1697 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!2128 (= lt!1697 (bvadd lt!1660 #b00000000000000000000000000000001))))

(declare-fun lt!1701 () (_ BitVec 32))

(assert (=> d!2128 (= lt!1699 (ite (and (= lt!1659 #b00000000000000000000000000000000) (not (= lt!1701 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1659))))

(assert (=> d!2128 (= lt!1705 (array!146 (store (arr!65 (_2!83 lt!1658)) lt!1660 (ite (= lt!1659 #b00000000000000000000000000000000) (ite (not (= lt!1701 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1701) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1701))) (size!65 (_2!83 lt!1658))))))

(assert (=> d!2128 (= lt!1701 (select (arr!65 (_2!83 lt!1658)) lt!1660))))

(assert (=> d!2128 e!1277))

(declare-fun res!2146 () Bool)

(assert (=> d!2128 (=> (not res!2146) (not e!1277))))

(assert (=> d!2128 (= res!2146 (and (bvsle #b00000000000000000000000000000000 lt!1660) (bvsle lt!1660 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1700 () tuple4!78)

(assert (=> d!2128 (= lt!1700 e!1278)))

(declare-fun c!433 () Bool)

(assert (=> d!2128 (= c!433 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> d!2128 (= lt!1698 (select (arr!66 q!70) jz!42))))

(assert (=> d!2128 (= lt!1704 (array!146 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!2128 (= (computeModuloWhile!1 jz!42 q!70 lt!1660 (_2!83 lt!1658) lt!1659) lt!1702)))

(declare-fun b!2599 () Bool)

(assert (=> b!2599 (= e!1276 (bvsge (_2!82 lt!1702) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2599 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(assert (= (and d!2128 c!433) b!2596))

(assert (= (and d!2128 (not c!433)) b!2602))

(assert (= (and d!2128 res!2146) b!2601))

(assert (= (and b!2601 res!2143) b!2604))

(assert (= (and d!2128 c!434) b!2597))

(assert (= (and d!2128 (not c!434)) b!2598))

(assert (= (and d!2128 res!2148) b!2603))

(assert (= (and b!2603 res!2147) b!2600))

(assert (= (and b!2600 res!2145) b!2605))

(assert (= (and b!2605 res!2144) b!2599))

(declare-fun m!4649 () Bool)

(assert (=> b!2597 m!4649))

(declare-fun m!4651 () Bool)

(assert (=> b!2596 m!4651))

(declare-fun m!4653 () Bool)

(assert (=> b!2601 m!4653))

(declare-fun m!4655 () Bool)

(assert (=> b!2600 m!4655))

(declare-fun m!4657 () Bool)

(assert (=> d!2128 m!4657))

(declare-fun m!4659 () Bool)

(assert (=> d!2128 m!4659))

(assert (=> d!2128 m!4631))

(assert (=> b!2604 m!4635))

(declare-fun m!4661 () Bool)

(assert (=> b!2603 m!4661))

(assert (=> b!2554 d!2128))

(push 1)

(assert (not b!2596))

(assert (not b!2597))

(assert (not b!2603))

(assert (not b!2575))

(assert (not b!2571))

(assert (not b!2568))

(assert (not b!2601))

(assert (not b!2569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

