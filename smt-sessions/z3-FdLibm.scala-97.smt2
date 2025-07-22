; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!787 () Bool)

(assert start!787)

(declare-datatypes ((array!186 0))(
  ( (array!187 (arr!83 (Array (_ BitVec 32) (_ BitVec 32))) (size!83 (_ BitVec 32))) )
))
(declare-fun lt!2048 () array!186)

(declare-datatypes ((Unit!225 0))(
  ( (Unit!226) )
))
(declare-datatypes ((tuple4!112 0))(
  ( (tuple4!113 (_1!106 Unit!225) (_2!106 array!186) (_3!94 (_ BitVec 32)) (_4!56 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1474 () tuple4!112)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun b!2687 () Bool)

(declare-fun lt!2046 () (_ FloatingPoint 11 53))

(declare-fun Unit!227 () Unit!225)

(assert (=> b!2687 (= e!1474 (tuple4!113 Unit!227 lt!2048 jz!42 lt!2046))))

(declare-fun b!2688 () Bool)

(declare-datatypes ((tuple3!76 0))(
  ( (tuple3!77 (_1!107 Unit!225) (_2!107 array!186) (_3!95 (_ BitVec 32))) )
))
(declare-fun e!1475 () tuple3!76)

(declare-fun lt!2043 () tuple4!112)

(declare-fun lt!2042 () (_ BitVec 32))

(declare-fun Unit!228 () Unit!225)

(assert (=> b!2688 (= e!1475 (tuple3!77 Unit!228 (_2!106 lt!2043) lt!2042))))

(declare-datatypes ((array!188 0))(
  ( (array!189 (arr!84 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!84 (_ BitVec 32))) )
))
(declare-fun q!70 () array!188)

(declare-fun b!2689 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!188 array!186 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!112)

(assert (=> b!2689 (= e!1474 (computeModuloWhile!0 jz!42 q!70 lt!2048 jz!42 lt!2046))))

(declare-fun b!2690 () Bool)

(declare-fun res!2041 () Bool)

(declare-fun e!1472 () Bool)

(assert (=> b!2690 (=> (not res!2041) (not e!1472))))

(declare-fun qInv!0 (array!188) Bool)

(assert (=> b!2690 (= res!2041 (qInv!0 q!70))))

(declare-datatypes ((tuple4!114 0))(
  ( (tuple4!115 (_1!108 Unit!225) (_2!108 (_ BitVec 32)) (_3!96 array!186) (_4!57 (_ BitVec 32))) )
))
(declare-fun e!1471 () tuple4!114)

(declare-fun b!2691 () Bool)

(declare-fun lt!2049 () (_ BitVec 32))

(declare-fun Unit!229 () Unit!225)

(assert (=> b!2691 (= e!1471 (tuple4!115 Unit!229 lt!2049 (_2!106 lt!2043) lt!2042))))

(declare-fun b!2692 () Bool)

(declare-fun e!1473 () Bool)

(declare-fun lt!2050 () tuple3!76)

(assert (=> b!2692 (= e!1473 false)))

(assert (=> b!2692 (= lt!2050 e!1475)))

(declare-fun c!531 () Bool)

(assert (=> b!2692 (= c!531 (bvsge (select (arr!83 (_2!106 lt!2043)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2692 (= lt!2042 #b00000000000000000000000000000000)))

(declare-fun res!2040 () Bool)

(assert (=> start!787 (=> (not res!2040) (not e!1472))))

(assert (=> start!787 (= res!2040 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!787 e!1472))

(assert (=> start!787 true))

(declare-fun array_inv!38 (array!188) Bool)

(assert (=> start!787 (array_inv!38 q!70)))

(declare-fun lt!2047 () tuple4!114)

(declare-fun lt!2045 () (_ BitVec 32))

(declare-fun b!2693 () Bool)

(declare-fun Unit!230 () Unit!225)

(assert (=> b!2693 (= e!1475 (tuple3!77 Unit!230 (array!187 (store (arr!83 (_3!96 lt!2047)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!57 lt!2047) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!2045) (bvsub #b00000000111111111111111111111111 lt!2045))) (size!83 (_3!96 lt!2047))) (_4!57 lt!2047)))))

(assert (=> b!2693 (= lt!2049 #b00000000000000000000000000000000)))

(declare-fun c!532 () Bool)

(assert (=> b!2693 (= c!532 (bvslt lt!2049 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2693 (= lt!2047 e!1471)))

(assert (=> b!2693 (= lt!2045 (select (arr!83 (_3!96 lt!2047)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!2694 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!188 (_ BitVec 32) array!186 (_ BitVec 32)) tuple4!114)

(assert (=> b!2694 (= e!1471 (computeModuloWhile!1 jz!42 q!70 lt!2049 (_2!106 lt!2043) lt!2042))))

(declare-fun b!2695 () Bool)

(assert (=> b!2695 (= e!1472 e!1473)))

(declare-fun res!2042 () Bool)

(assert (=> b!2695 (=> (not res!2042) (not e!1473))))

(declare-fun lt!2044 () (_ FloatingPoint 11 53))

(assert (=> b!2695 (= res!2042 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2044) (fp.lt lt!2044 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2695 (= lt!2044 (fp.sub roundNearestTiesToEven (_4!56 lt!2043) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!56 lt!2043) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!56 lt!2043) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!56 lt!2043) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!56 lt!2043) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2695 (= lt!2043 e!1474)))

(declare-fun c!530 () Bool)

(assert (=> b!2695 (= c!530 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2695 (= lt!2046 (select (arr!84 q!70) jz!42))))

(assert (=> b!2695 (= lt!2048 (array!187 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!787 res!2040) b!2690))

(assert (= (and b!2690 res!2041) b!2695))

(assert (= (and b!2695 c!530) b!2689))

(assert (= (and b!2695 (not c!530)) b!2687))

(assert (= (and b!2695 res!2042) b!2692))

(assert (= (and b!2692 c!531) b!2693))

(assert (= (and b!2692 (not c!531)) b!2688))

(assert (= (and b!2693 c!532) b!2694))

(assert (= (and b!2693 (not c!532)) b!2691))

(declare-fun m!2821 () Bool)

(assert (=> b!2692 m!2821))

(declare-fun m!2823 () Bool)

(assert (=> b!2692 m!2823))

(declare-fun m!2825 () Bool)

(assert (=> start!787 m!2825))

(declare-fun m!2827 () Bool)

(assert (=> b!2695 m!2827))

(declare-fun m!2829 () Bool)

(assert (=> b!2690 m!2829))

(declare-fun m!2831 () Bool)

(assert (=> b!2694 m!2831))

(declare-fun m!2833 () Bool)

(assert (=> b!2693 m!2833))

(declare-fun m!2835 () Bool)

(assert (=> b!2693 m!2835))

(declare-fun m!2837 () Bool)

(assert (=> b!2689 m!2837))

(check-sat (not b!2690) (not start!787) (not b!2694) (not b!2689))
(check-sat)
