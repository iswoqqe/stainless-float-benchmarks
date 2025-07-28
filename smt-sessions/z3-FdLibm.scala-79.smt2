; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695 () Bool)

(assert start!695)

(declare-datatypes ((array!107 0))(
  ( (array!108 (arr!47 (Array (_ BitVec 32) (_ BitVec 32))) (size!47 (_ BitVec 32))) )
))
(declare-fun lt!1397 () array!107)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!109 0))(
  ( (array!110 (arr!48 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!48 (_ BitVec 32))) )
))
(declare-fun q!70 () array!109)

(declare-fun lt!1394 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!133 0))(
  ( (Unit!134) )
))
(declare-datatypes ((tuple4!52 0))(
  ( (tuple4!53 (_1!70 Unit!133) (_2!70 array!107) (_3!58 (_ BitVec 32)) (_4!26 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1059 () tuple4!52)

(declare-fun b!2139 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!109 array!107 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!52)

(assert (=> b!2139 (= e!1059 (computeModuloWhile!0 jz!42 q!70 lt!1397 jz!42 lt!1394))))

(declare-fun b!2138 () Bool)

(declare-fun lt!1395 () tuple4!52)

(declare-fun lt!1396 () (_ FloatingPoint 11 53))

(declare-fun e!1058 () Bool)

(assert (=> b!2138 (= e!1058 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1396) (fp.lt lt!1396 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!47 (_2!70 lt!1395)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1396)) (fp.gt lt!1396 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!1396 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (=> b!2138 (= lt!1396 (fp.sub roundNearestTiesToEven (_4!26 lt!1395) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!26 lt!1395) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!26 lt!1395) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!26 lt!1395) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!26 lt!1395) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2138 (= lt!1395 e!1059)))

(declare-fun c!362 () Bool)

(assert (=> b!2138 (= c!362 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2138 (= lt!1394 (select (arr!48 q!70) jz!42))))

(assert (=> b!2138 (= lt!1397 (array!108 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2140 () Bool)

(declare-fun Unit!135 () Unit!133)

(assert (=> b!2140 (= e!1059 (tuple4!53 Unit!135 lt!1397 jz!42 lt!1394))))

(declare-fun res!1826 () Bool)

(assert (=> start!695 (=> (not res!1826) (not e!1058))))

(assert (=> start!695 (= res!1826 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!695 e!1058))

(assert (=> start!695 true))

(declare-fun array_inv!20 (array!109) Bool)

(assert (=> start!695 (array_inv!20 q!70)))

(declare-fun b!2137 () Bool)

(declare-fun res!1827 () Bool)

(assert (=> b!2137 (=> (not res!1827) (not e!1058))))

(declare-fun qInv!0 (array!109) Bool)

(assert (=> b!2137 (= res!1827 (qInv!0 q!70))))

(assert (= (and start!695 res!1826) b!2137))

(assert (= (and b!2137 res!1827) b!2138))

(assert (= (and b!2138 c!362) b!2139))

(assert (= (and b!2138 (not c!362)) b!2140))

(declare-fun m!3683 () Bool)

(assert (=> b!2139 m!3683))

(declare-fun m!3685 () Bool)

(assert (=> b!2138 m!3685))

(declare-fun m!3687 () Bool)

(assert (=> b!2138 m!3687))

(declare-fun m!3689 () Bool)

(assert (=> start!695 m!3689))

(declare-fun m!3691 () Bool)

(assert (=> b!2137 m!3691))

(check-sat (not b!2137) (not start!695) (not b!2139))
(check-sat)
