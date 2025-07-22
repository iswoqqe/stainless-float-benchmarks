; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2277 () Bool)

(assert start!2277)

(declare-fun b!11603 () Bool)

(declare-fun res!9110 () Bool)

(declare-fun e!6714 () Bool)

(assert (=> b!11603 (=> (not res!9110) (not e!6714))))

(declare-datatypes ((array!877 0))(
  ( (array!878 (arr!385 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!385 (_ BitVec 32))) )
))
(declare-fun q!93 () array!877)

(declare-fun qInv!0 (array!877) Bool)

(assert (=> b!11603 (= res!9110 (qInv!0 q!93))))

(declare-fun b!11604 () Bool)

(declare-fun e!6713 () Bool)

(declare-fun i!271 () (_ BitVec 32))

(declare-fun jz!59 () (_ BitVec 32))

(assert (=> b!11604 (= e!6713 (and (bvslt i!271 jz!59) (bvslt (bvsub jz!59 i!271) #b00000000000000000000000000000000)))))

(declare-fun b!11605 () Bool)

(declare-fun res!9111 () Bool)

(assert (=> b!11605 (=> (not res!9111) (not e!6713))))

(declare-fun qq!48 () array!877)

(declare-fun qqInv!0 (array!877) Bool)

(assert (=> b!11605 (= res!9111 (qqInv!0 qq!48))))

(declare-fun b!11606 () Bool)

(declare-fun e!6719 () Bool)

(assert (=> b!11606 (= e!6719 e!6713)))

(declare-fun res!9113 () Bool)

(assert (=> b!11606 (=> (not res!9113) (not e!6713))))

(declare-datatypes ((Unit!1316 0))(
  ( (Unit!1317) )
))
(declare-datatypes ((array!879 0))(
  ( (array!880 (arr!386 (Array (_ BitVec 32) (_ BitVec 32))) (size!386 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!216 0))(
  ( (tuple3!217 (_1!297 Unit!1316) (_2!297 array!879) (_3!234 (_ BitVec 32))) )
))
(declare-fun lt!6124 () tuple3!216)

(declare-fun lt!6132 () Bool)

(assert (=> b!11606 (= res!9113 (and (bvsle #b00000000000000000000000000000000 (select (arr!386 (_2!297 lt!6124)) (bvsub jz!59 #b00000000000000000000000000000001))) (bvsle (select (arr!386 (_2!297 lt!6124)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (not lt!6132) (not (= (_3!234 lt!6124) #b00000000000000000000000000000000)) (not (= (select (arr!386 (_2!297 lt!6124)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))) (bvsle (select (arr!386 (_2!297 lt!6124)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (bvsle #b00000000000000000000000000000000 i!271) (bvsle i!271 jz!59)))))

(declare-fun e!6718 () tuple3!216)

(assert (=> b!11606 (= lt!6124 e!6718)))

(declare-fun c!1460 () Bool)

(assert (=> b!11606 (= c!1460 lt!6132)))

(declare-fun lt!6126 () (_ BitVec 32))

(assert (=> b!11606 (= lt!6126 #b00000000000000000000000000000000)))

(declare-datatypes ((tuple4!252 0))(
  ( (tuple4!253 (_1!298 Unit!1316) (_2!298 array!879) (_3!235 (_ BitVec 32)) (_4!126 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!6130 () tuple4!252)

(assert (=> b!11606 (= lt!6132 (bvsge (select (arr!386 (_2!298 lt!6130)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun lt!6127 () (_ BitVec 32))

(declare-fun b!11607 () Bool)

(declare-datatypes ((tuple4!254 0))(
  ( (tuple4!255 (_1!299 Unit!1316) (_2!299 (_ BitVec 32)) (_3!236 array!879) (_4!127 (_ BitVec 32))) )
))
(declare-fun lt!6125 () tuple4!254)

(declare-fun Unit!1318 () Unit!1316)

(assert (=> b!11607 (= e!6718 (tuple3!217 Unit!1318 (array!880 (store (arr!386 (_3!236 lt!6125)) (bvsub jz!59 #b00000000000000000000000000000001) (ite (= (_4!127 lt!6125) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!6127) (bvsub #b00000000111111111111111111111111 lt!6127))) (size!386 (_3!236 lt!6125))) (_4!127 lt!6125)))))

(declare-fun lt!6129 () (_ BitVec 32))

(assert (=> b!11607 (= lt!6129 #b00000000000000000000000000000000)))

(declare-fun c!1458 () Bool)

(assert (=> b!11607 (= c!1458 (bvslt lt!6129 (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun e!6717 () tuple4!254)

(assert (=> b!11607 (= lt!6125 e!6717)))

(assert (=> b!11607 (= lt!6127 (select (arr!386 (_3!236 lt!6125)) (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun b!11608 () Bool)

(declare-fun res!9109 () Bool)

(assert (=> b!11608 (=> (not res!9109) (not e!6713))))

(declare-fun iq!194 () array!879)

(assert (=> b!11608 (= res!9109 (and (bvsle (select (arr!386 iq!194) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (= (size!385 qq!48) #b00000000000000000000000000010100)))))

(declare-fun b!11609 () Bool)

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!877 (_ BitVec 32) array!879 (_ BitVec 32)) tuple4!254)

(assert (=> b!11609 (= e!6717 (computeModuloWhile!3 jz!59 q!93 lt!6129 (_2!298 lt!6130) lt!6126))))

(declare-fun e!6715 () tuple4!252)

(declare-fun lt!6128 () (_ FloatingPoint 11 53))

(declare-fun lt!6123 () array!879)

(declare-fun b!11610 () Bool)

(declare-fun Unit!1319 () Unit!1316)

(assert (=> b!11610 (= e!6715 (tuple4!253 Unit!1319 lt!6123 jz!59 lt!6128))))

(declare-fun b!11611 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!877 array!879 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!252)

(assert (=> b!11611 (= e!6715 (computeModuloWhile!0 jz!59 q!93 lt!6123 jz!59 lt!6128))))

(declare-fun res!9115 () Bool)

(assert (=> start!2277 (=> (not res!9115) (not e!6714))))

(assert (=> start!2277 (= res!9115 (and (bvsle #b00000000000000000000000000000010 jz!59) (bvslt jz!59 #b00000000000000000000000000010011)))))

(assert (=> start!2277 e!6714))

(assert (=> start!2277 true))

(declare-fun array_inv!334 (array!879) Bool)

(assert (=> start!2277 (array_inv!334 iq!194)))

(declare-fun array_inv!335 (array!877) Bool)

(assert (=> start!2277 (array_inv!335 qq!48)))

(assert (=> start!2277 (array_inv!335 q!93)))

(declare-fun b!11612 () Bool)

(assert (=> b!11612 (= e!6714 e!6719)))

(declare-fun res!9112 () Bool)

(assert (=> b!11612 (=> (not res!9112) (not e!6719))))

(declare-fun lt!6131 () (_ FloatingPoint 11 53))

(assert (=> b!11612 (= res!9112 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!6131) (fp.lt lt!6131 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!11612 (= lt!6131 (fp.sub roundNearestTiesToEven (_4!126 lt!6130) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!126 lt!6130) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!126 lt!6130) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!126 lt!6130) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!126 lt!6130) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!11612 (= lt!6130 e!6715)))

(declare-fun c!1459 () Bool)

(assert (=> b!11612 (= c!1459 (bvsgt jz!59 #b00000000000000000000000000000000))))

(assert (=> b!11612 (= lt!6128 (select (arr!385 q!93) jz!59))))

(assert (=> b!11612 (= lt!6123 (array!880 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!11613 () Bool)

(declare-fun Unit!1320 () Unit!1316)

(assert (=> b!11613 (= e!6718 (tuple3!217 Unit!1320 (_2!298 lt!6130) lt!6126))))

(declare-fun b!11614 () Bool)

(declare-fun Unit!1321 () Unit!1316)

(assert (=> b!11614 (= e!6717 (tuple4!255 Unit!1321 lt!6129 (_2!298 lt!6130) lt!6126))))

(declare-fun b!11615 () Bool)

(declare-fun res!9114 () Bool)

(assert (=> b!11615 (=> (not res!9114) (not e!6713))))

(declare-fun iqInv!0 (array!879) Bool)

(assert (=> b!11615 (= res!9114 (iqInv!0 iq!194))))

(assert (= (and start!2277 res!9115) b!11603))

(assert (= (and b!11603 res!9110) b!11612))

(assert (= (and b!11612 c!1459) b!11611))

(assert (= (and b!11612 (not c!1459)) b!11610))

(assert (= (and b!11612 res!9112) b!11606))

(assert (= (and b!11606 c!1460) b!11607))

(assert (= (and b!11606 (not c!1460)) b!11613))

(assert (= (and b!11607 c!1458) b!11609))

(assert (= (and b!11607 (not c!1458)) b!11614))

(assert (= (and b!11606 res!9113) b!11615))

(assert (= (and b!11615 res!9114) b!11608))

(assert (= (and b!11608 res!9109) b!11605))

(assert (= (and b!11605 res!9111) b!11604))

(declare-fun m!16209 () Bool)

(assert (=> start!2277 m!16209))

(declare-fun m!16211 () Bool)

(assert (=> start!2277 m!16211))

(declare-fun m!16213 () Bool)

(assert (=> start!2277 m!16213))

(declare-fun m!16215 () Bool)

(assert (=> b!11603 m!16215))

(declare-fun m!16217 () Bool)

(assert (=> b!11615 m!16217))

(declare-fun m!16219 () Bool)

(assert (=> b!11605 m!16219))

(declare-fun m!16221 () Bool)

(assert (=> b!11612 m!16221))

(declare-fun m!16223 () Bool)

(assert (=> b!11611 m!16223))

(declare-fun m!16225 () Bool)

(assert (=> b!11606 m!16225))

(declare-fun m!16227 () Bool)

(assert (=> b!11606 m!16227))

(declare-fun m!16229 () Bool)

(assert (=> b!11609 m!16229))

(declare-fun m!16231 () Bool)

(assert (=> b!11607 m!16231))

(declare-fun m!16233 () Bool)

(assert (=> b!11607 m!16233))

(declare-fun m!16235 () Bool)

(assert (=> b!11608 m!16235))

(check-sat (not b!11603) (not b!11609) (not b!11605) (not start!2277) (not b!11611) (not b!11615))
(check-sat)
