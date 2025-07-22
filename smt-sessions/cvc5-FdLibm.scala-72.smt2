; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!655 () Bool)

(assert start!655)

(declare-fun b!2059 () Bool)

(declare-fun e!967 () Bool)

(declare-datatypes ((Unit!113 0))(
  ( (Unit!114) )
))
(declare-datatypes ((array!75 0))(
  ( (array!76 (arr!33 (Array (_ BitVec 32) (_ BitVec 32))) (size!33 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!38 0))(
  ( (tuple4!39 (_1!63 Unit!113) (_2!63 array!75) (_3!51 (_ BitVec 32)) (_4!19 (_ FloatingPoint 11 53))) )
))
(declare-fun e!966 () tuple4!38)

(assert (=> b!2059 (= e!967 (fp.isNaN (fp.mul roundNearestTiesToEven (_4!19 e!966) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun c!334 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2059 (= c!334 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1282 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!77 0))(
  ( (array!78 (arr!34 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!34 (_ BitVec 32))) )
))
(declare-fun q!70 () array!77)

(assert (=> b!2059 (= lt!1282 (select (arr!34 q!70) jz!42))))

(declare-fun lt!1283 () array!75)

(assert (=> b!2059 (= lt!1283 (array!76 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2058 () Bool)

(declare-fun res!1804 () Bool)

(assert (=> b!2058 (=> (not res!1804) (not e!967))))

(declare-fun qInv!0 (array!77) Bool)

(assert (=> b!2058 (= res!1804 (qInv!0 q!70))))

(declare-fun res!1803 () Bool)

(assert (=> start!655 (=> (not res!1803) (not e!967))))

(assert (=> start!655 (= res!1803 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!655 e!967))

(assert (=> start!655 true))

(declare-fun array_inv!13 (array!77) Bool)

(assert (=> start!655 (array_inv!13 q!70)))

(declare-fun b!2060 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!77 array!75 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!38)

(assert (=> b!2060 (= e!966 (computeModuloWhile!0 jz!42 q!70 lt!1283 jz!42 lt!1282))))

(declare-fun b!2061 () Bool)

(declare-fun Unit!115 () Unit!113)

(assert (=> b!2061 (= e!966 (tuple4!39 Unit!115 lt!1283 jz!42 lt!1282))))

(assert (= (and start!655 res!1803) b!2058))

(assert (= (and b!2058 res!1804) b!2059))

(assert (= (and b!2059 c!334) b!2060))

(assert (= (and b!2059 (not c!334)) b!2061))

(declare-fun m!4231 () Bool)

(assert (=> b!2059 m!4231))

(declare-fun m!4233 () Bool)

(assert (=> b!2058 m!4233))

(declare-fun m!4235 () Bool)

(assert (=> start!655 m!4235))

(declare-fun m!4237 () Bool)

(assert (=> b!2060 m!4237))

(push 1)

(assert (not b!2058))

(assert (not start!655))

(assert (not b!2060))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2018 () Bool)

(declare-fun res!1807 () Bool)

(declare-fun e!971 () Bool)

(assert (=> d!2018 (=> (not res!1807) (not e!971))))

(assert (=> d!2018 (= res!1807 (= (size!34 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2018 (= (qInv!0 q!70) e!971)))

(declare-fun b!2064 () Bool)

(declare-fun lambda!81 () Int)

(declare-fun all20!0 (array!77 Int) Bool)

(assert (=> b!2064 (= e!971 (all20!0 q!70 lambda!81))))

(assert (= (and d!2018 res!1807) b!2064))

(declare-fun m!4239 () Bool)

(assert (=> b!2064 m!4239))

(assert (=> b!2058 d!2018))

(declare-fun d!2020 () Bool)

(assert (=> d!2020 (= (array_inv!13 q!70) (bvsge (size!34 q!70) #b00000000000000000000000000000000))))

(assert (=> start!655 d!2020))

(declare-fun b!2077 () Bool)

(declare-fun e!979 () Bool)

(declare-fun lt!1297 () tuple4!38)

(assert (=> b!2077 (= e!979 (bvsle (_3!51 lt!1297) #b00000000000000000000000000000000))))

(declare-fun b!2078 () Bool)

(declare-fun e!980 () tuple4!38)

(declare-fun lt!1296 () (_ BitVec 32))

(declare-fun lt!1298 () array!75)

(declare-fun lt!1295 () (_ FloatingPoint 11 53))

(declare-fun Unit!116 () Unit!113)

(assert (=> b!2078 (= e!980 (tuple4!39 Unit!116 lt!1298 lt!1296 lt!1295))))

(declare-fun b!2079 () Bool)

(declare-fun res!1817 () Bool)

(declare-fun e!978 () Bool)

(assert (=> b!2079 (=> (not res!1817) (not e!978))))

(declare-fun iqInv!0 (array!75) Bool)

(assert (=> b!2079 (= res!1817 (iqInv!0 lt!1283))))

(declare-fun b!2081 () Bool)

(assert (=> b!2081 (= e!978 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2082 () Bool)

(declare-fun res!1816 () Bool)

(assert (=> b!2082 (=> (not res!1816) (not e!979))))

(assert (=> b!2082 (= res!1816 (iqInv!0 (_2!63 lt!1297)))))

(declare-fun b!2080 () Bool)

(assert (=> b!2080 (= e!980 (computeModuloWhile!0 jz!42 q!70 lt!1298 lt!1296 lt!1295))))

(declare-fun d!2022 () Bool)

(assert (=> d!2022 e!979))

(declare-fun res!1819 () Bool)

(assert (=> d!2022 (=> (not res!1819) (not e!979))))

(assert (=> d!2022 (= res!1819 (and true true (bvsle #b00000000000000000000000000000000 (_3!51 lt!1297)) (bvsle (_3!51 lt!1297) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!19 lt!1297)) (fp.leq (_4!19 lt!1297) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2022 (= lt!1297 e!980)))

(declare-fun c!337 () Bool)

(assert (=> d!2022 (= c!337 (bvsgt lt!1296 #b00000000000000000000000000000000))))

(assert (=> d!2022 (= lt!1296 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1294 () (_ FloatingPoint 11 53))

(assert (=> d!2022 (= lt!1295 (fp.add roundNearestTiesToEven (select (arr!34 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1294))))

(assert (=> d!2022 (= lt!1298 (array!76 (store (arr!33 lt!1283) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1282 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1294))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1282 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1294)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1282 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1294)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1282 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1294))))))) (size!33 lt!1283)))))

(assert (=> d!2022 (= lt!1294 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1282)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1282) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1282) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1282)))))))))

(assert (=> d!2022 e!978))

(declare-fun res!1818 () Bool)

(assert (=> d!2022 (=> (not res!1818) (not e!978))))

(assert (=> d!2022 (= res!1818 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1282) (fp.leq lt!1282 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2022 (= (computeModuloWhile!0 jz!42 q!70 lt!1283 jz!42 lt!1282) lt!1297)))

(assert (= (and d!2022 res!1818) b!2079))

(assert (= (and b!2079 res!1817) b!2081))

(assert (= (and d!2022 c!337) b!2080))

(assert (= (and d!2022 (not c!337)) b!2078))

(assert (= (and d!2022 res!1819) b!2082))

(assert (= (and b!2082 res!1816) b!2077))

(declare-fun m!4241 () Bool)

(assert (=> b!2079 m!4241))

(declare-fun m!4243 () Bool)

(assert (=> b!2082 m!4243))

(declare-fun m!4245 () Bool)

(assert (=> b!2080 m!4245))

(declare-fun m!4247 () Bool)

(assert (=> d!2022 m!4247))

(declare-fun m!4249 () Bool)

(assert (=> d!2022 m!4249))

(assert (=> b!2060 d!2022))

(push 1)

(assert (not b!2082))

(assert (not b!2080))

(assert (not b!2064))

(assert (not b!2079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

