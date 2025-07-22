; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!721 () Bool)

(assert start!721)

(declare-fun b!2472 () Bool)

(declare-fun e!1207 () Bool)

(declare-datatypes ((Unit!168 0))(
  ( (Unit!169) )
))
(declare-datatypes ((array!140 0))(
  ( (array!141 (arr!63 (Array (_ BitVec 32) (_ BitVec 32))) (size!63 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!72 0))(
  ( (tuple4!73 (_1!80 Unit!168) (_2!80 (_ BitVec 32)) (_3!68 array!140) (_4!36 (_ BitVec 32))) )
))
(declare-fun lt!1597 () tuple4!72)

(declare-fun lt!1591 () (_ BitVec 32))

(assert (=> b!2472 (= e!1207 (and (= (_4!36 lt!1597) #b00000000000000000000000000000000) (not (= #b00000000000000000000000000000000 (bvand lt!1591 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000001000000000000000000000000 lt!1591) #b10000000000000000000000000000000)))))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2472 (= lt!1591 (select (arr!63 (_3!68 lt!1597)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun e!1208 () tuple4!72)

(assert (=> b!2472 (= lt!1597 e!1208)))

(declare-fun c!409 () Bool)

(declare-fun lt!1595 () (_ BitVec 32))

(assert (=> b!2472 (= c!409 (bvslt lt!1595 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2472 (= lt!1595 #b00000000000000000000000000000000)))

(declare-fun b!2473 () Bool)

(declare-fun res!2067 () Bool)

(declare-fun e!1212 () Bool)

(assert (=> b!2473 (=> (not res!2067) (not e!1212))))

(declare-datatypes ((array!142 0))(
  ( (array!143 (arr!64 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!64 (_ BitVec 32))) )
))
(declare-fun q!70 () array!142)

(declare-fun qInv!0 (array!142) Bool)

(assert (=> b!2473 (= res!2067 (qInv!0 q!70))))

(declare-datatypes ((tuple4!74 0))(
  ( (tuple4!75 (_1!81 Unit!168) (_2!81 array!140) (_3!69 (_ BitVec 32)) (_4!37 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1593 () tuple4!74)

(declare-fun lt!1592 () (_ BitVec 32))

(declare-fun b!2474 () Bool)

(declare-fun Unit!170 () Unit!168)

(assert (=> b!2474 (= e!1208 (tuple4!73 Unit!170 lt!1595 (_2!81 lt!1593) lt!1592))))

(declare-fun lt!1596 () array!140)

(declare-fun e!1211 () tuple4!74)

(declare-fun b!2475 () Bool)

(declare-fun lt!1594 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!142 array!140 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!74)

(assert (=> b!2475 (= e!1211 (computeModuloWhile!0 jz!42 q!70 lt!1596 jz!42 lt!1594))))

(declare-fun b!2476 () Bool)

(declare-fun Unit!171 () Unit!168)

(assert (=> b!2476 (= e!1211 (tuple4!75 Unit!171 lt!1596 jz!42 lt!1594))))

(declare-fun b!2477 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!142 (_ BitVec 32) array!140 (_ BitVec 32)) tuple4!72)

(assert (=> b!2477 (= e!1208 (computeModuloWhile!1 jz!42 q!70 lt!1595 (_2!81 lt!1593) lt!1592))))

(declare-fun b!2478 () Bool)

(declare-fun e!1209 () Bool)

(assert (=> b!2478 (= e!1209 e!1207)))

(declare-fun res!2069 () Bool)

(assert (=> b!2478 (=> (not res!2069) (not e!1207))))

(assert (=> b!2478 (= res!2069 (bvsge (select (arr!63 (_2!81 lt!1593)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2478 (= lt!1592 #b00000000000000000000000000000000)))

(declare-fun b!2479 () Bool)

(assert (=> b!2479 (= e!1212 e!1209)))

(declare-fun res!2070 () Bool)

(assert (=> b!2479 (=> (not res!2070) (not e!1209))))

(declare-fun lt!1590 () (_ FloatingPoint 11 53))

(assert (=> b!2479 (= res!2070 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1590) (fp.lt lt!1590 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2479 (= lt!1590 (fp.sub roundNearestTiesToEven (_4!37 lt!1593) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!37 lt!1593) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!37 lt!1593) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!37 lt!1593) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!37 lt!1593) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2479 (= lt!1593 e!1211)))

(declare-fun c!410 () Bool)

(assert (=> b!2479 (= c!410 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2479 (= lt!1594 (select (arr!64 q!70) jz!42))))

(assert (=> b!2479 (= lt!1596 (array!141 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!2068 () Bool)

(assert (=> start!721 (=> (not res!2068) (not e!1212))))

(assert (=> start!721 (= res!2068 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!721 e!1212))

(assert (=> start!721 true))

(declare-fun array_inv!28 (array!142) Bool)

(assert (=> start!721 (array_inv!28 q!70)))

(assert (= (and start!721 res!2068) b!2473))

(assert (= (and b!2473 res!2067) b!2479))

(assert (= (and b!2479 c!410) b!2475))

(assert (= (and b!2479 (not c!410)) b!2476))

(assert (= (and b!2479 res!2070) b!2478))

(assert (= (and b!2478 res!2069) b!2472))

(assert (= (and b!2472 c!409) b!2477))

(assert (= (and b!2472 (not c!409)) b!2474))

(declare-fun m!4583 () Bool)

(assert (=> b!2479 m!4583))

(declare-fun m!4585 () Bool)

(assert (=> b!2475 m!4585))

(declare-fun m!4587 () Bool)

(assert (=> start!721 m!4587))

(declare-fun m!4589 () Bool)

(assert (=> b!2478 m!4589))

(declare-fun m!4591 () Bool)

(assert (=> b!2477 m!4591))

(declare-fun m!4593 () Bool)

(assert (=> b!2473 m!4593))

(declare-fun m!4595 () Bool)

(assert (=> b!2472 m!4595))

(push 1)

(assert (not b!2477))

(assert (not b!2475))

(assert (not start!721))

(assert (not b!2473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!1620 () array!140)

(declare-fun b!2500 () Bool)

(declare-fun e!1223 () tuple4!74)

(declare-fun lt!1623 () (_ FloatingPoint 11 53))

(declare-fun Unit!172 () Unit!168)

(assert (=> b!2500 (= e!1223 (tuple4!75 Unit!172 lt!1620 jz!42 lt!1623))))

(declare-fun lt!1617 () array!140)

(declare-fun b!2501 () Bool)

(declare-fun lt!1616 () (_ BitVec 32))

(declare-fun lt!1622 () (_ BitVec 32))

(declare-fun e!1224 () tuple4!72)

(assert (=> b!2501 (= e!1224 (computeModuloWhile!1 jz!42 q!70 lt!1616 lt!1617 lt!1622))))

(declare-fun b!2502 () Bool)

(declare-fun res!2087 () Bool)

(declare-fun e!1221 () Bool)

(assert (=> b!2502 (=> (not res!2087) (not e!1221))))

(declare-fun lt!1621 () tuple4!72)

(assert (=> b!2502 (= res!2087 (or (= (_4!36 lt!1621) #b00000000000000000000000000000000) (= (_4!36 lt!1621) #b00000000000000000000000000000001)))))

(declare-fun b!2503 () Bool)

(assert (=> b!2503 (= e!1221 (bvsge (_2!80 lt!1621) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2503 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2504 () Bool)

(assert (=> b!2504 (= e!1223 (computeModuloWhile!0 jz!42 q!70 lt!1620 jz!42 lt!1623))))

(declare-fun b!2505 () Bool)

(declare-fun res!2083 () Bool)

(assert (=> b!2505 (=> (not res!2083) (not e!1221))))

(declare-fun iqInv!0 (array!140) Bool)

(assert (=> b!2505 (= res!2083 (iqInv!0 (_3!68 lt!1621)))))

(declare-fun b!2506 () Bool)

(declare-fun Unit!173 () Unit!168)

(assert (=> b!2506 (= e!1224 (tuple4!73 Unit!173 lt!1616 lt!1617 lt!1622))))

(declare-fun e!1222 () Bool)

(declare-fun b!2507 () Bool)

(assert (=> b!2507 (= e!1222 (and (bvsge (select (arr!63 (_2!81 lt!1593)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1592 #b00000000000000000000000000000000) (= lt!1592 #b00000000000000000000000000000001)) (bvslt lt!1595 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun d!2113 () Bool)

(assert (=> d!2113 e!1221))

(declare-fun res!2085 () Bool)

(assert (=> d!2113 (=> (not res!2085) (not e!1221))))

(assert (=> d!2113 (= res!2085 (and (or (bvsgt #b00000000000000000000000000000000 (_2!80 lt!1621)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!80 lt!1621)) (bvsle (_2!80 lt!1621) (bvsub jz!42 #b00000000000000000000000000000001))))))

(assert (=> d!2113 (= lt!1621 e!1224)))

(declare-fun c!416 () Bool)

(assert (=> d!2113 (= c!416 (bvslt lt!1616 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!2113 (= lt!1616 (bvadd lt!1595 #b00000000000000000000000000000001))))

(declare-fun lt!1619 () (_ BitVec 32))

(assert (=> d!2113 (= lt!1622 (ite (and (= lt!1592 #b00000000000000000000000000000000) (not (= lt!1619 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1592))))

(assert (=> d!2113 (= lt!1617 (array!141 (store (arr!63 (_2!81 lt!1593)) lt!1595 (ite (= lt!1592 #b00000000000000000000000000000000) (ite (not (= lt!1619 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1619) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1619))) (size!63 (_2!81 lt!1593))))))

(assert (=> d!2113 (= lt!1619 (select (arr!63 (_2!81 lt!1593)) lt!1595))))

(assert (=> d!2113 e!1222))

(declare-fun res!2086 () Bool)

(assert (=> d!2113 (=> (not res!2086) (not e!1222))))

(assert (=> d!2113 (= res!2086 (and (bvsle #b00000000000000000000000000000000 lt!1595) (bvsle lt!1595 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1624 () tuple4!74)

(assert (=> d!2113 (= lt!1624 e!1223)))

(declare-fun c!415 () Bool)

(assert (=> d!2113 (= c!415 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> d!2113 (= lt!1623 (select (arr!64 q!70) jz!42))))

(assert (=> d!2113 (= lt!1620 (array!141 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!2113 (= (computeModuloWhile!1 jz!42 q!70 lt!1595 (_2!81 lt!1593) lt!1592) lt!1621)))

(declare-fun b!2508 () Bool)

(declare-fun res!2088 () Bool)

(assert (=> b!2508 (=> (not res!2088) (not e!1222))))

(assert (=> b!2508 (= res!2088 (iqInv!0 (_2!81 lt!1593)))))

(declare-fun b!2509 () Bool)

(declare-fun res!2084 () Bool)

(assert (=> b!2509 (=> (not res!2084) (not e!1221))))

(declare-fun lt!1618 () (_ BitVec 32))

(assert (=> b!2509 (= res!2084 (bvsge (select (arr!63 (_3!68 lt!1621)) lt!1618) #b00000000100000000000000000000000))))

(assert (=> b!2509 (and (bvsge lt!1618 #b00000000000000000000000000000000) (bvslt lt!1618 (size!63 (_3!68 lt!1621))))))

(assert (=> b!2509 (= lt!1618 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2509 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(assert (= (and d!2113 c!415) b!2504))

(assert (= (and d!2113 (not c!415)) b!2500))

(assert (= (and d!2113 res!2086) b!2508))

(assert (= (and b!2508 res!2088) b!2507))

(assert (= (and d!2113 c!416) b!2501))

(assert (= (and d!2113 (not c!416)) b!2506))

(assert (= (and d!2113 res!2085) b!2505))

(assert (= (and b!2505 res!2083) b!2509))

(assert (= (and b!2509 res!2084) b!2502))

(assert (= (and b!2502 res!2087) b!2503))

(declare-fun m!4597 () Bool)

(assert (=> b!2504 m!4597))

(declare-fun m!4599 () Bool)

(assert (=> d!2113 m!4599))

(declare-fun m!4601 () Bool)

(assert (=> d!2113 m!4601))

(assert (=> d!2113 m!4583))

(declare-fun m!4603 () Bool)

(assert (=> b!2509 m!4603))

(declare-fun m!4605 () Bool)

(assert (=> b!2508 m!4605))

(declare-fun m!4607 () Bool)

(assert (=> b!2505 m!4607))

(assert (=> b!2507 m!4589))

(declare-fun m!4609 () Bool)

(assert (=> b!2501 m!4609))

(assert (=> b!2477 d!2113))

(declare-fun b!2522 () Bool)

(declare-fun e!1232 () Bool)

(declare-fun lt!1637 () tuple4!74)

(assert (=> b!2522 (= e!1232 (bvsle (_3!69 lt!1637) #b00000000000000000000000000000000))))

(declare-fun b!2523 () Bool)

(declare-fun e!1233 () Bool)

(assert (=> b!2523 (= e!1233 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2524 () Bool)

(declare-fun res!2098 () Bool)

(assert (=> b!2524 (=> (not res!2098) (not e!1233))))

(assert (=> b!2524 (= res!2098 (iqInv!0 lt!1596))))

(declare-fun e!1231 () tuple4!74)

(declare-fun b!2525 () Bool)

(declare-fun lt!1636 () array!140)

(declare-fun lt!1638 () (_ BitVec 32))

(declare-fun lt!1639 () (_ FloatingPoint 11 53))

(assert (=> b!2525 (= e!1231 (computeModuloWhile!0 jz!42 q!70 lt!1636 lt!1638 lt!1639))))

(declare-fun d!2115 () Bool)

(assert (=> d!2115 e!1232))

(declare-fun res!2097 () Bool)

(assert (=> d!2115 (=> (not res!2097) (not e!1232))))

(assert (=> d!2115 (= res!2097 (and true true (bvsle #b00000000000000000000000000000000 (_3!69 lt!1637)) (bvsle (_3!69 lt!1637) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!37 lt!1637)) (fp.leq (_4!37 lt!1637) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2115 (= lt!1637 e!1231)))

(declare-fun c!419 () Bool)

(assert (=> d!2115 (= c!419 (bvsgt lt!1638 #b00000000000000000000000000000000))))

(assert (=> d!2115 (= lt!1638 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1635 () (_ FloatingPoint 11 53))

(assert (=> d!2115 (= lt!1639 (fp.add roundNearestTiesToEven (select (arr!64 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1635))))

(assert (=> d!2115 (= lt!1636 (array!141 (store (arr!63 lt!1596) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1594 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1635))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1594 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1635)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1594 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1635)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1594 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1635))))))) (size!63 lt!1596)))))

(assert (=> d!2115 (= lt!1635 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1594)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1594) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1594) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1594)))))))))

(assert (=> d!2115 e!1233))

(declare-fun res!2100 () Bool)

(assert (=> d!2115 (=> (not res!2100) (not e!1233))))

(assert (=> d!2115 (= res!2100 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1594) (fp.leq lt!1594 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2115 (= (computeModuloWhile!0 jz!42 q!70 lt!1596 jz!42 lt!1594) lt!1637)))

(declare-fun b!2526 () Bool)

(declare-fun res!2099 () Bool)

(assert (=> b!2526 (=> (not res!2099) (not e!1232))))

(assert (=> b!2526 (= res!2099 (iqInv!0 (_2!81 lt!1637)))))

(declare-fun b!2527 () Bool)

(declare-fun Unit!174 () Unit!168)

(assert (=> b!2527 (= e!1231 (tuple4!75 Unit!174 lt!1636 lt!1638 lt!1639))))

(assert (= (and d!2115 res!2100) b!2524))

(assert (= (and b!2524 res!2098) b!2523))

(assert (= (and d!2115 c!419) b!2525))

(assert (= (and d!2115 (not c!419)) b!2527))

(assert (= (and d!2115 res!2097) b!2526))

(assert (= (and b!2526 res!2099) b!2522))

(declare-fun m!4611 () Bool)

(assert (=> b!2524 m!4611))

(declare-fun m!4613 () Bool)

(assert (=> b!2525 m!4613))

(declare-fun m!4615 () Bool)

(assert (=> d!2115 m!4615))

(declare-fun m!4617 () Bool)

(assert (=> d!2115 m!4617))

(declare-fun m!4619 () Bool)

(assert (=> b!2526 m!4619))

(assert (=> b!2475 d!2115))

(declare-fun d!2117 () Bool)

(assert (=> d!2117 (= (array_inv!28 q!70) (bvsge (size!64 q!70) #b00000000000000000000000000000000))))

(assert (=> start!721 d!2117))

(declare-fun d!2119 () Bool)

(declare-fun res!2103 () Bool)

(declare-fun e!1236 () Bool)

(assert (=> d!2119 (=> (not res!2103) (not e!1236))))

(assert (=> d!2119 (= res!2103 (= (size!64 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2119 (= (qInv!0 q!70) e!1236)))

(declare-fun b!2530 () Bool)

(declare-fun lambda!100 () Int)

(declare-fun all20!0 (array!142 Int) Bool)

(assert (=> b!2530 (= e!1236 (all20!0 q!70 lambda!100))))

(assert (= (and d!2119 res!2103) b!2530))

(declare-fun m!4621 () Bool)

(assert (=> b!2530 m!4621))

(assert (=> b!2473 d!2119))

(push 1)

(assert (not b!2530))

(assert (not b!2525))

(assert (not b!2508))

(assert (not b!2504))

(assert (not b!2524))

(assert (not b!2526))

(assert (not b!2501))

(assert (not b!2505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

