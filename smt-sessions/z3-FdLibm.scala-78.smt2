; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693 () Bool)

(assert start!693)

(declare-fun lt!1384 () (_ FloatingPoint 11 53))

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun b!2128 () Bool)

(declare-datatypes ((array!103 0))(
  ( (array!104 (arr!45 (Array (_ BitVec 32) (_ BitVec 32))) (size!45 (_ BitVec 32))) )
))
(declare-fun lt!1383 () array!103)

(declare-datatypes ((Unit!130 0))(
  ( (Unit!131) )
))
(declare-datatypes ((tuple4!50 0))(
  ( (tuple4!51 (_1!69 Unit!130) (_2!69 array!103) (_3!57 (_ BitVec 32)) (_4!25 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1049 () tuple4!50)

(declare-fun Unit!132 () Unit!130)

(assert (=> b!2128 (= e!1049 (tuple4!51 Unit!132 lt!1383 jz!42 lt!1384))))

(declare-datatypes ((array!105 0))(
  ( (array!106 (arr!46 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!46 (_ BitVec 32))) )
))
(declare-fun q!70 () array!105)

(declare-fun b!2127 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!105 array!103 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!50)

(assert (=> b!2127 (= e!1049 (computeModuloWhile!0 jz!42 q!70 lt!1383 jz!42 lt!1384))))

(declare-fun res!1821 () Bool)

(declare-fun e!1048 () Bool)

(assert (=> start!693 (=> (not res!1821) (not e!1048))))

(assert (=> start!693 (= res!1821 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!693 e!1048))

(assert (=> start!693 true))

(declare-fun array_inv!19 (array!105) Bool)

(assert (=> start!693 (array_inv!19 q!70)))

(declare-fun b!2126 () Bool)

(declare-fun lt!1382 () (_ FloatingPoint 11 53))

(declare-fun lt!1385 () tuple4!50)

(assert (=> b!2126 (= e!1048 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1382) (fp.lt lt!1382 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!45 (_2!69 lt!1385)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1382)) (not (fp.gt lt!1382 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (=> b!2126 (= lt!1382 (fp.sub roundNearestTiesToEven (_4!25 lt!1385) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!25 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!25 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!25 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!25 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2126 (= lt!1385 e!1049)))

(declare-fun c!359 () Bool)

(assert (=> b!2126 (= c!359 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2126 (= lt!1384 (select (arr!46 q!70) jz!42))))

(assert (=> b!2126 (= lt!1383 (array!104 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2125 () Bool)

(declare-fun res!1820 () Bool)

(assert (=> b!2125 (=> (not res!1820) (not e!1048))))

(declare-fun qInv!0 (array!105) Bool)

(assert (=> b!2125 (= res!1820 (qInv!0 q!70))))

(assert (= (and start!693 res!1821) b!2125))

(assert (= (and b!2125 res!1820) b!2126))

(assert (= (and b!2126 c!359) b!2127))

(assert (= (and b!2126 (not c!359)) b!2128))

(declare-fun m!3673 () Bool)

(assert (=> b!2127 m!3673))

(declare-fun m!3675 () Bool)

(assert (=> start!693 m!3675))

(declare-fun m!3677 () Bool)

(assert (=> b!2126 m!3677))

(declare-fun m!3679 () Bool)

(assert (=> b!2126 m!3679))

(declare-fun m!3681 () Bool)

(assert (=> b!2125 m!3681))

(check-sat (not start!693) (not b!2127) (not b!2125))
(check-sat)
