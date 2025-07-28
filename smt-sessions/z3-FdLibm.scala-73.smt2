; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661 () Bool)

(assert start!661)

(declare-fun b!1935 () Bool)

(declare-fun res!1680 () Bool)

(declare-fun e!957 () Bool)

(assert (=> b!1935 (=> (not res!1680) (not e!957))))

(declare-datatypes ((array!80 0))(
  ( (array!81 (arr!35 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!35 (_ BitVec 32))) )
))
(declare-fun q!70 () array!80)

(declare-fun qInv!0 (array!80) Bool)

(assert (=> b!1935 (= res!1680 (qInv!0 q!70))))

(declare-fun b!1936 () Bool)

(declare-fun lt!1276 () (_ FloatingPoint 11 53))

(assert (=> b!1936 (= e!957 (and (not (fp.isNaN lt!1276)) (not (fp.gt lt!1276 ((_ to_fp 11 53) roundTowardNegative #b10111111111111111111111111111111111111111111111111111111111111111)))))))

(declare-datatypes ((Unit!111 0))(
  ( (Unit!112) )
))
(declare-datatypes ((array!82 0))(
  ( (array!83 (arr!36 (Array (_ BitVec 32) (_ BitVec 32))) (size!36 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!40 0))(
  ( (tuple4!41 (_1!64 Unit!111) (_2!64 array!82) (_3!52 (_ BitVec 32)) (_4!20 (_ FloatingPoint 11 53))) )
))
(declare-fun e!958 () tuple4!40)

(assert (=> b!1936 (= lt!1276 (fp.mul roundNearestTiesToEven (_4!20 e!958) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun c!334 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!1936 (= c!334 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1277 () (_ FloatingPoint 11 53))

(assert (=> b!1936 (= lt!1277 (select (arr!35 q!70) jz!42))))

(declare-fun lt!1278 () array!82)

(assert (=> b!1936 (= lt!1278 (array!83 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1681 () Bool)

(assert (=> start!661 (=> (not res!1681) (not e!957))))

(assert (=> start!661 (= res!1681 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!661 e!957))

(assert (=> start!661 true))

(declare-fun array_inv!14 (array!80) Bool)

(assert (=> start!661 (array_inv!14 q!70)))

(declare-fun b!1938 () Bool)

(declare-fun Unit!113 () Unit!111)

(assert (=> b!1938 (= e!958 (tuple4!41 Unit!113 lt!1278 jz!42 lt!1277))))

(declare-fun b!1937 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!80 array!82 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!40)

(assert (=> b!1937 (= e!958 (computeModuloWhile!0 jz!42 q!70 lt!1278 jz!42 lt!1277))))

(assert (= (and start!661 res!1681) b!1935))

(assert (= (and b!1935 res!1680) b!1936))

(assert (= (and b!1936 c!334) b!1937))

(assert (= (and b!1936 (not c!334)) b!1938))

(declare-fun m!3461 () Bool)

(assert (=> b!1935 m!3461))

(declare-fun m!3463 () Bool)

(assert (=> b!1936 m!3463))

(declare-fun m!3465 () Bool)

(assert (=> start!661 m!3465))

(declare-fun m!3467 () Bool)

(assert (=> b!1937 m!3467))

(check-sat (not start!661) (not b!1937) (not b!1935))
(check-sat)
(get-model)

(declare-fun d!1513 () Bool)

(assert (=> d!1513 (= (array_inv!14 q!70) (bvsge (size!35 q!70) #b00000000000000000000000000000000))))

(assert (=> start!661 d!1513))

(declare-fun b!1951 () Bool)

(declare-fun res!1693 () Bool)

(declare-fun e!966 () Bool)

(assert (=> b!1951 (=> (not res!1693) (not e!966))))

(declare-fun lt!1290 () tuple4!40)

(declare-fun iqInv!0 (array!82) Bool)

(assert (=> b!1951 (= res!1693 (iqInv!0 (_2!64 lt!1290)))))

(declare-fun b!1952 () Bool)

(declare-fun e!967 () Bool)

(assert (=> b!1952 (= e!967 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!1953 () Bool)

(assert (=> b!1953 (= e!966 (bvsle (_3!52 lt!1290) #b00000000000000000000000000000000))))

(declare-fun d!1515 () Bool)

(assert (=> d!1515 e!966))

(declare-fun res!1692 () Bool)

(assert (=> d!1515 (=> (not res!1692) (not e!966))))

(assert (=> d!1515 (= res!1692 (and true true (bvsle #b00000000000000000000000000000000 (_3!52 lt!1290)) (bvsle (_3!52 lt!1290) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!20 lt!1290)) (fp.leq (_4!20 lt!1290) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!968 () tuple4!40)

(assert (=> d!1515 (= lt!1290 e!968)))

(declare-fun c!337 () Bool)

(declare-fun lt!1293 () (_ BitVec 32))

(assert (=> d!1515 (= c!337 (bvsgt lt!1293 #b00000000000000000000000000000000))))

(assert (=> d!1515 (= lt!1293 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1291 () (_ FloatingPoint 11 53))

(declare-fun lt!1289 () (_ FloatingPoint 11 53))

(assert (=> d!1515 (= lt!1289 (fp.add roundNearestTiesToEven (select (arr!35 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1291))))

(declare-fun lt!1292 () array!82)

(assert (=> d!1515 (= lt!1292 (array!83 (store (arr!36 lt!1278) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1277 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1291))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1277 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1291)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1277 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1291)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1277 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1291))))))) (size!36 lt!1278)))))

(assert (=> d!1515 (= lt!1291 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1277)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1277) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1277) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1277)))))))))

(assert (=> d!1515 e!967))

(declare-fun res!1691 () Bool)

(assert (=> d!1515 (=> (not res!1691) (not e!967))))

(assert (=> d!1515 (= res!1691 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1277) (fp.leq lt!1277 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1515 (= (computeModuloWhile!0 jz!42 q!70 lt!1278 jz!42 lt!1277) lt!1290)))

(declare-fun b!1954 () Bool)

(declare-fun Unit!114 () Unit!111)

(assert (=> b!1954 (= e!968 (tuple4!41 Unit!114 lt!1292 lt!1293 lt!1289))))

(declare-fun b!1955 () Bool)

(assert (=> b!1955 (= e!968 (computeModuloWhile!0 jz!42 q!70 lt!1292 lt!1293 lt!1289))))

(declare-fun b!1956 () Bool)

(declare-fun res!1690 () Bool)

(assert (=> b!1956 (=> (not res!1690) (not e!967))))

(assert (=> b!1956 (= res!1690 (iqInv!0 lt!1278))))

(assert (= (and d!1515 res!1691) b!1956))

(assert (= (and b!1956 res!1690) b!1952))

(assert (= (and d!1515 c!337) b!1955))

(assert (= (and d!1515 (not c!337)) b!1954))

(assert (= (and d!1515 res!1692) b!1951))

(assert (= (and b!1951 res!1693) b!1953))

(declare-fun m!3469 () Bool)

(assert (=> b!1951 m!3469))

(declare-fun m!3471 () Bool)

(assert (=> d!1515 m!3471))

(declare-fun m!3473 () Bool)

(assert (=> d!1515 m!3473))

(declare-fun m!3475 () Bool)

(assert (=> b!1955 m!3475))

(declare-fun m!3477 () Bool)

(assert (=> b!1956 m!3477))

(assert (=> b!1937 d!1515))

(declare-fun d!1517 () Bool)

(declare-fun res!1696 () Bool)

(declare-fun e!971 () Bool)

(assert (=> d!1517 (=> (not res!1696) (not e!971))))

(assert (=> d!1517 (= res!1696 (= (size!35 q!70) #b00000000000000000000000000010100))))

(assert (=> d!1517 (= (qInv!0 q!70) e!971)))

(declare-fun b!1959 () Bool)

(declare-fun lambda!76 () Int)

(declare-fun all20!0 (array!80 Int) Bool)

(assert (=> b!1959 (= e!971 (all20!0 q!70 lambda!76))))

(assert (= (and d!1517 res!1696) b!1959))

(declare-fun m!3479 () Bool)

(assert (=> b!1959 m!3479))

(assert (=> b!1935 d!1517))

(check-sat (not b!1951) (not b!1955) (not b!1956) (not b!1959))
(check-sat)
