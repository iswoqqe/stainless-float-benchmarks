; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743 () Bool)

(assert start!743)

(declare-fun b!2199 () Bool)

(declare-fun e!1251 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2199 (= e!1251 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-datatypes ((Unit!172 0))(
  ( (Unit!173) )
))
(declare-datatypes ((array!159 0))(
  ( (array!160 (arr!71 (Array (_ BitVec 32) (_ BitVec 32))) (size!71 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!64 0))(
  ( (tuple3!65 (_1!88 Unit!172) (_2!88 array!159) (_3!76 (_ BitVec 32))) )
))
(declare-fun lt!1717 () tuple3!64)

(declare-fun e!1250 () tuple3!64)

(assert (=> b!2199 (= lt!1717 e!1250)))

(declare-fun c!441 () Bool)

(declare-datatypes ((tuple4!88 0))(
  ( (tuple4!89 (_1!89 Unit!172) (_2!89 array!159) (_3!77 (_ BitVec 32)) (_4!44 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1718 () tuple4!88)

(assert (=> b!2199 (= c!441 (bvsge (select (arr!71 (_2!89 lt!1718)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun lt!1715 () (_ BitVec 32))

(assert (=> b!2199 (= lt!1715 #b00000000000000000000000000000000)))

(declare-fun lt!1716 () (_ BitVec 32))

(declare-datatypes ((tuple4!90 0))(
  ( (tuple4!91 (_1!90 Unit!172) (_2!90 (_ BitVec 32)) (_3!78 array!159) (_4!45 (_ BitVec 32))) )
))
(declare-fun lt!1714 () tuple4!90)

(declare-fun b!2201 () Bool)

(declare-fun Unit!174 () Unit!172)

(assert (=> b!2201 (= e!1250 (tuple3!65 Unit!174 (array!160 (store (arr!71 (_3!78 lt!1714)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!45 lt!1714) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!1716) (bvsub #b00000000111111111111111111111111 lt!1716))) (size!71 (_3!78 lt!1714))) (_4!45 lt!1714)))))

(declare-fun lt!1712 () (_ BitVec 32))

(assert (=> b!2201 (= lt!1712 #b00000000000000000000000000000000)))

(declare-fun c!443 () Bool)

(assert (=> b!2201 (= c!443 (bvslt lt!1712 (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun e!1254 () tuple4!90)

(assert (=> b!2201 (= lt!1714 e!1254)))

(assert (=> b!2201 (= lt!1716 (select (arr!71 (_3!78 lt!1714)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!2202 () Bool)

(declare-fun Unit!175 () Unit!172)

(assert (=> b!2202 (= e!1254 (tuple4!91 Unit!175 lt!1712 (_2!89 lt!1718) lt!1715))))

(declare-fun b!2203 () Bool)

(declare-fun Unit!176 () Unit!172)

(assert (=> b!2203 (= e!1250 (tuple3!65 Unit!176 (_2!89 lt!1718) lt!1715))))

(declare-fun b!2204 () Bool)

(declare-fun res!1731 () Bool)

(declare-fun e!1255 () Bool)

(assert (=> b!2204 (=> (not res!1731) (not e!1255))))

(declare-datatypes ((array!161 0))(
  ( (array!162 (arr!72 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!72 (_ BitVec 32))) )
))
(declare-fun q!70 () array!161)

(declare-fun qInv!0 (array!161) Bool)

(assert (=> b!2204 (= res!1731 (qInv!0 q!70))))

(declare-fun b!2205 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!161 (_ BitVec 32) array!159 (_ BitVec 32)) tuple4!90)

(assert (=> b!2205 (= e!1254 (computeModuloWhile!1 jz!42 q!70 lt!1712 (_2!89 lt!1718) lt!1715))))

(declare-fun b!2200 () Bool)

(assert (=> b!2200 (= e!1255 e!1251)))

(declare-fun res!1730 () Bool)

(assert (=> b!2200 (=> (not res!1730) (not e!1251))))

(declare-fun lt!1713 () (_ FloatingPoint 11 53))

(assert (=> b!2200 (= res!1730 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1713) (fp.lt lt!1713 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2200 (= lt!1713 (fp.sub roundNearestTiesToEven (_4!44 lt!1718) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!44 lt!1718) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!44 lt!1718) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!44 lt!1718) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!44 lt!1718) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1253 () tuple4!88)

(assert (=> b!2200 (= lt!1718 e!1253)))

(declare-fun c!442 () Bool)

(assert (=> b!2200 (= c!442 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1710 () (_ FloatingPoint 11 53))

(assert (=> b!2200 (= lt!1710 (select (arr!72 q!70) jz!42))))

(declare-fun lt!1711 () array!159)

(assert (=> b!2200 (= lt!1711 (array!160 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1732 () Bool)

(assert (=> start!743 (=> (not res!1732) (not e!1255))))

(assert (=> start!743 (= res!1732 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!743 e!1255))

(assert (=> start!743 true))

(declare-fun array_inv!32 (array!161) Bool)

(assert (=> start!743 (array_inv!32 q!70)))

(declare-fun b!2206 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!161 array!159 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!88)

(assert (=> b!2206 (= e!1253 (computeModuloWhile!0 jz!42 q!70 lt!1711 jz!42 lt!1710))))

(declare-fun b!2207 () Bool)

(declare-fun Unit!177 () Unit!172)

(assert (=> b!2207 (= e!1253 (tuple4!89 Unit!177 lt!1711 jz!42 lt!1710))))

(assert (= (and start!743 res!1732) b!2204))

(assert (= (and b!2204 res!1731) b!2200))

(assert (= (and b!2200 c!442) b!2206))

(assert (= (and b!2200 (not c!442)) b!2207))

(assert (= (and b!2200 res!1730) b!2199))

(assert (= (and b!2199 c!441) b!2201))

(assert (= (and b!2199 (not c!441)) b!2203))

(assert (= (and b!2201 c!443) b!2205))

(assert (= (and b!2201 (not c!443)) b!2202))

(declare-fun m!2315 () Bool)

(assert (=> start!743 m!2315))

(declare-fun m!2317 () Bool)

(assert (=> b!2204 m!2317))

(declare-fun m!2319 () Bool)

(assert (=> b!2206 m!2319))

(declare-fun m!2321 () Bool)

(assert (=> b!2200 m!2321))

(declare-fun m!2323 () Bool)

(assert (=> b!2201 m!2323))

(declare-fun m!2325 () Bool)

(assert (=> b!2201 m!2325))

(declare-fun m!2327 () Bool)

(assert (=> b!2205 m!2327))

(declare-fun m!2329 () Bool)

(assert (=> b!2199 m!2329))

(check-sat (not b!2205) (not b!2204) (not start!743) (not b!2206))
(check-sat)
