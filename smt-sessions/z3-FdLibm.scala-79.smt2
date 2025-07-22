; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!687 () Bool)

(assert start!687)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!107 0))(
  ( (array!108 (arr!47 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!47 (_ BitVec 32))) )
))
(declare-fun q!70 () array!107)

(declare-datatypes ((Unit!118 0))(
  ( (Unit!119) )
))
(declare-datatypes ((array!109 0))(
  ( (array!110 (arr!48 (Array (_ BitVec 32) (_ BitVec 32))) (size!48 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!52 0))(
  ( (tuple4!53 (_1!70 Unit!118) (_2!70 array!109) (_3!58 (_ BitVec 32)) (_4!26 (_ FloatingPoint 11 53))) )
))
(declare-fun e!988 () tuple4!52)

(declare-fun lt!1325 () (_ FloatingPoint 11 53))

(declare-fun lt!1322 () array!109)

(declare-fun b!1771 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!107 array!109 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!52)

(assert (=> b!1771 (= e!988 (computeModuloWhile!0 jz!42 q!70 lt!1322 jz!42 lt!1325))))

(declare-fun b!1769 () Bool)

(declare-fun res!1488 () Bool)

(declare-fun e!987 () Bool)

(assert (=> b!1769 (=> (not res!1488) (not e!987))))

(declare-fun qInv!0 (array!107) Bool)

(assert (=> b!1769 (= res!1488 (qInv!0 q!70))))

(declare-fun b!1772 () Bool)

(declare-fun Unit!120 () Unit!118)

(assert (=> b!1772 (= e!988 (tuple4!53 Unit!120 lt!1322 jz!42 lt!1325))))

(declare-fun lt!1324 () tuple4!52)

(declare-fun lt!1323 () (_ FloatingPoint 11 53))

(declare-fun b!1770 () Bool)

(assert (=> b!1770 (= e!987 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1323) (fp.lt lt!1323 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!48 (_2!70 lt!1324)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1323)) (fp.gt lt!1323 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!1323 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (=> b!1770 (= lt!1323 (fp.sub roundNearestTiesToEven (_4!26 lt!1324) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!26 lt!1324) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!26 lt!1324) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!26 lt!1324) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!26 lt!1324) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1770 (= lt!1324 e!988)))

(declare-fun c!347 () Bool)

(assert (=> b!1770 (= c!347 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1770 (= lt!1325 (select (arr!47 q!70) jz!42))))

(assert (=> b!1770 (= lt!1322 (array!110 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1489 () Bool)

(assert (=> start!687 (=> (not res!1489) (not e!987))))

(assert (=> start!687 (= res!1489 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!687 e!987))

(assert (=> start!687 true))

(declare-fun array_inv!20 (array!107) Bool)

(assert (=> start!687 (array_inv!20 q!70)))

(assert (= (and start!687 res!1489) b!1769))

(assert (= (and b!1769 res!1488) b!1770))

(assert (= (and b!1770 c!347) b!1771))

(assert (= (and b!1770 (not c!347)) b!1772))

(declare-fun m!2075 () Bool)

(assert (=> b!1771 m!2075))

(declare-fun m!2077 () Bool)

(assert (=> b!1769 m!2077))

(declare-fun m!2079 () Bool)

(assert (=> b!1770 m!2079))

(declare-fun m!2081 () Bool)

(assert (=> b!1770 m!2081))

(declare-fun m!2083 () Bool)

(assert (=> start!687 m!2083))

(check-sat (not b!1771) (not start!687) (not b!1769))
(check-sat)
