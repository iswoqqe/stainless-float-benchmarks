; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645 () Bool)

(assert start!645)

(declare-fun b!1534 () Bool)

(declare-fun res!1322 () Bool)

(declare-fun e!866 () Bool)

(assert (=> b!1534 (=> (not res!1322) (not e!866))))

(declare-datatypes ((array!75 0))(
  ( (array!76 (arr!33 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!33 (_ BitVec 32))) )
))
(declare-fun q!70 () array!75)

(declare-fun qInv!0 (array!75) Bool)

(assert (=> b!1534 (= res!1322 (qInv!0 q!70))))

(declare-fun b!1535 () Bool)

(declare-datatypes ((Unit!92 0))(
  ( (Unit!93) )
))
(declare-datatypes ((array!77 0))(
  ( (array!78 (arr!34 (Array (_ BitVec 32) (_ BitVec 32))) (size!34 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!38 0))(
  ( (tuple4!39 (_1!63 Unit!92) (_2!63 array!77) (_3!51 (_ BitVec 32)) (_4!19 (_ FloatingPoint 11 53))) )
))
(declare-fun e!867 () tuple4!38)

(assert (=> b!1535 (= e!866 (fp.isNaN (fp.mul roundNearestTiesToEven (_4!19 e!867) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun c!313 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!1535 (= c!313 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1181 () (_ FloatingPoint 11 53))

(assert (=> b!1535 (= lt!1181 (select (arr!33 q!70) jz!42))))

(declare-fun lt!1182 () array!77)

(assert (=> b!1535 (= lt!1182 (array!78 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1321 () Bool)

(assert (=> start!645 (=> (not res!1321) (not e!866))))

(assert (=> start!645 (= res!1321 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!645 e!866))

(assert (=> start!645 true))

(declare-fun array_inv!13 (array!75) Bool)

(assert (=> start!645 (array_inv!13 q!70)))

(declare-fun b!1536 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!75 array!77 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!38)

(assert (=> b!1536 (= e!867 (computeModuloWhile!0 jz!42 q!70 lt!1182 jz!42 lt!1181))))

(declare-fun b!1537 () Bool)

(declare-fun Unit!94 () Unit!92)

(assert (=> b!1537 (= e!867 (tuple4!39 Unit!94 lt!1182 jz!42 lt!1181))))

(assert (= (and start!645 res!1321) b!1534))

(assert (= (and b!1534 res!1322) b!1535))

(assert (= (and b!1535 c!313) b!1536))

(assert (= (and b!1535 (not c!313)) b!1537))

(declare-fun m!1833 () Bool)

(assert (=> b!1534 m!1833))

(declare-fun m!1835 () Bool)

(assert (=> b!1535 m!1835))

(declare-fun m!1837 () Bool)

(assert (=> start!645 m!1837))

(declare-fun m!1839 () Bool)

(assert (=> b!1536 m!1839))

(check-sat (not b!1536) (not b!1534) (not start!645))
(check-sat)
(get-model)

(declare-fun b!1550 () Bool)

(declare-fun lt!1195 () (_ FloatingPoint 11 53))

(declare-fun lt!1196 () (_ BitVec 32))

(declare-fun e!874 () tuple4!38)

(declare-fun lt!1193 () array!77)

(assert (=> b!1550 (= e!874 (computeModuloWhile!0 jz!42 q!70 lt!1193 lt!1196 lt!1195))))

(declare-fun b!1551 () Bool)

(declare-fun e!876 () Bool)

(assert (=> b!1551 (= e!876 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!1552 () Bool)

(declare-fun Unit!95 () Unit!92)

(assert (=> b!1552 (= e!874 (tuple4!39 Unit!95 lt!1193 lt!1196 lt!1195))))

(declare-fun b!1553 () Bool)

(declare-fun e!875 () Bool)

(declare-fun lt!1194 () tuple4!38)

(assert (=> b!1553 (= e!875 (bvsle (_3!51 lt!1194) #b00000000000000000000000000000000))))

(declare-fun d!823 () Bool)

(assert (=> d!823 e!875))

(declare-fun res!1332 () Bool)

(assert (=> d!823 (=> (not res!1332) (not e!875))))

(assert (=> d!823 (= res!1332 (and true true (bvsle #b00000000000000000000000000000000 (_3!51 lt!1194)) (bvsle (_3!51 lt!1194) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!19 lt!1194)) (fp.leq (_4!19 lt!1194) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!823 (= lt!1194 e!874)))

(declare-fun c!316 () Bool)

(assert (=> d!823 (= c!316 (bvsgt lt!1196 #b00000000000000000000000000000000))))

(assert (=> d!823 (= lt!1196 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1197 () (_ FloatingPoint 11 53))

(assert (=> d!823 (= lt!1195 (fp.add roundNearestTiesToEven (select (arr!33 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1197))))

(assert (=> d!823 (= lt!1193 (array!78 (store (arr!34 lt!1182) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1181 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1197))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1181 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1197)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1181 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1197)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1181 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1197))))))) (size!34 lt!1182)))))

(assert (=> d!823 (= lt!1197 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1181)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1181) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1181) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1181)))))))))

(assert (=> d!823 e!876))

(declare-fun res!1334 () Bool)

(assert (=> d!823 (=> (not res!1334) (not e!876))))

(assert (=> d!823 (= res!1334 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1181) (fp.leq lt!1181 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!823 (= (computeModuloWhile!0 jz!42 q!70 lt!1182 jz!42 lt!1181) lt!1194)))

(declare-fun b!1554 () Bool)

(declare-fun res!1333 () Bool)

(assert (=> b!1554 (=> (not res!1333) (not e!875))))

(declare-fun iqInv!0 (array!77) Bool)

(assert (=> b!1554 (= res!1333 (iqInv!0 (_2!63 lt!1194)))))

(declare-fun b!1555 () Bool)

(declare-fun res!1331 () Bool)

(assert (=> b!1555 (=> (not res!1331) (not e!876))))

(assert (=> b!1555 (= res!1331 (iqInv!0 lt!1182))))

(assert (= (and d!823 res!1334) b!1555))

(assert (= (and b!1555 res!1331) b!1551))

(assert (= (and d!823 c!316) b!1550))

(assert (= (and d!823 (not c!316)) b!1552))

(assert (= (and d!823 res!1332) b!1554))

(assert (= (and b!1554 res!1333) b!1553))

(declare-fun m!1841 () Bool)

(assert (=> b!1550 m!1841))

(declare-fun m!1843 () Bool)

(assert (=> d!823 m!1843))

(declare-fun m!1845 () Bool)

(assert (=> d!823 m!1845))

(declare-fun m!1847 () Bool)

(assert (=> b!1554 m!1847))

(declare-fun m!1849 () Bool)

(assert (=> b!1555 m!1849))

(assert (=> b!1536 d!823))

(declare-fun d!825 () Bool)

(declare-fun res!1337 () Bool)

(declare-fun e!879 () Bool)

(assert (=> d!825 (=> (not res!1337) (not e!879))))

(assert (=> d!825 (= res!1337 (= (size!33 q!70) #b00000000000000000000000000010100))))

(assert (=> d!825 (= (qInv!0 q!70) e!879)))

(declare-fun b!1558 () Bool)

(declare-fun lambda!55 () Int)

(declare-fun all20!0 (array!75 Int) Bool)

(assert (=> b!1558 (= e!879 (all20!0 q!70 lambda!55))))

(assert (= (and d!825 res!1337) b!1558))

(declare-fun m!1851 () Bool)

(assert (=> b!1558 m!1851))

(assert (=> b!1534 d!825))

(declare-fun d!827 () Bool)

(assert (=> d!827 (= (array_inv!13 q!70) (bvsge (size!33 q!70) #b00000000000000000000000000000000))))

(assert (=> start!645 d!827))

(check-sat (not b!1558) (not b!1555) (not b!1550) (not b!1554))
(check-sat)
