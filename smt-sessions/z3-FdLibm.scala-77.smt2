; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691 () Bool)

(assert start!691)

(declare-fun lt!1373 () (_ FloatingPoint 11 53))

(declare-fun b!2116 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((Unit!127 0))(
  ( (Unit!128) )
))
(declare-datatypes ((array!99 0))(
  ( (array!100 (arr!43 (Array (_ BitVec 32) (_ BitVec 32))) (size!43 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!48 0))(
  ( (tuple4!49 (_1!68 Unit!127) (_2!68 array!99) (_3!56 (_ BitVec 32)) (_4!24 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1040 () tuple4!48)

(declare-fun lt!1371 () array!99)

(declare-fun Unit!129 () Unit!127)

(assert (=> b!2116 (= e!1040 (tuple4!49 Unit!129 lt!1371 jz!42 lt!1373))))

(declare-fun lt!1372 () tuple4!48)

(declare-fun e!1041 () Bool)

(declare-fun b!2114 () Bool)

(declare-fun lt!1370 () (_ FloatingPoint 11 53))

(assert (=> b!2114 (= e!1041 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1370) (fp.lt lt!1370 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!43 (_2!68 lt!1372)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (fp.isNaN lt!1370)))))

(assert (=> b!2114 (= lt!1370 (fp.sub roundNearestTiesToEven (_4!24 lt!1372) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!24 lt!1372) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!24 lt!1372) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!24 lt!1372) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!24 lt!1372) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2114 (= lt!1372 e!1040)))

(declare-fun c!356 () Bool)

(assert (=> b!2114 (= c!356 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-datatypes ((array!101 0))(
  ( (array!102 (arr!44 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!44 (_ BitVec 32))) )
))
(declare-fun q!70 () array!101)

(assert (=> b!2114 (= lt!1373 (select (arr!44 q!70) jz!42))))

(assert (=> b!2114 (= lt!1371 (array!100 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1815 () Bool)

(assert (=> start!691 (=> (not res!1815) (not e!1041))))

(assert (=> start!691 (= res!1815 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!691 e!1041))

(assert (=> start!691 true))

(declare-fun array_inv!18 (array!101) Bool)

(assert (=> start!691 (array_inv!18 q!70)))

(declare-fun b!2113 () Bool)

(declare-fun res!1814 () Bool)

(assert (=> b!2113 (=> (not res!1814) (not e!1041))))

(declare-fun qInv!0 (array!101) Bool)

(assert (=> b!2113 (= res!1814 (qInv!0 q!70))))

(declare-fun b!2115 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!101 array!99 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!48)

(assert (=> b!2115 (= e!1040 (computeModuloWhile!0 jz!42 q!70 lt!1371 jz!42 lt!1373))))

(assert (= (and start!691 res!1815) b!2113))

(assert (= (and b!2113 res!1814) b!2114))

(assert (= (and b!2114 c!356) b!2115))

(assert (= (and b!2114 (not c!356)) b!2116))

(declare-fun m!3663 () Bool)

(assert (=> b!2114 m!3663))

(declare-fun m!3665 () Bool)

(assert (=> b!2114 m!3665))

(declare-fun m!3667 () Bool)

(assert (=> start!691 m!3667))

(declare-fun m!3669 () Bool)

(assert (=> b!2113 m!3669))

(declare-fun m!3671 () Bool)

(assert (=> b!2115 m!3671))

(check-sat (not b!2115) (not b!2113) (not start!691))
(check-sat)
