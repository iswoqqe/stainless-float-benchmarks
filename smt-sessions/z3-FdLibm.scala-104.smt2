; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!861 () Bool)

(assert start!861)

(declare-fun res!2726 () Bool)

(declare-fun e!1787 () Bool)

(assert (=> start!861 (=> (not res!2726) (not e!1787))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!861 (= res!2726 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!861 e!1787))

(assert (=> start!861 true))

(declare-datatypes ((array!220 0))(
  ( (array!221 (arr!97 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!97 (_ BitVec 32))) )
))
(declare-fun q!85 () array!220)

(declare-fun array_inv!48 (array!220) Bool)

(assert (=> start!861 (array_inv!48 q!85)))

(declare-fun lt!2436 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!285 0))(
  ( (Unit!286) )
))
(declare-datatypes ((array!222 0))(
  ( (array!223 (arr!98 (Array (_ BitVec 32) (_ BitVec 32))) (size!98 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!136 0))(
  ( (tuple4!137 (_1!123 Unit!285) (_2!123 array!222) (_3!111 (_ BitVec 32)) (_4!68 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1786 () tuple4!136)

(declare-fun lt!2438 () array!222)

(declare-fun b!3573 () Bool)

(declare-fun Unit!287 () Unit!285)

(assert (=> b!3573 (= e!1786 (tuple4!137 Unit!287 lt!2438 jz!53 lt!2436))))

(declare-fun b!3570 () Bool)

(declare-fun res!2725 () Bool)

(assert (=> b!3570 (=> (not res!2725) (not e!1787))))

(declare-fun qInv!0 (array!220) Bool)

(assert (=> b!3570 (= res!2725 (qInv!0 q!85))))

(declare-fun b!3572 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!220 array!222 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!136)

(assert (=> b!3572 (= e!1786 (computeModuloWhile!0 jz!53 q!85 lt!2438 jz!53 lt!2436))))

(declare-fun b!3571 () Bool)

(declare-fun i!252 () (_ BitVec 32))

(declare-fun lt!2437 () tuple4!136)

(declare-fun lt!2435 () (_ FloatingPoint 11 53))

(assert (=> b!3571 (= e!1787 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2435) (fp.lt lt!2435 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!98 (_2!123 lt!2437)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!3571 (= lt!2435 (fp.sub roundNearestTiesToEven (_4!68 lt!2437) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!68 lt!2437) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!68 lt!2437) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!68 lt!2437) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!68 lt!2437) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3571 (= lt!2437 e!1786)))

(declare-fun c!629 () Bool)

(assert (=> b!3571 (= c!629 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3571 (= lt!2436 (select (arr!97 q!85) jz!53))))

(assert (=> b!3571 (= lt!2438 (array!223 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!861 res!2726) b!3570))

(assert (= (and b!3570 res!2725) b!3571))

(assert (= (and b!3571 c!629) b!3572))

(assert (= (and b!3571 (not c!629)) b!3573))

(declare-fun m!4525 () Bool)

(assert (=> start!861 m!4525))

(declare-fun m!4527 () Bool)

(assert (=> b!3570 m!4527))

(declare-fun m!4529 () Bool)

(assert (=> b!3572 m!4529))

(declare-fun m!4531 () Bool)

(assert (=> b!3571 m!4531))

(declare-fun m!4533 () Bool)

(assert (=> b!3571 m!4533))

(check-sat (not b!3572) (not b!3570) (not start!861))
(check-sat)
