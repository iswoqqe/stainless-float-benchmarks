; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719 () Bool)

(assert start!719)

(declare-datatypes ((Unit!162 0))(
  ( (Unit!163) )
))
(declare-datatypes ((array!140 0))(
  ( (array!141 (arr!63 (Array (_ BitVec 32) (_ BitVec 32))) (size!63 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!72 0))(
  ( (tuple4!73 (_1!80 Unit!162) (_2!80 (_ BitVec 32)) (_3!68 array!140) (_4!36 (_ BitVec 32))) )
))
(declare-fun e!1181 () tuple4!72)

(declare-fun lt!1568 () (_ BitVec 32))

(declare-fun lt!1565 () (_ BitVec 32))

(declare-datatypes ((tuple4!74 0))(
  ( (tuple4!75 (_1!81 Unit!162) (_2!81 array!140) (_3!69 (_ BitVec 32)) (_4!37 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1564 () tuple4!74)

(declare-fun b!2316 () Bool)

(declare-fun Unit!164 () Unit!162)

(assert (=> b!2316 (= e!1181 (tuple4!73 Unit!164 lt!1565 (_2!81 lt!1564) lt!1568))))

(declare-fun b!2317 () Bool)

(declare-fun e!1180 () Bool)

(declare-fun e!1177 () Bool)

(assert (=> b!2317 (= e!1180 e!1177)))

(declare-fun res!1924 () Bool)

(assert (=> b!2317 (=> (not res!1924) (not e!1177))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2317 (= res!1924 (bvsge (select (arr!63 (_2!81 lt!1564)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2317 (= lt!1568 #b00000000000000000000000000000000)))

(declare-fun res!1923 () Bool)

(declare-fun e!1182 () Bool)

(assert (=> start!719 (=> (not res!1923) (not e!1182))))

(assert (=> start!719 (= res!1923 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!719 e!1182))

(assert (=> start!719 true))

(declare-datatypes ((array!142 0))(
  ( (array!143 (arr!64 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!64 (_ BitVec 32))) )
))
(declare-fun q!70 () array!142)

(declare-fun array_inv!28 (array!142) Bool)

(assert (=> start!719 (array_inv!28 q!70)))

(declare-fun lt!1563 () (_ FloatingPoint 11 53))

(declare-fun e!1179 () tuple4!74)

(declare-fun b!2318 () Bool)

(declare-fun lt!1567 () array!140)

(declare-fun Unit!165 () Unit!162)

(assert (=> b!2318 (= e!1179 (tuple4!75 Unit!165 lt!1567 jz!42 lt!1563))))

(declare-fun b!2319 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!142 (_ BitVec 32) array!140 (_ BitVec 32)) tuple4!72)

(assert (=> b!2319 (= e!1181 (computeModuloWhile!1 jz!42 q!70 lt!1565 (_2!81 lt!1564) lt!1568))))

(declare-fun b!2320 () Bool)

(declare-fun res!1926 () Bool)

(assert (=> b!2320 (=> (not res!1926) (not e!1182))))

(declare-fun qInv!0 (array!142) Bool)

(assert (=> b!2320 (= res!1926 (qInv!0 q!70))))

(declare-fun b!2321 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!142 array!140 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!74)

(assert (=> b!2321 (= e!1179 (computeModuloWhile!0 jz!42 q!70 lt!1567 jz!42 lt!1563))))

(declare-fun b!2322 () Bool)

(assert (=> b!2322 (= e!1182 e!1180)))

(declare-fun res!1925 () Bool)

(assert (=> b!2322 (=> (not res!1925) (not e!1180))))

(declare-fun lt!1561 () (_ FloatingPoint 11 53))

(assert (=> b!2322 (= res!1925 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1561) (fp.lt lt!1561 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2322 (= lt!1561 (fp.sub roundNearestTiesToEven (_4!37 lt!1564) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!37 lt!1564) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!37 lt!1564) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!37 lt!1564) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!37 lt!1564) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2322 (= lt!1564 e!1179)))

(declare-fun c!403 () Bool)

(assert (=> b!2322 (= c!403 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2322 (= lt!1563 (select (arr!64 q!70) jz!42))))

(assert (=> b!2322 (= lt!1567 (array!141 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2323 () Bool)

(declare-fun lt!1566 () tuple4!72)

(declare-fun lt!1562 () (_ BitVec 32))

(assert (=> b!2323 (= e!1177 (and (= (_4!36 lt!1566) #b00000000000000000000000000000000) (not (= #b00000000000000000000000000000000 (bvand lt!1562 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000001000000000000000000000000 lt!1562) #b10000000000000000000000000000000)))))))

(assert (=> b!2323 (= lt!1562 (select (arr!63 (_3!68 lt!1566)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2323 (= lt!1566 e!1181)))

(declare-fun c!404 () Bool)

(assert (=> b!2323 (= c!404 (bvslt lt!1565 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2323 (= lt!1565 #b00000000000000000000000000000000)))

(assert (= (and start!719 res!1923) b!2320))

(assert (= (and b!2320 res!1926) b!2322))

(assert (= (and b!2322 c!403) b!2321))

(assert (= (and b!2322 (not c!403)) b!2318))

(assert (= (and b!2322 res!1925) b!2317))

(assert (= (and b!2317 res!1924) b!2323))

(assert (= (and b!2323 c!404) b!2319))

(assert (= (and b!2323 (not c!404)) b!2316))

(declare-fun m!3793 () Bool)

(assert (=> b!2321 m!3793))

(declare-fun m!3795 () Bool)

(assert (=> b!2320 m!3795))

(declare-fun m!3797 () Bool)

(assert (=> b!2319 m!3797))

(declare-fun m!3799 () Bool)

(assert (=> b!2323 m!3799))

(declare-fun m!3801 () Bool)

(assert (=> b!2322 m!3801))

(declare-fun m!3803 () Bool)

(assert (=> b!2317 m!3803))

(declare-fun m!3805 () Bool)

(assert (=> start!719 m!3805))

(check-sat (not b!2321) (not b!2320) (not start!719) (not b!2319))
(check-sat)
(get-model)

(declare-fun b!2336 () Bool)

(declare-fun res!1936 () Bool)

(declare-fun e!1191 () Bool)

(assert (=> b!2336 (=> (not res!1936) (not e!1191))))

(declare-fun iqInv!0 (array!140) Bool)

(assert (=> b!2336 (= res!1936 (iqInv!0 lt!1567))))

(declare-fun b!2337 () Bool)

(assert (=> b!2337 (= e!1191 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2338 () Bool)

(declare-fun lt!1582 () array!140)

(declare-fun e!1189 () tuple4!74)

(declare-fun lt!1583 () (_ BitVec 32))

(declare-fun lt!1579 () (_ FloatingPoint 11 53))

(assert (=> b!2338 (= e!1189 (computeModuloWhile!0 jz!42 q!70 lt!1582 lt!1583 lt!1579))))

(declare-fun d!1587 () Bool)

(declare-fun e!1190 () Bool)

(assert (=> d!1587 e!1190))

(declare-fun res!1938 () Bool)

(assert (=> d!1587 (=> (not res!1938) (not e!1190))))

(declare-fun lt!1580 () tuple4!74)

(assert (=> d!1587 (= res!1938 (and true true (bvsle #b00000000000000000000000000000000 (_3!69 lt!1580)) (bvsle (_3!69 lt!1580) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!37 lt!1580)) (fp.leq (_4!37 lt!1580) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1587 (= lt!1580 e!1189)))

(declare-fun c!407 () Bool)

(assert (=> d!1587 (= c!407 (bvsgt lt!1583 #b00000000000000000000000000000000))))

(assert (=> d!1587 (= lt!1583 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1581 () (_ FloatingPoint 11 53))

(assert (=> d!1587 (= lt!1579 (fp.add roundNearestTiesToEven (select (arr!64 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1581))))

(assert (=> d!1587 (= lt!1582 (array!141 (store (arr!63 lt!1567) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1563 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1581))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1563 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1581)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1563 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1581)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1563 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1581))))))) (size!63 lt!1567)))))

(assert (=> d!1587 (= lt!1581 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1563)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1563) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1563) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1563)))))))))

(assert (=> d!1587 e!1191))

(declare-fun res!1937 () Bool)

(assert (=> d!1587 (=> (not res!1937) (not e!1191))))

(assert (=> d!1587 (= res!1937 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1563) (fp.leq lt!1563 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1587 (= (computeModuloWhile!0 jz!42 q!70 lt!1567 jz!42 lt!1563) lt!1580)))

(declare-fun b!2339 () Bool)

(assert (=> b!2339 (= e!1190 (bvsle (_3!69 lt!1580) #b00000000000000000000000000000000))))

(declare-fun b!2340 () Bool)

(declare-fun res!1935 () Bool)

(assert (=> b!2340 (=> (not res!1935) (not e!1190))))

(assert (=> b!2340 (= res!1935 (iqInv!0 (_2!81 lt!1580)))))

(declare-fun b!2341 () Bool)

(declare-fun Unit!166 () Unit!162)

(assert (=> b!2341 (= e!1189 (tuple4!75 Unit!166 lt!1582 lt!1583 lt!1579))))

(assert (= (and d!1587 res!1937) b!2336))

(assert (= (and b!2336 res!1936) b!2337))

(assert (= (and d!1587 c!407) b!2338))

(assert (= (and d!1587 (not c!407)) b!2341))

(assert (= (and d!1587 res!1938) b!2340))

(assert (= (and b!2340 res!1935) b!2339))

(declare-fun m!3807 () Bool)

(assert (=> b!2336 m!3807))

(declare-fun m!3809 () Bool)

(assert (=> b!2338 m!3809))

(declare-fun m!3811 () Bool)

(assert (=> d!1587 m!3811))

(declare-fun m!3813 () Bool)

(assert (=> d!1587 m!3813))

(declare-fun m!3815 () Bool)

(assert (=> b!2340 m!3815))

(assert (=> b!2321 d!1587))

(declare-fun d!1589 () Bool)

(declare-fun res!1941 () Bool)

(declare-fun e!1194 () Bool)

(assert (=> d!1589 (=> (not res!1941) (not e!1194))))

(assert (=> d!1589 (= res!1941 (= (size!64 q!70) #b00000000000000000000000000010100))))

(assert (=> d!1589 (= (qInv!0 q!70) e!1194)))

(declare-fun b!2344 () Bool)

(declare-fun lambda!92 () Int)

(declare-fun all20!0 (array!142 Int) Bool)

(assert (=> b!2344 (= e!1194 (all20!0 q!70 lambda!92))))

(assert (= (and d!1589 res!1941) b!2344))

(declare-fun m!3817 () Bool)

(assert (=> b!2344 m!3817))

(assert (=> b!2320 d!1589))

(declare-fun d!1591 () Bool)

(assert (=> d!1591 (= (array_inv!28 q!70) (bvsge (size!64 q!70) #b00000000000000000000000000000000))))

(assert (=> start!719 d!1591))

(declare-fun b!2365 () Bool)

(declare-fun e!1205 () Bool)

(assert (=> b!2365 (= e!1205 (and (bvsge (select (arr!63 (_2!81 lt!1564)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1568 #b00000000000000000000000000000000) (= lt!1568 #b00000000000000000000000000000001)) (bvslt lt!1565 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun b!2366 () Bool)

(declare-fun lt!1602 () array!140)

(declare-fun e!1204 () tuple4!74)

(declare-fun lt!1603 () (_ FloatingPoint 11 53))

(assert (=> b!2366 (= e!1204 (computeModuloWhile!0 jz!42 q!70 lt!1602 jz!42 lt!1603))))

(declare-fun b!2367 () Bool)

(declare-fun res!1954 () Bool)

(declare-fun e!1203 () Bool)

(assert (=> b!2367 (=> (not res!1954) (not e!1203))))

(declare-fun lt!1604 () tuple4!72)

(declare-fun lt!1605 () (_ BitVec 32))

(assert (=> b!2367 (= res!1954 (bvsge (select (arr!63 (_3!68 lt!1604)) lt!1605) #b00000000100000000000000000000000))))

(assert (=> b!2367 (and (bvsge lt!1605 #b00000000000000000000000000000000) (bvslt lt!1605 (size!63 (_3!68 lt!1604))))))

(assert (=> b!2367 (= lt!1605 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2367 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2368 () Bool)

(declare-fun Unit!167 () Unit!162)

(assert (=> b!2368 (= e!1204 (tuple4!75 Unit!167 lt!1602 jz!42 lt!1603))))

(declare-fun b!2369 () Bool)

(declare-fun res!1957 () Bool)

(assert (=> b!2369 (=> (not res!1957) (not e!1203))))

(assert (=> b!2369 (= res!1957 (or (= (_4!36 lt!1604) #b00000000000000000000000000000000) (= (_4!36 lt!1604) #b00000000000000000000000000000001)))))

(declare-fun d!1593 () Bool)

(assert (=> d!1593 e!1203))

(declare-fun res!1956 () Bool)

(assert (=> d!1593 (=> (not res!1956) (not e!1203))))

(assert (=> d!1593 (= res!1956 (and (or (bvsgt #b00000000000000000000000000000000 (_2!80 lt!1604)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!80 lt!1604)) (bvsle (_2!80 lt!1604) (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun e!1206 () tuple4!72)

(assert (=> d!1593 (= lt!1604 e!1206)))

(declare-fun c!413 () Bool)

(declare-fun lt!1610 () (_ BitVec 32))

(assert (=> d!1593 (= c!413 (bvslt lt!1610 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!1593 (= lt!1610 (bvadd lt!1565 #b00000000000000000000000000000001))))

(declare-fun lt!1607 () (_ BitVec 32))

(declare-fun lt!1608 () (_ BitVec 32))

(assert (=> d!1593 (= lt!1607 (ite (and (= lt!1568 #b00000000000000000000000000000000) (not (= lt!1608 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1568))))

(declare-fun lt!1606 () array!140)

(assert (=> d!1593 (= lt!1606 (array!141 (store (arr!63 (_2!81 lt!1564)) lt!1565 (ite (= lt!1568 #b00000000000000000000000000000000) (ite (not (= lt!1608 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1608) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1608))) (size!63 (_2!81 lt!1564))))))

(assert (=> d!1593 (= lt!1608 (select (arr!63 (_2!81 lt!1564)) lt!1565))))

(assert (=> d!1593 e!1205))

(declare-fun res!1959 () Bool)

(assert (=> d!1593 (=> (not res!1959) (not e!1205))))

(assert (=> d!1593 (= res!1959 (and (bvsle #b00000000000000000000000000000000 lt!1565) (bvsle lt!1565 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1609 () tuple4!74)

(assert (=> d!1593 (= lt!1609 e!1204)))

(declare-fun c!412 () Bool)

(assert (=> d!1593 (= c!412 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> d!1593 (= lt!1603 (select (arr!64 q!70) jz!42))))

(assert (=> d!1593 (= lt!1602 (array!141 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!1593 (= (computeModuloWhile!1 jz!42 q!70 lt!1565 (_2!81 lt!1564) lt!1568) lt!1604)))

(declare-fun b!2370 () Bool)

(declare-fun res!1958 () Bool)

(assert (=> b!2370 (=> (not res!1958) (not e!1203))))

(assert (=> b!2370 (= res!1958 (iqInv!0 (_3!68 lt!1604)))))

(declare-fun b!2371 () Bool)

(declare-fun res!1955 () Bool)

(assert (=> b!2371 (=> (not res!1955) (not e!1205))))

(assert (=> b!2371 (= res!1955 (iqInv!0 (_2!81 lt!1564)))))

(declare-fun b!2372 () Bool)

(assert (=> b!2372 (= e!1203 (bvsge (_2!80 lt!1604) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2372 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2373 () Bool)

(assert (=> b!2373 (= e!1206 (computeModuloWhile!1 jz!42 q!70 lt!1610 lt!1606 lt!1607))))

(declare-fun b!2374 () Bool)

(declare-fun Unit!168 () Unit!162)

(assert (=> b!2374 (= e!1206 (tuple4!73 Unit!168 lt!1610 lt!1606 lt!1607))))

(assert (= (and d!1593 c!412) b!2366))

(assert (= (and d!1593 (not c!412)) b!2368))

(assert (= (and d!1593 res!1959) b!2371))

(assert (= (and b!2371 res!1955) b!2365))

(assert (= (and d!1593 c!413) b!2373))

(assert (= (and d!1593 (not c!413)) b!2374))

(assert (= (and d!1593 res!1956) b!2370))

(assert (= (and b!2370 res!1958) b!2367))

(assert (= (and b!2367 res!1954) b!2369))

(assert (= (and b!2369 res!1957) b!2372))

(assert (=> b!2365 m!3803))

(declare-fun m!3819 () Bool)

(assert (=> b!2370 m!3819))

(declare-fun m!3821 () Bool)

(assert (=> b!2366 m!3821))

(declare-fun m!3823 () Bool)

(assert (=> b!2371 m!3823))

(declare-fun m!3825 () Bool)

(assert (=> b!2373 m!3825))

(declare-fun m!3827 () Bool)

(assert (=> d!1593 m!3827))

(declare-fun m!3829 () Bool)

(assert (=> d!1593 m!3829))

(assert (=> d!1593 m!3801))

(declare-fun m!3831 () Bool)

(assert (=> b!2367 m!3831))

(assert (=> b!2319 d!1593))

(check-sat (not b!2336) (not b!2338) (not b!2373) (not b!2366) (not b!2340) (not b!2371) (not b!2370) (not b!2344))
(check-sat)
