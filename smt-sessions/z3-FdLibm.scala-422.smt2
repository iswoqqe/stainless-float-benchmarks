; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2279 () Bool)

(assert start!2279)

(declare-fun b!11642 () Bool)

(declare-fun res!9135 () Bool)

(declare-fun e!6744 () Bool)

(assert (=> b!11642 (=> (not res!9135) (not e!6744))))

(declare-datatypes ((array!881 0))(
  ( (array!882 (arr!387 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!387 (_ BitVec 32))) )
))
(declare-fun q!93 () array!881)

(declare-fun qInv!0 (array!881) Bool)

(assert (=> b!11642 (= res!9135 (qInv!0 q!93))))

(declare-fun b!11643 () Bool)

(declare-fun res!9132 () Bool)

(declare-fun e!6746 () Bool)

(assert (=> b!11643 (=> (not res!9132) (not e!6746))))

(declare-datatypes ((array!883 0))(
  ( (array!884 (arr!388 (Array (_ BitVec 32) (_ BitVec 32))) (size!388 (_ BitVec 32))) )
))
(declare-fun iq!194 () array!883)

(declare-fun qq!48 () array!881)

(declare-fun jz!59 () (_ BitVec 32))

(assert (=> b!11643 (= res!9132 (and (bvsle (select (arr!388 iq!194) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (= (size!387 qq!48) #b00000000000000000000000000010100)))))

(declare-fun b!11644 () Bool)

(declare-fun lt!6157 () (_ BitVec 32))

(declare-datatypes ((Unit!1322 0))(
  ( (Unit!1323) )
))
(declare-datatypes ((tuple3!218 0))(
  ( (tuple3!219 (_1!300 Unit!1322) (_2!300 array!883) (_3!237 (_ BitVec 32))) )
))
(declare-fun e!6740 () tuple3!218)

(declare-datatypes ((tuple4!256 0))(
  ( (tuple4!257 (_1!301 Unit!1322) (_2!301 (_ BitVec 32)) (_3!238 array!883) (_4!128 (_ BitVec 32))) )
))
(declare-fun lt!6156 () tuple4!256)

(declare-fun Unit!1324 () Unit!1322)

(assert (=> b!11644 (= e!6740 (tuple3!219 Unit!1324 (array!884 (store (arr!388 (_3!238 lt!6156)) (bvsub jz!59 #b00000000000000000000000000000001) (ite (= (_4!128 lt!6156) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!6157) (bvsub #b00000000111111111111111111111111 lt!6157))) (size!388 (_3!238 lt!6156))) (_4!128 lt!6156)))))

(declare-fun lt!6154 () (_ BitVec 32))

(assert (=> b!11644 (= lt!6154 #b00000000000000000000000000000000)))

(declare-fun c!1469 () Bool)

(assert (=> b!11644 (= c!1469 (bvslt lt!6154 (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun e!6739 () tuple4!256)

(assert (=> b!11644 (= lt!6156 e!6739)))

(assert (=> b!11644 (= lt!6157 (select (arr!388 (_3!238 lt!6156)) (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun lt!6160 () array!883)

(declare-datatypes ((tuple4!258 0))(
  ( (tuple4!259 (_1!302 Unit!1322) (_2!302 array!883) (_3!239 (_ BitVec 32)) (_4!129 (_ FloatingPoint 11 53))) )
))
(declare-fun e!6741 () tuple4!258)

(declare-fun lt!6161 () (_ FloatingPoint 11 53))

(declare-fun b!11646 () Bool)

(declare-fun Unit!1325 () Unit!1322)

(assert (=> b!11646 (= e!6741 (tuple4!259 Unit!1325 lt!6160 jz!59 lt!6161))))

(declare-fun b!11647 () Bool)

(declare-fun res!9131 () Bool)

(assert (=> b!11647 (=> (not res!9131) (not e!6746))))

(declare-fun qqInv!0 (array!881) Bool)

(assert (=> b!11647 (= res!9131 (qqInv!0 qq!48))))

(declare-fun lt!6159 () (_ BitVec 32))

(declare-fun b!11648 () Bool)

(declare-fun lt!6155 () tuple4!258)

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!881 (_ BitVec 32) array!883 (_ BitVec 32)) tuple4!256)

(assert (=> b!11648 (= e!6739 (computeModuloWhile!3 jz!59 q!93 lt!6154 (_2!302 lt!6155) lt!6159))))

(declare-fun b!11649 () Bool)

(declare-fun Unit!1326 () Unit!1322)

(assert (=> b!11649 (= e!6740 (tuple3!219 Unit!1326 (_2!302 lt!6155) lt!6159))))

(declare-fun b!11650 () Bool)

(declare-fun res!9130 () Bool)

(assert (=> b!11650 (=> (not res!9130) (not e!6746))))

(declare-fun iqInv!0 (array!883) Bool)

(assert (=> b!11650 (= res!9130 (iqInv!0 iq!194))))

(declare-fun b!11651 () Bool)

(declare-fun e!6747 () Bool)

(assert (=> b!11651 (= e!6744 e!6747)))

(declare-fun res!9134 () Bool)

(assert (=> b!11651 (=> (not res!9134) (not e!6747))))

(declare-fun lt!6162 () (_ FloatingPoint 11 53))

(assert (=> b!11651 (= res!9134 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!6162) (fp.lt lt!6162 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!11651 (= lt!6162 (fp.sub roundNearestTiesToEven (_4!129 lt!6155) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!129 lt!6155) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!129 lt!6155) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!129 lt!6155) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!129 lt!6155) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!11651 (= lt!6155 e!6741)))

(declare-fun c!1467 () Bool)

(assert (=> b!11651 (= c!1467 (bvsgt jz!59 #b00000000000000000000000000000000))))

(assert (=> b!11651 (= lt!6161 (select (arr!387 q!93) jz!59))))

(assert (=> b!11651 (= lt!6160 (array!884 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!11652 () Bool)

(declare-fun i!271 () (_ BitVec 32))

(assert (=> b!11652 (= e!6746 (and (bvslt i!271 jz!59) (not (= (bvand jz!59 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!59 #b10000000000000000000000000000000) (bvand (bvsub jz!59 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!11645 () Bool)

(assert (=> b!11645 (= e!6747 e!6746)))

(declare-fun res!9136 () Bool)

(assert (=> b!11645 (=> (not res!9136) (not e!6746))))

(declare-fun lt!6153 () Bool)

(declare-fun lt!6158 () tuple3!218)

(assert (=> b!11645 (= res!9136 (and (bvsle #b00000000000000000000000000000000 (select (arr!388 (_2!300 lt!6158)) (bvsub jz!59 #b00000000000000000000000000000001))) (bvsle (select (arr!388 (_2!300 lt!6158)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (not lt!6153) (not (= (_3!237 lt!6158) #b00000000000000000000000000000000)) (not (= (select (arr!388 (_2!300 lt!6158)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))) (bvsle (select (arr!388 (_2!300 lt!6158)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (bvsle #b00000000000000000000000000000000 i!271) (bvsle i!271 jz!59)))))

(assert (=> b!11645 (= lt!6158 e!6740)))

(declare-fun c!1468 () Bool)

(assert (=> b!11645 (= c!1468 lt!6153)))

(assert (=> b!11645 (= lt!6159 #b00000000000000000000000000000000)))

(assert (=> b!11645 (= lt!6153 (bvsge (select (arr!388 (_2!302 lt!6155)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun res!9133 () Bool)

(assert (=> start!2279 (=> (not res!9133) (not e!6744))))

(assert (=> start!2279 (= res!9133 (and (bvsle #b00000000000000000000000000000010 jz!59) (bvslt jz!59 #b00000000000000000000000000010011)))))

(assert (=> start!2279 e!6744))

(assert (=> start!2279 true))

(declare-fun array_inv!336 (array!883) Bool)

(assert (=> start!2279 (array_inv!336 iq!194)))

(declare-fun array_inv!337 (array!881) Bool)

(assert (=> start!2279 (array_inv!337 qq!48)))

(assert (=> start!2279 (array_inv!337 q!93)))

(declare-fun b!11653 () Bool)

(declare-fun Unit!1327 () Unit!1322)

(assert (=> b!11653 (= e!6739 (tuple4!257 Unit!1327 lt!6154 (_2!302 lt!6155) lt!6159))))

(declare-fun b!11654 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!881 array!883 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!258)

(assert (=> b!11654 (= e!6741 (computeModuloWhile!0 jz!59 q!93 lt!6160 jz!59 lt!6161))))

(assert (= (and start!2279 res!9133) b!11642))

(assert (= (and b!11642 res!9135) b!11651))

(assert (= (and b!11651 c!1467) b!11654))

(assert (= (and b!11651 (not c!1467)) b!11646))

(assert (= (and b!11651 res!9134) b!11645))

(assert (= (and b!11645 c!1468) b!11644))

(assert (= (and b!11645 (not c!1468)) b!11649))

(assert (= (and b!11644 c!1469) b!11648))

(assert (= (and b!11644 (not c!1469)) b!11653))

(assert (= (and b!11645 res!9136) b!11650))

(assert (= (and b!11650 res!9130) b!11643))

(assert (= (and b!11643 res!9132) b!11647))

(assert (= (and b!11647 res!9131) b!11652))

(declare-fun m!16237 () Bool)

(assert (=> b!11642 m!16237))

(declare-fun m!16239 () Bool)

(assert (=> b!11645 m!16239))

(declare-fun m!16241 () Bool)

(assert (=> b!11645 m!16241))

(declare-fun m!16243 () Bool)

(assert (=> b!11648 m!16243))

(declare-fun m!16245 () Bool)

(assert (=> start!2279 m!16245))

(declare-fun m!16247 () Bool)

(assert (=> start!2279 m!16247))

(declare-fun m!16249 () Bool)

(assert (=> start!2279 m!16249))

(declare-fun m!16251 () Bool)

(assert (=> b!11643 m!16251))

(declare-fun m!16253 () Bool)

(assert (=> b!11654 m!16253))

(declare-fun m!16255 () Bool)

(assert (=> b!11650 m!16255))

(declare-fun m!16257 () Bool)

(assert (=> b!11644 m!16257))

(declare-fun m!16259 () Bool)

(assert (=> b!11644 m!16259))

(declare-fun m!16261 () Bool)

(assert (=> b!11651 m!16261))

(declare-fun m!16263 () Bool)

(assert (=> b!11647 m!16263))

(check-sat (not b!11648) (not b!11654) (not start!2279) (not b!11650) (not b!11642) (not b!11647))
(check-sat)
