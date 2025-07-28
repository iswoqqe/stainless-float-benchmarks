; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707 () Bool)

(assert start!707)

(declare-fun lt!1477 () (_ BitVec 32))

(declare-fun b!2217 () Bool)

(declare-fun lt!1472 () (_ BitVec 32))

(declare-datatypes ((Unit!151 0))(
  ( (Unit!152) )
))
(declare-datatypes ((array!131 0))(
  ( (array!132 (arr!59 (Array (_ BitVec 32) (_ BitVec 32))) (size!59 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!64 0))(
  ( (tuple4!65 (_1!76 Unit!151) (_2!76 (_ BitVec 32)) (_3!64 array!131) (_4!32 (_ BitVec 32))) )
))
(declare-fun e!1120 () tuple4!64)

(declare-datatypes ((tuple4!66 0))(
  ( (tuple4!67 (_1!77 Unit!151) (_2!77 array!131) (_3!65 (_ BitVec 32)) (_4!33 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1475 () tuple4!66)

(declare-fun Unit!153 () Unit!151)

(assert (=> b!2217 (= e!1120 (tuple4!65 Unit!153 lt!1477 (_2!77 lt!1475) lt!1472))))

(declare-fun b!2218 () Bool)

(declare-fun res!1868 () Bool)

(declare-fun e!1117 () Bool)

(assert (=> b!2218 (=> (not res!1868) (not e!1117))))

(declare-datatypes ((array!133 0))(
  ( (array!134 (arr!60 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!60 (_ BitVec 32))) )
))
(declare-fun q!70 () array!133)

(declare-fun qInv!0 (array!133) Bool)

(assert (=> b!2218 (= res!1868 (qInv!0 q!70))))

(declare-fun lt!1476 () array!131)

(declare-fun e!1119 () tuple4!66)

(declare-fun lt!1473 () (_ FloatingPoint 11 53))

(declare-fun b!2219 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun Unit!154 () Unit!151)

(assert (=> b!2219 (= e!1119 (tuple4!67 Unit!154 lt!1476 jz!42 lt!1473))))

(declare-fun b!2220 () Bool)

(declare-fun e!1121 () Bool)

(assert (=> b!2220 (= e!1121 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1474 () tuple4!64)

(assert (=> b!2220 (= lt!1474 e!1120)))

(declare-fun c!382 () Bool)

(assert (=> b!2220 (= c!382 (bvslt lt!1477 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2220 (= lt!1477 #b00000000000000000000000000000000)))

(declare-fun b!2221 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!133 array!131 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!66)

(assert (=> b!2221 (= e!1119 (computeModuloWhile!0 jz!42 q!70 lt!1476 jz!42 lt!1473))))

(declare-fun b!2222 () Bool)

(declare-fun e!1118 () Bool)

(assert (=> b!2222 (= e!1118 e!1121)))

(declare-fun res!1869 () Bool)

(assert (=> b!2222 (=> (not res!1869) (not e!1121))))

(assert (=> b!2222 (= res!1869 (bvsge (select (arr!59 (_2!77 lt!1475)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2222 (= lt!1472 #b00000000000000000000000000000000)))

(declare-fun b!2223 () Bool)

(assert (=> b!2223 (= e!1117 e!1118)))

(declare-fun res!1866 () Bool)

(assert (=> b!2223 (=> (not res!1866) (not e!1118))))

(declare-fun lt!1478 () (_ FloatingPoint 11 53))

(assert (=> b!2223 (= res!1866 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1478) (fp.lt lt!1478 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2223 (= lt!1478 (fp.sub roundNearestTiesToEven (_4!33 lt!1475) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!33 lt!1475) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!33 lt!1475) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!33 lt!1475) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!33 lt!1475) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2223 (= lt!1475 e!1119)))

(declare-fun c!383 () Bool)

(assert (=> b!2223 (= c!383 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2223 (= lt!1473 (select (arr!60 q!70) jz!42))))

(assert (=> b!2223 (= lt!1476 (array!132 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1867 () Bool)

(assert (=> start!707 (=> (not res!1867) (not e!1117))))

(assert (=> start!707 (= res!1867 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!707 e!1117))

(assert (=> start!707 true))

(declare-fun array_inv!26 (array!133) Bool)

(assert (=> start!707 (array_inv!26 q!70)))

(declare-fun b!2224 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!133 (_ BitVec 32) array!131 (_ BitVec 32)) tuple4!64)

(assert (=> b!2224 (= e!1120 (computeModuloWhile!1 jz!42 q!70 lt!1477 (_2!77 lt!1475) lt!1472))))

(assert (= (and start!707 res!1867) b!2218))

(assert (= (and b!2218 res!1868) b!2223))

(assert (= (and b!2223 c!383) b!2221))

(assert (= (and b!2223 (not c!383)) b!2219))

(assert (= (and b!2223 res!1866) b!2222))

(assert (= (and b!2222 res!1869) b!2220))

(assert (= (and b!2220 c!382) b!2224))

(assert (= (and b!2220 (not c!382)) b!2217))

(declare-fun m!3743 () Bool)

(assert (=> b!2221 m!3743))

(declare-fun m!3745 () Bool)

(assert (=> b!2223 m!3745))

(declare-fun m!3747 () Bool)

(assert (=> b!2222 m!3747))

(declare-fun m!3749 () Bool)

(assert (=> start!707 m!3749))

(declare-fun m!3751 () Bool)

(assert (=> b!2218 m!3751))

(declare-fun m!3753 () Bool)

(assert (=> b!2224 m!3753))

(check-sat (not b!2221) (not b!2224) (not start!707) (not b!2218))
(check-sat)
