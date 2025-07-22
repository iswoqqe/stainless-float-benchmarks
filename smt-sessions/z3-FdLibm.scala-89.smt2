; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731 () Bool)

(assert start!731)

(declare-fun b!2098 () Bool)

(declare-fun e!1194 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2098 (= e!1194 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-datatypes ((Unit!161 0))(
  ( (Unit!162) )
))
(declare-datatypes ((array!150 0))(
  ( (array!151 (arr!67 (Array (_ BitVec 32) (_ BitVec 32))) (size!67 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!80 0))(
  ( (tuple4!81 (_1!84 Unit!161) (_2!84 (_ BitVec 32)) (_3!72 array!150) (_4!40 (_ BitVec 32))) )
))
(declare-fun lt!1622 () tuple4!80)

(declare-fun e!1192 () tuple4!80)

(assert (=> b!2098 (= lt!1622 e!1192)))

(declare-fun c!418 () Bool)

(declare-fun lt!1620 () (_ BitVec 32))

(assert (=> b!2098 (= c!418 (bvslt lt!1620 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2098 (= lt!1620 #b00000000000000000000000000000000)))

(declare-fun res!1675 () Bool)

(declare-fun e!1190 () Bool)

(assert (=> start!731 (=> (not res!1675) (not e!1190))))

(assert (=> start!731 (= res!1675 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!731 e!1190))

(assert (=> start!731 true))

(declare-datatypes ((array!152 0))(
  ( (array!153 (arr!68 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!68 (_ BitVec 32))) )
))
(declare-fun q!70 () array!152)

(declare-fun array_inv!30 (array!152) Bool)

(assert (=> start!731 (array_inv!30 q!70)))

(declare-fun lt!1624 () (_ FloatingPoint 11 53))

(declare-fun b!2099 () Bool)

(declare-datatypes ((tuple4!82 0))(
  ( (tuple4!83 (_1!85 Unit!161) (_2!85 array!150) (_3!73 (_ BitVec 32)) (_4!41 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1191 () tuple4!82)

(declare-fun lt!1621 () array!150)

(declare-fun Unit!163 () Unit!161)

(assert (=> b!2099 (= e!1191 (tuple4!83 Unit!163 lt!1621 jz!42 lt!1624))))

(declare-fun lt!1623 () (_ BitVec 32))

(declare-fun b!2100 () Bool)

(declare-fun lt!1619 () tuple4!82)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!152 (_ BitVec 32) array!150 (_ BitVec 32)) tuple4!80)

(assert (=> b!2100 (= e!1192 (computeModuloWhile!1 jz!42 q!70 lt!1620 (_2!85 lt!1619) lt!1623))))

(declare-fun b!2101 () Bool)

(declare-fun e!1193 () Bool)

(assert (=> b!2101 (= e!1190 e!1193)))

(declare-fun res!1678 () Bool)

(assert (=> b!2101 (=> (not res!1678) (not e!1193))))

(declare-fun lt!1625 () (_ FloatingPoint 11 53))

(assert (=> b!2101 (= res!1678 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1625) (fp.lt lt!1625 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2101 (= lt!1625 (fp.sub roundNearestTiesToEven (_4!41 lt!1619) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!41 lt!1619) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!41 lt!1619) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!41 lt!1619) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!41 lt!1619) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2101 (= lt!1619 e!1191)))

(declare-fun c!419 () Bool)

(assert (=> b!2101 (= c!419 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2101 (= lt!1624 (select (arr!68 q!70) jz!42))))

(assert (=> b!2101 (= lt!1621 (array!151 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2102 () Bool)

(declare-fun res!1676 () Bool)

(assert (=> b!2102 (=> (not res!1676) (not e!1190))))

(declare-fun qInv!0 (array!152) Bool)

(assert (=> b!2102 (= res!1676 (qInv!0 q!70))))

(declare-fun b!2103 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!152 array!150 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!82)

(assert (=> b!2103 (= e!1191 (computeModuloWhile!0 jz!42 q!70 lt!1621 jz!42 lt!1624))))

(declare-fun b!2104 () Bool)

(assert (=> b!2104 (= e!1193 e!1194)))

(declare-fun res!1677 () Bool)

(assert (=> b!2104 (=> (not res!1677) (not e!1194))))

(assert (=> b!2104 (= res!1677 (bvsge (select (arr!67 (_2!85 lt!1619)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2104 (= lt!1623 #b00000000000000000000000000000000)))

(declare-fun b!2105 () Bool)

(declare-fun Unit!164 () Unit!161)

(assert (=> b!2105 (= e!1192 (tuple4!81 Unit!164 lt!1620 (_2!85 lt!1619) lt!1623))))

(assert (= (and start!731 res!1675) b!2102))

(assert (= (and b!2102 res!1676) b!2101))

(assert (= (and b!2101 c!419) b!2103))

(assert (= (and b!2101 (not c!419)) b!2099))

(assert (= (and b!2101 res!1678) b!2104))

(assert (= (and b!2104 res!1677) b!2098))

(assert (= (and b!2098 c!418) b!2100))

(assert (= (and b!2098 (not c!418)) b!2105))

(declare-fun m!2265 () Bool)

(assert (=> b!2103 m!2265))

(declare-fun m!2267 () Bool)

(assert (=> b!2102 m!2267))

(declare-fun m!2269 () Bool)

(assert (=> b!2100 m!2269))

(declare-fun m!2271 () Bool)

(assert (=> b!2101 m!2271))

(declare-fun m!2273 () Bool)

(assert (=> start!731 m!2273))

(declare-fun m!2275 () Bool)

(assert (=> b!2104 m!2275))

(check-sat (not b!2102) (not b!2100) (not start!731) (not b!2103))
(check-sat)
