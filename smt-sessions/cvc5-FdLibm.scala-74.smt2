; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!671 () Bool)

(assert start!671)

(declare-fun b!2125 () Bool)

(declare-fun e!1009 () Bool)

(declare-fun lt!1330 () (_ FloatingPoint 11 53))

(assert (=> b!2125 (= e!1009 (and (not (fp.isNaN lt!1330)) (fp.gt lt!1330 ((_ to_fp 11 53) roundTowardNegative #b10111111111111111111111111111111111111111111111111111111111111111)) (not (fp.lt lt!1330 ((_ to_fp 11 53) roundTowardPositive #b01000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!121 0))(
  ( (Unit!122) )
))
(declare-datatypes ((array!85 0))(
  ( (array!86 (arr!37 (Array (_ BitVec 32) (_ BitVec 32))) (size!37 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!42 0))(
  ( (tuple4!43 (_1!65 Unit!121) (_2!65 array!85) (_3!53 (_ BitVec 32)) (_4!21 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1008 () tuple4!42)

(assert (=> b!2125 (= lt!1330 (fp.mul roundNearestTiesToEven (_4!21 e!1008) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun c!346 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2125 (= c!346 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1329 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!87 0))(
  ( (array!88 (arr!38 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!38 (_ BitVec 32))) )
))
(declare-fun q!70 () array!87)

(assert (=> b!2125 (= lt!1329 (select (arr!38 q!70) jz!42))))

(declare-fun lt!1331 () array!85)

(assert (=> b!2125 (= lt!1331 (array!86 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2124 () Bool)

(declare-fun res!1845 () Bool)

(assert (=> b!2124 (=> (not res!1845) (not e!1009))))

(declare-fun qInv!0 (array!87) Bool)

(assert (=> b!2124 (= res!1845 (qInv!0 q!70))))

(declare-fun res!1846 () Bool)

(assert (=> start!671 (=> (not res!1846) (not e!1009))))

(assert (=> start!671 (= res!1846 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!671 e!1009))

(assert (=> start!671 true))

(declare-fun array_inv!15 (array!87) Bool)

(assert (=> start!671 (array_inv!15 q!70)))

(declare-fun b!2126 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!87 array!85 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!42)

(assert (=> b!2126 (= e!1008 (computeModuloWhile!0 jz!42 q!70 lt!1331 jz!42 lt!1329))))

(declare-fun b!2127 () Bool)

(declare-fun Unit!123 () Unit!121)

(assert (=> b!2127 (= e!1008 (tuple4!43 Unit!123 lt!1331 jz!42 lt!1329))))

(assert (= (and start!671 res!1846) b!2124))

(assert (= (and b!2124 res!1845) b!2125))

(assert (= (and b!2125 c!346) b!2126))

(assert (= (and b!2125 (not c!346)) b!2127))

(declare-fun m!4271 () Bool)

(assert (=> b!2125 m!4271))

(declare-fun m!4273 () Bool)

(assert (=> b!2124 m!4273))

(declare-fun m!4275 () Bool)

(assert (=> start!671 m!4275))

(declare-fun m!4277 () Bool)

(assert (=> b!2126 m!4277))

(push 1)

(assert (not b!2126))

(assert (not start!671))

(assert (not b!2124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2140 () Bool)

(declare-fun e!1018 () Bool)

(assert (=> b!2140 (= e!1018 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2141 () Bool)

(declare-fun e!1019 () Bool)

(declare-fun lt!1346 () tuple4!42)

(assert (=> b!2141 (= e!1019 (bvsle (_3!53 lt!1346) #b00000000000000000000000000000000))))

(declare-fun d!2032 () Bool)

(assert (=> d!2032 e!1019))

(declare-fun res!1858 () Bool)

(assert (=> d!2032 (=> (not res!1858) (not e!1019))))

(assert (=> d!2032 (= res!1858 (and true true (bvsle #b00000000000000000000000000000000 (_3!53 lt!1346)) (bvsle (_3!53 lt!1346) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!21 lt!1346)) (fp.leq (_4!21 lt!1346) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!1017 () tuple4!42)

(assert (=> d!2032 (= lt!1346 e!1017)))

(declare-fun c!349 () Bool)

(declare-fun lt!1345 () (_ BitVec 32))

(assert (=> d!2032 (= c!349 (bvsgt lt!1345 #b00000000000000000000000000000000))))

(assert (=> d!2032 (= lt!1345 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1343 () (_ FloatingPoint 11 53))

(declare-fun lt!1342 () (_ FloatingPoint 11 53))

(assert (=> d!2032 (= lt!1343 (fp.add roundNearestTiesToEven (select (arr!38 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1342))))

(declare-fun lt!1344 () array!85)

(assert (=> d!2032 (= lt!1344 (array!86 (store (arr!37 lt!1331) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1329 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1342))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1329 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1342)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1329 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1342)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1329 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1342))))))) (size!37 lt!1331)))))

(assert (=> d!2032 (= lt!1342 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1329)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1329) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1329) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1329)))))))))

(assert (=> d!2032 e!1018))

(declare-fun res!1857 () Bool)

(assert (=> d!2032 (=> (not res!1857) (not e!1018))))

(assert (=> d!2032 (= res!1857 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1329) (fp.leq lt!1329 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2032 (= (computeModuloWhile!0 jz!42 q!70 lt!1331 jz!42 lt!1329) lt!1346)))

(declare-fun b!2142 () Bool)

(assert (=> b!2142 (= e!1017 (computeModuloWhile!0 jz!42 q!70 lt!1344 lt!1345 lt!1343))))

(declare-fun b!2143 () Bool)

(declare-fun res!1855 () Bool)

(assert (=> b!2143 (=> (not res!1855) (not e!1018))))

(declare-fun iqInv!0 (array!85) Bool)

(assert (=> b!2143 (= res!1855 (iqInv!0 lt!1331))))

(declare-fun b!2144 () Bool)

(declare-fun res!1856 () Bool)

(assert (=> b!2144 (=> (not res!1856) (not e!1019))))

(assert (=> b!2144 (= res!1856 (iqInv!0 (_2!65 lt!1346)))))

(declare-fun b!2145 () Bool)

(declare-fun Unit!124 () Unit!121)

(assert (=> b!2145 (= e!1017 (tuple4!43 Unit!124 lt!1344 lt!1345 lt!1343))))

(assert (= (and d!2032 res!1857) b!2143))

(assert (= (and b!2143 res!1855) b!2140))

(assert (= (and d!2032 c!349) b!2142))

(assert (= (and d!2032 (not c!349)) b!2145))

(assert (= (and d!2032 res!1858) b!2144))

(assert (= (and b!2144 res!1856) b!2141))

(declare-fun m!4279 () Bool)

(assert (=> d!2032 m!4279))

(declare-fun m!4281 () Bool)

(assert (=> d!2032 m!4281))

(declare-fun m!4283 () Bool)

(assert (=> b!2142 m!4283))

(declare-fun m!4285 () Bool)

(assert (=> b!2143 m!4285))

(declare-fun m!4287 () Bool)

(assert (=> b!2144 m!4287))

(assert (=> b!2126 d!2032))

(declare-fun d!2034 () Bool)

(assert (=> d!2034 (= (array_inv!15 q!70) (bvsge (size!38 q!70) #b00000000000000000000000000000000))))

(assert (=> start!671 d!2034))

(declare-fun d!2036 () Bool)

(declare-fun res!1861 () Bool)

(declare-fun e!1022 () Bool)

(assert (=> d!2036 (=> (not res!1861) (not e!1022))))

(assert (=> d!2036 (= res!1861 (= (size!38 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2036 (= (qInv!0 q!70) e!1022)))

(declare-fun b!2148 () Bool)

(declare-fun lambda!87 () Int)

(declare-fun all20!0 (array!87 Int) Bool)

(assert (=> b!2148 (= e!1022 (all20!0 q!70 lambda!87))))

(assert (= (and d!2036 res!1861) b!2148))

(declare-fun m!4289 () Bool)

(assert (=> b!2148 m!4289))

(assert (=> b!2124 d!2036))

(push 1)

(assert (not b!2148))

(assert (not b!2144))

(assert (not b!2143))

(assert (not b!2142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

