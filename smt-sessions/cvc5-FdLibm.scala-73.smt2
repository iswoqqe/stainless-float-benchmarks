; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!663 () Bool)

(assert start!663)

(declare-fun res!1824 () Bool)

(declare-fun e!988 () Bool)

(assert (=> start!663 (=> (not res!1824) (not e!988))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!663 (= res!1824 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!663 e!988))

(assert (=> start!663 true))

(declare-datatypes ((array!80 0))(
  ( (array!81 (arr!35 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!35 (_ BitVec 32))) )
))
(declare-fun q!70 () array!80)

(declare-fun array_inv!14 (array!80) Bool)

(assert (=> start!663 (array_inv!14 q!70)))

(declare-fun b!2094 () Bool)

(declare-datatypes ((Unit!117 0))(
  ( (Unit!118) )
))
(declare-datatypes ((array!82 0))(
  ( (array!83 (arr!36 (Array (_ BitVec 32) (_ BitVec 32))) (size!36 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!40 0))(
  ( (tuple4!41 (_1!64 Unit!117) (_2!64 array!82) (_3!52 (_ BitVec 32)) (_4!20 (_ FloatingPoint 11 53))) )
))
(declare-fun e!989 () tuple4!40)

(declare-fun lt!1306 () (_ FloatingPoint 11 53))

(declare-fun lt!1307 () array!82)

(declare-fun Unit!119 () Unit!117)

(assert (=> b!2094 (= e!989 (tuple4!41 Unit!119 lt!1307 jz!42 lt!1306))))

(declare-fun b!2093 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!80 array!82 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!40)

(assert (=> b!2093 (= e!989 (computeModuloWhile!0 jz!42 q!70 lt!1307 jz!42 lt!1306))))

(declare-fun b!2092 () Bool)

(declare-fun lt!1305 () (_ FloatingPoint 11 53))

(assert (=> b!2092 (= e!988 (and (not (fp.isNaN lt!1305)) (not (fp.gt lt!1305 ((_ to_fp 11 53) roundTowardNegative #b10111111111111111111111111111111111111111111111111111111111111111)))))))

(assert (=> b!2092 (= lt!1305 (fp.mul roundNearestTiesToEven (_4!20 e!989) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun c!340 () Bool)

(assert (=> b!2092 (= c!340 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2092 (= lt!1306 (select (arr!35 q!70) jz!42))))

(assert (=> b!2092 (= lt!1307 (array!83 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2091 () Bool)

(declare-fun res!1825 () Bool)

(assert (=> b!2091 (=> (not res!1825) (not e!988))))

(declare-fun qInv!0 (array!80) Bool)

(assert (=> b!2091 (= res!1825 (qInv!0 q!70))))

(assert (= (and start!663 res!1824) b!2091))

(assert (= (and b!2091 res!1825) b!2092))

(assert (= (and b!2092 c!340) b!2093))

(assert (= (and b!2092 (not c!340)) b!2094))

(declare-fun m!4251 () Bool)

(assert (=> start!663 m!4251))

(declare-fun m!4253 () Bool)

(assert (=> b!2093 m!4253))

(declare-fun m!4255 () Bool)

(assert (=> b!2092 m!4255))

(declare-fun m!4257 () Bool)

(assert (=> b!2091 m!4257))

(push 1)

(assert (not b!2093))

(assert (not start!663))

(assert (not b!2091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!1319 () array!82)

(declare-fun lt!1322 () (_ BitVec 32))

(declare-fun lt!1320 () (_ FloatingPoint 11 53))

(declare-fun e!998 () tuple4!40)

(declare-fun b!2107 () Bool)

(assert (=> b!2107 (= e!998 (computeModuloWhile!0 jz!42 q!70 lt!1319 lt!1322 lt!1320))))

(declare-fun b!2108 () Bool)

(declare-fun res!1835 () Bool)

(declare-fun e!997 () Bool)

(assert (=> b!2108 (=> (not res!1835) (not e!997))))

(declare-fun iqInv!0 (array!82) Bool)

(assert (=> b!2108 (= res!1835 (iqInv!0 lt!1307))))

(declare-fun b!2109 () Bool)

(declare-fun e!996 () Bool)

(declare-fun lt!1321 () tuple4!40)

(assert (=> b!2109 (= e!996 (bvsle (_3!52 lt!1321) #b00000000000000000000000000000000))))

(declare-fun b!2110 () Bool)

(declare-fun Unit!120 () Unit!117)

(assert (=> b!2110 (= e!998 (tuple4!41 Unit!120 lt!1319 lt!1322 lt!1320))))

(declare-fun b!2111 () Bool)

(assert (=> b!2111 (= e!997 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2112 () Bool)

(declare-fun res!1836 () Bool)

(assert (=> b!2112 (=> (not res!1836) (not e!996))))

(assert (=> b!2112 (= res!1836 (iqInv!0 (_2!64 lt!1321)))))

(declare-fun d!2025 () Bool)

(assert (=> d!2025 e!996))

(declare-fun res!1837 () Bool)

(assert (=> d!2025 (=> (not res!1837) (not e!996))))

(assert (=> d!2025 (= res!1837 (and true true (bvsle #b00000000000000000000000000000000 (_3!52 lt!1321)) (bvsle (_3!52 lt!1321) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!20 lt!1321)) (fp.leq (_4!20 lt!1321) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2025 (= lt!1321 e!998)))

(declare-fun c!343 () Bool)

(assert (=> d!2025 (= c!343 (bvsgt lt!1322 #b00000000000000000000000000000000))))

(assert (=> d!2025 (= lt!1322 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1318 () (_ FloatingPoint 11 53))

(assert (=> d!2025 (= lt!1320 (fp.add roundNearestTiesToEven (select (arr!35 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1318))))

(assert (=> d!2025 (= lt!1319 (array!83 (store (arr!36 lt!1307) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1306 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1318))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1306 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1318)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1306 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1318)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1306 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1318))))))) (size!36 lt!1307)))))

(assert (=> d!2025 (= lt!1318 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1306)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1306) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1306) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1306)))))))))

(assert (=> d!2025 e!997))

(declare-fun res!1834 () Bool)

(assert (=> d!2025 (=> (not res!1834) (not e!997))))

(assert (=> d!2025 (= res!1834 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1306) (fp.leq lt!1306 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2025 (= (computeModuloWhile!0 jz!42 q!70 lt!1307 jz!42 lt!1306) lt!1321)))

(assert (= (and d!2025 res!1834) b!2108))

(assert (= (and b!2108 res!1835) b!2111))

(assert (= (and d!2025 c!343) b!2107))

(assert (= (and d!2025 (not c!343)) b!2110))

(assert (= (and d!2025 res!1837) b!2112))

(assert (= (and b!2112 res!1836) b!2109))

(declare-fun m!4259 () Bool)

(assert (=> b!2107 m!4259))

(declare-fun m!4261 () Bool)

(assert (=> b!2108 m!4261))

(declare-fun m!4263 () Bool)

(assert (=> b!2112 m!4263))

(declare-fun m!4265 () Bool)

(assert (=> d!2025 m!4265))

(declare-fun m!4267 () Bool)

(assert (=> d!2025 m!4267))

(assert (=> b!2093 d!2025))

(declare-fun d!2027 () Bool)

(assert (=> d!2027 (= (array_inv!14 q!70) (bvsge (size!35 q!70) #b00000000000000000000000000000000))))

(assert (=> start!663 d!2027))

(declare-fun d!2029 () Bool)

(declare-fun res!1840 () Bool)

(declare-fun e!1001 () Bool)

(assert (=> d!2029 (=> (not res!1840) (not e!1001))))

(assert (=> d!2029 (= res!1840 (= (size!35 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2029 (= (qInv!0 q!70) e!1001)))

(declare-fun b!2115 () Bool)

(declare-fun lambda!84 () Int)

(declare-fun all20!0 (array!80 Int) Bool)

(assert (=> b!2115 (= e!1001 (all20!0 q!70 lambda!84))))

(assert (= (and d!2029 res!1840) b!2115))

(declare-fun m!4269 () Bool)

(assert (=> b!2115 m!4269))

(assert (=> b!2091 d!2029))

(push 1)

(assert (not b!2112))

(assert (not b!2115))

(assert (not b!2108))

(assert (not b!2107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

