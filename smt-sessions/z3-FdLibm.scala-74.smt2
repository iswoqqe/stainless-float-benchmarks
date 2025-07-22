; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661 () Bool)

(assert start!661)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun b!1603 () Bool)

(declare-datatypes ((array!85 0))(
  ( (array!86 (arr!37 (Array (_ BitVec 32) (_ BitVec 32))) (size!37 (_ BitVec 32))) )
))
(declare-fun lt!1229 () array!85)

(declare-datatypes ((Unit!100 0))(
  ( (Unit!101) )
))
(declare-datatypes ((tuple4!42 0))(
  ( (tuple4!43 (_1!65 Unit!100) (_2!65 array!85) (_3!53 (_ BitVec 32)) (_4!21 (_ FloatingPoint 11 53))) )
))
(declare-fun e!908 () tuple4!42)

(declare-fun lt!1230 () (_ FloatingPoint 11 53))

(declare-fun Unit!102 () Unit!100)

(assert (=> b!1603 (= e!908 (tuple4!43 Unit!102 lt!1229 jz!42 lt!1230))))

(declare-datatypes ((array!87 0))(
  ( (array!88 (arr!38 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!38 (_ BitVec 32))) )
))
(declare-fun q!70 () array!87)

(declare-fun b!1602 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!87 array!85 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!42)

(assert (=> b!1602 (= e!908 (computeModuloWhile!0 jz!42 q!70 lt!1229 jz!42 lt!1230))))

(declare-fun res!1363 () Bool)

(declare-fun e!907 () Bool)

(assert (=> start!661 (=> (not res!1363) (not e!907))))

(assert (=> start!661 (= res!1363 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!661 e!907))

(assert (=> start!661 true))

(declare-fun array_inv!15 (array!87) Bool)

(assert (=> start!661 (array_inv!15 q!70)))

(declare-fun b!1601 () Bool)

(declare-fun lt!1228 () (_ FloatingPoint 11 53))

(assert (=> b!1601 (= e!907 (and (not (fp.isNaN lt!1228)) (fp.gt lt!1228 ((_ to_fp 11 53) roundTowardNegative #b10111111111111111111111111111111111111111111111111111111111111111)) (not (fp.lt lt!1228 ((_ to_fp 11 53) roundTowardPositive #b01000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1601 (= lt!1228 (fp.mul roundNearestTiesToEven (_4!21 e!908) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun c!325 () Bool)

(assert (=> b!1601 (= c!325 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1601 (= lt!1230 (select (arr!38 q!70) jz!42))))

(assert (=> b!1601 (= lt!1229 (array!86 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1600 () Bool)

(declare-fun res!1364 () Bool)

(assert (=> b!1600 (=> (not res!1364) (not e!907))))

(declare-fun qInv!0 (array!87) Bool)

(assert (=> b!1600 (= res!1364 (qInv!0 q!70))))

(assert (= (and start!661 res!1363) b!1600))

(assert (= (and b!1600 res!1364) b!1601))

(assert (= (and b!1601 c!325) b!1602))

(assert (= (and b!1601 (not c!325)) b!1603))

(declare-fun m!1873 () Bool)

(assert (=> b!1602 m!1873))

(declare-fun m!1875 () Bool)

(assert (=> start!661 m!1875))

(declare-fun m!1877 () Bool)

(assert (=> b!1601 m!1877))

(declare-fun m!1879 () Bool)

(assert (=> b!1600 m!1879))

(check-sat (not b!1600) (not start!661) (not b!1602))
(check-sat)
(get-model)

(declare-fun d!835 () Bool)

(declare-fun res!1367 () Bool)

(declare-fun e!912 () Bool)

(assert (=> d!835 (=> (not res!1367) (not e!912))))

(assert (=> d!835 (= res!1367 (= (size!38 q!70) #b00000000000000000000000000010100))))

(assert (=> d!835 (= (qInv!0 q!70) e!912)))

(declare-fun b!1606 () Bool)

(declare-fun lambda!61 () Int)

(declare-fun all20!0 (array!87 Int) Bool)

(assert (=> b!1606 (= e!912 (all20!0 q!70 lambda!61))))

(assert (= (and d!835 res!1367) b!1606))

(declare-fun m!1881 () Bool)

(assert (=> b!1606 m!1881))

(assert (=> b!1600 d!835))

(declare-fun d!837 () Bool)

(assert (=> d!837 (= (array_inv!15 q!70) (bvsge (size!38 q!70) #b00000000000000000000000000000000))))

(assert (=> start!661 d!837))

(declare-fun b!1619 () Bool)

(declare-fun res!1378 () Bool)

(declare-fun e!920 () Bool)

(assert (=> b!1619 (=> (not res!1378) (not e!920))))

(declare-fun iqInv!0 (array!85) Bool)

(assert (=> b!1619 (= res!1378 (iqInv!0 lt!1229))))

(declare-fun b!1620 () Bool)

(declare-fun e!919 () Bool)

(declare-fun lt!1242 () tuple4!42)

(assert (=> b!1620 (= e!919 (bvsle (_3!53 lt!1242) #b00000000000000000000000000000000))))

(declare-fun b!1621 () Bool)

(declare-fun res!1379 () Bool)

(assert (=> b!1621 (=> (not res!1379) (not e!919))))

(assert (=> b!1621 (= res!1379 (iqInv!0 (_2!65 lt!1242)))))

(declare-fun d!839 () Bool)

(assert (=> d!839 e!919))

(declare-fun res!1376 () Bool)

(assert (=> d!839 (=> (not res!1376) (not e!919))))

(assert (=> d!839 (= res!1376 (and true true (bvsle #b00000000000000000000000000000000 (_3!53 lt!1242)) (bvsle (_3!53 lt!1242) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!21 lt!1242)) (fp.leq (_4!21 lt!1242) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!921 () tuple4!42)

(assert (=> d!839 (= lt!1242 e!921)))

(declare-fun c!328 () Bool)

(declare-fun lt!1241 () (_ BitVec 32))

(assert (=> d!839 (= c!328 (bvsgt lt!1241 #b00000000000000000000000000000000))))

(assert (=> d!839 (= lt!1241 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1243 () (_ FloatingPoint 11 53))

(declare-fun lt!1245 () (_ FloatingPoint 11 53))

(assert (=> d!839 (= lt!1245 (fp.add roundNearestTiesToEven (select (arr!38 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1243))))

(declare-fun lt!1244 () array!85)

(assert (=> d!839 (= lt!1244 (array!86 (store (arr!37 lt!1229) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1230 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1243))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1230 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1243)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1230 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1243)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1230 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1243))))))) (size!37 lt!1229)))))

(assert (=> d!839 (= lt!1243 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1230)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1230) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1230) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1230)))))))))

(assert (=> d!839 e!920))

(declare-fun res!1377 () Bool)

(assert (=> d!839 (=> (not res!1377) (not e!920))))

(assert (=> d!839 (= res!1377 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1230) (fp.leq lt!1230 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!839 (= (computeModuloWhile!0 jz!42 q!70 lt!1229 jz!42 lt!1230) lt!1242)))

(declare-fun b!1622 () Bool)

(assert (=> b!1622 (= e!921 (computeModuloWhile!0 jz!42 q!70 lt!1244 lt!1241 lt!1245))))

(declare-fun b!1623 () Bool)

(declare-fun Unit!103 () Unit!100)

(assert (=> b!1623 (= e!921 (tuple4!43 Unit!103 lt!1244 lt!1241 lt!1245))))

(declare-fun b!1624 () Bool)

(assert (=> b!1624 (= e!920 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (= (and d!839 res!1377) b!1619))

(assert (= (and b!1619 res!1378) b!1624))

(assert (= (and d!839 c!328) b!1622))

(assert (= (and d!839 (not c!328)) b!1623))

(assert (= (and d!839 res!1376) b!1621))

(assert (= (and b!1621 res!1379) b!1620))

(declare-fun m!1883 () Bool)

(assert (=> b!1619 m!1883))

(declare-fun m!1885 () Bool)

(assert (=> b!1621 m!1885))

(declare-fun m!1887 () Bool)

(assert (=> d!839 m!1887))

(declare-fun m!1889 () Bool)

(assert (=> d!839 m!1889))

(declare-fun m!1891 () Bool)

(assert (=> b!1622 m!1891))

(assert (=> b!1602 d!839))

(check-sat (not b!1606) (not b!1622) (not b!1619) (not b!1621))
(check-sat)
