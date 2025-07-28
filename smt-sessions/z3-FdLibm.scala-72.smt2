; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!653 () Bool)

(assert start!653)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!75 0))(
  ( (array!76 (arr!33 (Array (_ BitVec 32) (_ BitVec 32))) (size!33 (_ BitVec 32))) )
))
(declare-fun lt!1253 () array!75)

(declare-datatypes ((array!77 0))(
  ( (array!78 (arr!34 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!34 (_ BitVec 32))) )
))
(declare-fun q!70 () array!77)

(declare-fun b!1904 () Bool)

(declare-datatypes ((Unit!107 0))(
  ( (Unit!108) )
))
(declare-datatypes ((tuple4!38 0))(
  ( (tuple4!39 (_1!63 Unit!107) (_2!63 array!75) (_3!51 (_ BitVec 32)) (_4!19 (_ FloatingPoint 11 53))) )
))
(declare-fun e!938 () tuple4!38)

(declare-fun lt!1254 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!77 array!75 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!38)

(assert (=> b!1904 (= e!938 (computeModuloWhile!0 jz!42 q!70 lt!1253 jz!42 lt!1254))))

(declare-fun res!1660 () Bool)

(declare-fun e!937 () Bool)

(assert (=> start!653 (=> (not res!1660) (not e!937))))

(assert (=> start!653 (= res!1660 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!653 e!937))

(assert (=> start!653 true))

(declare-fun array_inv!13 (array!77) Bool)

(assert (=> start!653 (array_inv!13 q!70)))

(declare-fun b!1905 () Bool)

(declare-fun Unit!109 () Unit!107)

(assert (=> b!1905 (= e!938 (tuple4!39 Unit!109 lt!1253 jz!42 lt!1254))))

(declare-fun b!1903 () Bool)

(assert (=> b!1903 (= e!937 (fp.isNaN (fp.mul roundNearestTiesToEven (_4!19 e!938) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun c!328 () Bool)

(assert (=> b!1903 (= c!328 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1903 (= lt!1254 (select (arr!34 q!70) jz!42))))

(assert (=> b!1903 (= lt!1253 (array!76 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1902 () Bool)

(declare-fun res!1659 () Bool)

(assert (=> b!1902 (=> (not res!1659) (not e!937))))

(declare-fun qInv!0 (array!77) Bool)

(assert (=> b!1902 (= res!1659 (qInv!0 q!70))))

(assert (= (and start!653 res!1660) b!1902))

(assert (= (and b!1902 res!1659) b!1903))

(assert (= (and b!1903 c!328) b!1904))

(assert (= (and b!1903 (not c!328)) b!1905))

(declare-fun m!3441 () Bool)

(assert (=> b!1904 m!3441))

(declare-fun m!3443 () Bool)

(assert (=> start!653 m!3443))

(declare-fun m!3445 () Bool)

(assert (=> b!1903 m!3445))

(declare-fun m!3447 () Bool)

(assert (=> b!1902 m!3447))

(check-sat (not start!653) (not b!1902) (not b!1904))
(check-sat)
(get-model)

(declare-fun d!1507 () Bool)

(assert (=> d!1507 (= (array_inv!13 q!70) (bvsge (size!34 q!70) #b00000000000000000000000000000000))))

(assert (=> start!653 d!1507))

(declare-fun d!1509 () Bool)

(declare-fun res!1663 () Bool)

(declare-fun e!941 () Bool)

(assert (=> d!1509 (=> (not res!1663) (not e!941))))

(assert (=> d!1509 (= res!1663 (= (size!34 q!70) #b00000000000000000000000000010100))))

(assert (=> d!1509 (= (qInv!0 q!70) e!941)))

(declare-fun b!1908 () Bool)

(declare-fun lambda!73 () Int)

(declare-fun all20!0 (array!77 Int) Bool)

(assert (=> b!1908 (= e!941 (all20!0 q!70 lambda!73))))

(assert (= (and d!1509 res!1663) b!1908))

(declare-fun m!3449 () Bool)

(assert (=> b!1908 m!3449))

(assert (=> b!1902 d!1509))

(declare-fun b!1921 () Bool)

(declare-fun res!1674 () Bool)

(declare-fun e!948 () Bool)

(assert (=> b!1921 (=> (not res!1674) (not e!948))))

(declare-fun lt!1269 () tuple4!38)

(declare-fun iqInv!0 (array!75) Bool)

(assert (=> b!1921 (= res!1674 (iqInv!0 (_2!63 lt!1269)))))

(declare-fun lt!1266 () (_ BitVec 32))

(declare-fun b!1922 () Bool)

(declare-fun e!950 () tuple4!38)

(declare-fun lt!1268 () array!75)

(declare-fun lt!1267 () (_ FloatingPoint 11 53))

(declare-fun Unit!110 () Unit!107)

(assert (=> b!1922 (= e!950 (tuple4!39 Unit!110 lt!1268 lt!1266 lt!1267))))

(declare-fun b!1923 () Bool)

(declare-fun e!949 () Bool)

(assert (=> b!1923 (= e!949 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!1924 () Bool)

(assert (=> b!1924 (= e!948 (bvsle (_3!51 lt!1269) #b00000000000000000000000000000000))))

(declare-fun d!1511 () Bool)

(assert (=> d!1511 e!948))

(declare-fun res!1672 () Bool)

(assert (=> d!1511 (=> (not res!1672) (not e!948))))

(assert (=> d!1511 (= res!1672 (and true true (bvsle #b00000000000000000000000000000000 (_3!51 lt!1269)) (bvsle (_3!51 lt!1269) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!19 lt!1269)) (fp.leq (_4!19 lt!1269) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1511 (= lt!1269 e!950)))

(declare-fun c!331 () Bool)

(assert (=> d!1511 (= c!331 (bvsgt lt!1266 #b00000000000000000000000000000000))))

(assert (=> d!1511 (= lt!1266 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1265 () (_ FloatingPoint 11 53))

(assert (=> d!1511 (= lt!1267 (fp.add roundNearestTiesToEven (select (arr!34 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1265))))

(assert (=> d!1511 (= lt!1268 (array!76 (store (arr!33 lt!1253) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1254 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1265))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1254 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1265)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1254 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1265)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1254 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1265))))))) (size!33 lt!1253)))))

(assert (=> d!1511 (= lt!1265 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1254)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1254) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1254) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1254)))))))))

(assert (=> d!1511 e!949))

(declare-fun res!1673 () Bool)

(assert (=> d!1511 (=> (not res!1673) (not e!949))))

(assert (=> d!1511 (= res!1673 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1254) (fp.leq lt!1254 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1511 (= (computeModuloWhile!0 jz!42 q!70 lt!1253 jz!42 lt!1254) lt!1269)))

(declare-fun b!1925 () Bool)

(declare-fun res!1675 () Bool)

(assert (=> b!1925 (=> (not res!1675) (not e!949))))

(assert (=> b!1925 (= res!1675 (iqInv!0 lt!1253))))

(declare-fun b!1926 () Bool)

(assert (=> b!1926 (= e!950 (computeModuloWhile!0 jz!42 q!70 lt!1268 lt!1266 lt!1267))))

(assert (= (and d!1511 res!1673) b!1925))

(assert (= (and b!1925 res!1675) b!1923))

(assert (= (and d!1511 c!331) b!1926))

(assert (= (and d!1511 (not c!331)) b!1922))

(assert (= (and d!1511 res!1672) b!1921))

(assert (= (and b!1921 res!1674) b!1924))

(declare-fun m!3451 () Bool)

(assert (=> b!1921 m!3451))

(declare-fun m!3453 () Bool)

(assert (=> d!1511 m!3453))

(declare-fun m!3455 () Bool)

(assert (=> d!1511 m!3455))

(declare-fun m!3457 () Bool)

(assert (=> b!1925 m!3457))

(declare-fun m!3459 () Bool)

(assert (=> b!1926 m!3459))

(assert (=> b!1904 d!1511))

(check-sat (not b!1921) (not b!1926) (not b!1925) (not b!1908))
(check-sat)
