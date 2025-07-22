; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!841 () Bool)

(assert start!841)

(declare-fun lt!2393 () (_ FloatingPoint 11 53))

(declare-fun b!3384 () Bool)

(declare-datatypes ((array!210 0))(
  ( (array!211 (arr!93 (Array (_ BitVec 32) (_ BitVec 32))) (size!93 (_ BitVec 32))) )
))
(declare-fun lt!2392 () array!210)

(declare-datatypes ((Unit!276 0))(
  ( (Unit!277) )
))
(declare-datatypes ((tuple4!132 0))(
  ( (tuple4!133 (_1!121 Unit!276) (_2!121 array!210) (_3!109 (_ BitVec 32)) (_4!66 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1736 () tuple4!132)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun Unit!278 () Unit!276)

(assert (=> b!3384 (= e!1736 (tuple4!133 Unit!278 lt!2392 jz!53 lt!2393))))

(declare-fun b!3385 () Bool)

(declare-fun e!1733 () Bool)

(declare-fun e!1734 () Bool)

(assert (=> b!3385 (= e!1733 e!1734)))

(declare-fun res!2563 () Bool)

(assert (=> b!3385 (=> (not res!2563) (not e!1734))))

(declare-fun lt!2386 () (_ BitVec 32))

(assert (=> b!3385 (= res!2563 (bvslt lt!2386 (bvsub jz!53 #b00000000000000000000000000000001)))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3385 (= lt!2386 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-datatypes ((array!212 0))(
  ( (array!213 (arr!94 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!94 (_ BitVec 32))) )
))
(declare-fun q!85 () array!212)

(declare-fun b!3386 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!212 array!210 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!132)

(assert (=> b!3386 (= e!1736 (computeModuloWhile!0 jz!53 q!85 lt!2392 jz!53 lt!2393))))

(declare-fun res!2561 () Bool)

(declare-fun e!1732 () Bool)

(assert (=> start!841 (=> (not res!2561) (not e!1732))))

(assert (=> start!841 (= res!2561 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!841 e!1732))

(assert (=> start!841 true))

(declare-fun iq!165 () array!210)

(declare-fun array_inv!44 (array!210) Bool)

(assert (=> start!841 (array_inv!44 iq!165)))

(declare-fun array_inv!45 (array!212) Bool)

(assert (=> start!841 (array_inv!45 q!85)))

(declare-fun b!3387 () Bool)

(declare-fun res!2564 () Bool)

(assert (=> b!3387 (=> (not res!2564) (not e!1733))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3387 (= res!2564 (QInt!0 (select (arr!93 iq!165) i!252)))))

(declare-fun lt!2387 () array!210)

(declare-fun e!1731 () tuple4!132)

(declare-fun b!3388 () Bool)

(declare-fun lt!2389 () (_ FloatingPoint 11 53))

(declare-fun Unit!279 () Unit!276)

(assert (=> b!3388 (= e!1731 (tuple4!133 Unit!279 lt!2387 jz!53 lt!2389))))

(declare-fun b!3389 () Bool)

(declare-fun lt!2388 () tuple4!132)

(declare-fun lt!2391 () (_ FloatingPoint 11 53))

(assert (=> b!3389 (= e!1734 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2391) (fp.lt lt!2391 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!93 (_2!121 lt!2388)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsge lt!2386 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3389 (= lt!2391 (fp.sub roundNearestTiesToEven (_4!66 lt!2388) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!66 lt!2388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!66 lt!2388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!66 lt!2388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!66 lt!2388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3389 (= lt!2388 e!1736)))

(declare-fun c!618 () Bool)

(assert (=> b!3389 (= c!618 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3389 (= lt!2393 (select (arr!94 q!85) jz!53))))

(assert (=> b!3389 (= lt!2392 (array!211 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3390 () Bool)

(declare-fun res!2562 () Bool)

(assert (=> b!3390 (=> (not res!2562) (not e!1732))))

(declare-fun qInv!0 (array!212) Bool)

(assert (=> b!3390 (= res!2562 (qInv!0 q!85))))

(declare-fun b!3391 () Bool)

(declare-fun res!2566 () Bool)

(assert (=> b!3391 (=> (not res!2566) (not e!1733))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!3391 (= res!2566 (and (bvsge (select (arr!93 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!3392 () Bool)

(declare-fun res!2565 () Bool)

(assert (=> b!3392 (=> (not res!2565) (not e!1733))))

(declare-fun iqInv!0 (array!210) Bool)

(assert (=> b!3392 (= res!2565 (iqInv!0 iq!165))))

(declare-fun b!3393 () Bool)

(assert (=> b!3393 (= e!1732 e!1733)))

(declare-fun res!2567 () Bool)

(assert (=> b!3393 (=> (not res!2567) (not e!1733))))

(declare-fun lt!2390 () (_ FloatingPoint 11 53))

(declare-fun lt!2394 () tuple4!132)

(assert (=> b!3393 (= res!2567 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2390) (fp.lt lt!2390 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!93 (_2!121 lt!2394)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3393 (= lt!2390 (fp.sub roundNearestTiesToEven (_4!66 lt!2394) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!66 lt!2394) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!66 lt!2394) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!66 lt!2394) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!66 lt!2394) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3393 (= lt!2394 e!1731)))

(declare-fun c!619 () Bool)

(assert (=> b!3393 (= c!619 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3393 (= lt!2389 (select (arr!94 q!85) jz!53))))

(assert (=> b!3393 (= lt!2387 (array!211 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3394 () Bool)

(assert (=> b!3394 (= e!1731 (computeModuloWhile!0 jz!53 q!85 lt!2387 jz!53 lt!2389))))

(assert (= (and start!841 res!2561) b!3390))

(assert (= (and b!3390 res!2562) b!3393))

(assert (= (and b!3393 c!619) b!3394))

(assert (= (and b!3393 (not c!619)) b!3388))

(assert (= (and b!3393 res!2567) b!3392))

(assert (= (and b!3392 res!2565) b!3391))

(assert (= (and b!3391 res!2566) b!3387))

(assert (= (and b!3387 res!2564) b!3385))

(assert (= (and b!3385 res!2563) b!3389))

(assert (= (and b!3389 c!618) b!3386))

(assert (= (and b!3389 (not c!618)) b!3384))

(declare-fun m!4213 () Bool)

(assert (=> b!3390 m!4213))

(declare-fun m!4215 () Bool)

(assert (=> start!841 m!4215))

(declare-fun m!4217 () Bool)

(assert (=> start!841 m!4217))

(declare-fun m!4219 () Bool)

(assert (=> b!3391 m!4219))

(declare-fun m!4221 () Bool)

(assert (=> b!3394 m!4221))

(declare-fun m!4223 () Bool)

(assert (=> b!3392 m!4223))

(declare-fun m!4225 () Bool)

(assert (=> b!3393 m!4225))

(declare-fun m!4227 () Bool)

(assert (=> b!3393 m!4227))

(declare-fun m!4229 () Bool)

(assert (=> b!3389 m!4229))

(assert (=> b!3389 m!4227))

(declare-fun m!4231 () Bool)

(assert (=> b!3386 m!4231))

(declare-fun m!4233 () Bool)

(assert (=> b!3387 m!4233))

(assert (=> b!3387 m!4233))

(declare-fun m!4235 () Bool)

(assert (=> b!3387 m!4235))

(check-sat (not b!3390) (not b!3392) (not b!3386) (not b!3394) (not b!3387) (not start!841))
(check-sat)
