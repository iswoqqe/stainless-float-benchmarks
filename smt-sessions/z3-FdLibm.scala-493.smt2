; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2563 () Bool)

(assert start!2563)

(declare-fun b!13765 () Bool)

(declare-fun e!7954 () Bool)

(declare-fun e!7950 () Bool)

(assert (=> b!13765 (= e!7954 e!7950)))

(declare-fun res!10577 () Bool)

(assert (=> b!13765 (=> (not res!10577) (not e!7950))))

(declare-datatypes ((Unit!1527 0))(
  ( (Unit!1528) )
))
(declare-datatypes ((array!1103 0))(
  ( (array!1104 (arr!489 (Array (_ BitVec 32) (_ BitVec 32))) (size!489 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!370 0))(
  ( (tuple4!371 (_1!379 Unit!1527) (_2!379 array!1103) (_3!316 (_ BitVec 32)) (_4!185 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7465 () tuple4!370)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7463 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!13765 (= res!10577 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7463) (fp.lt lt!7463 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!489 (_2!379 lt!7465)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13765 (= lt!7463 (fp.sub roundNearestTiesToEven (_4!185 lt!7465) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!185 lt!7465) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!185 lt!7465) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!185 lt!7465) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!185 lt!7465) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!7951 () tuple4!370)

(assert (=> b!13765 (= lt!7465 e!7951)))

(declare-fun c!1806 () Bool)

(assert (=> b!13765 (= c!1806 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7464 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1105 0))(
  ( (array!1106 (arr!490 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!490 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1105)

(assert (=> b!13765 (= lt!7464 (select (arr!490 q!31) jz!20))))

(declare-fun lt!7466 () array!1103)

(assert (=> b!13765 (= lt!7466 (array!1104 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun b!13766 () Bool)

(declare-fun iq!76 () array!1103)

(assert (=> b!13766 (= e!7950 (and (bvsge (select (arr!489 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001)) (or (bvslt i!142 #b00000000000000000000000000000000) (bvsge i!142 (size!489 iq!76)))))))

(declare-fun res!10578 () Bool)

(assert (=> start!2563 (=> (not res!10578) (not e!7954))))

(assert (=> start!2563 (= res!10578 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2563 e!7954))

(assert (=> start!2563 true))

(declare-fun array_inv!437 (array!1105) Bool)

(assert (=> start!2563 (array_inv!437 q!31)))

(declare-fun array_inv!438 (array!1103) Bool)

(assert (=> start!2563 (array_inv!438 iq!76)))

(declare-fun b!13767 () Bool)

(declare-fun res!10575 () Bool)

(assert (=> b!13767 (=> (not res!10575) (not e!7954))))

(declare-fun qInv!0 (array!1105) Bool)

(assert (=> b!13767 (= res!10575 (qInv!0 q!31))))

(declare-fun b!13768 () Bool)

(declare-fun res!10576 () Bool)

(assert (=> b!13768 (=> (not res!10576) (not e!7950))))

(declare-fun iqInv!0 (array!1103) Bool)

(assert (=> b!13768 (= res!10576 (iqInv!0 iq!76))))

(declare-fun b!13769 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1105 array!1103 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!370)

(assert (=> b!13769 (= e!7951 (computeModuloWhile!0 jz!20 q!31 lt!7466 jz!20 lt!7464))))

(declare-fun b!13770 () Bool)

(declare-fun Unit!1529 () Unit!1527)

(assert (=> b!13770 (= e!7951 (tuple4!371 Unit!1529 lt!7466 jz!20 lt!7464))))

(assert (= (and start!2563 res!10578) b!13767))

(assert (= (and b!13767 res!10575) b!13765))

(assert (= (and b!13765 c!1806) b!13769))

(assert (= (and b!13765 (not c!1806)) b!13770))

(assert (= (and b!13765 res!10577) b!13768))

(assert (= (and b!13768 res!10576) b!13766))

(declare-fun m!19487 () Bool)

(assert (=> b!13766 m!19487))

(declare-fun m!19489 () Bool)

(assert (=> b!13768 m!19489))

(declare-fun m!19491 () Bool)

(assert (=> start!2563 m!19491))

(declare-fun m!19493 () Bool)

(assert (=> start!2563 m!19493))

(declare-fun m!19495 () Bool)

(assert (=> b!13769 m!19495))

(declare-fun m!19497 () Bool)

(assert (=> b!13765 m!19497))

(declare-fun m!19499 () Bool)

(assert (=> b!13765 m!19499))

(declare-fun m!19501 () Bool)

(assert (=> b!13767 m!19501))

(check-sat (not b!13769) (not start!2563) (not b!13768) (not b!13767))
(check-sat)
(get-model)

(declare-fun b!13783 () Bool)

(declare-fun res!10589 () Bool)

(declare-fun e!7963 () Bool)

(assert (=> b!13783 (=> (not res!10589) (not e!7963))))

(declare-fun lt!7479 () tuple4!370)

(assert (=> b!13783 (= res!10589 (iqInv!0 (_2!379 lt!7479)))))

(declare-fun d!4799 () Bool)

(assert (=> d!4799 e!7963))

(declare-fun res!10587 () Bool)

(assert (=> d!4799 (=> (not res!10587) (not e!7963))))

(assert (=> d!4799 (= res!10587 (and true true (bvsle #b00000000000000000000000000000000 (_3!316 lt!7479)) (bvsle (_3!316 lt!7479) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!185 lt!7479)) (fp.leq (_4!185 lt!7479) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!7961 () tuple4!370)

(assert (=> d!4799 (= lt!7479 e!7961)))

(declare-fun c!1809 () Bool)

(declare-fun lt!7480 () (_ BitVec 32))

(assert (=> d!4799 (= c!1809 (bvsgt lt!7480 #b00000000000000000000000000000000))))

(assert (=> d!4799 (= lt!7480 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7481 () (_ FloatingPoint 11 53))

(declare-fun lt!7478 () (_ FloatingPoint 11 53))

(assert (=> d!4799 (= lt!7481 (fp.add roundNearestTiesToEven (select (arr!490 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7478))))

(declare-fun lt!7477 () array!1103)

(assert (=> d!4799 (= lt!7477 (array!1104 (store (arr!489 lt!7466) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7464 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7478))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7464 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7478)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7464 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7478)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7464 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7478))))))) (size!489 lt!7466)))))

(assert (=> d!4799 (= lt!7478 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7464)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7464) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7464) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7464)))))))))

(declare-fun e!7962 () Bool)

(assert (=> d!4799 e!7962))

(declare-fun res!10588 () Bool)

(assert (=> d!4799 (=> (not res!10588) (not e!7962))))

(assert (=> d!4799 (= res!10588 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7464) (fp.leq lt!7464 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!4799 (= (computeModuloWhile!0 jz!20 q!31 lt!7466 jz!20 lt!7464) lt!7479)))

(declare-fun b!13784 () Bool)

(assert (=> b!13784 (= e!7962 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun b!13785 () Bool)

(assert (=> b!13785 (= e!7961 (computeModuloWhile!0 jz!20 q!31 lt!7477 lt!7480 lt!7481))))

(declare-fun b!13786 () Bool)

(declare-fun res!10590 () Bool)

(assert (=> b!13786 (=> (not res!10590) (not e!7962))))

(assert (=> b!13786 (= res!10590 (iqInv!0 lt!7466))))

(declare-fun b!13787 () Bool)

(assert (=> b!13787 (= e!7963 (bvsle (_3!316 lt!7479) #b00000000000000000000000000000000))))

(declare-fun b!13788 () Bool)

(declare-fun Unit!1530 () Unit!1527)

(assert (=> b!13788 (= e!7961 (tuple4!371 Unit!1530 lt!7477 lt!7480 lt!7481))))

(assert (= (and d!4799 res!10588) b!13786))

(assert (= (and b!13786 res!10590) b!13784))

(assert (= (and d!4799 c!1809) b!13785))

(assert (= (and d!4799 (not c!1809)) b!13788))

(assert (= (and d!4799 res!10587) b!13783))

(assert (= (and b!13783 res!10589) b!13787))

(declare-fun m!19503 () Bool)

(assert (=> b!13783 m!19503))

(declare-fun m!19505 () Bool)

(assert (=> d!4799 m!19505))

(declare-fun m!19507 () Bool)

(assert (=> d!4799 m!19507))

(declare-fun m!19509 () Bool)

(assert (=> b!13785 m!19509))

(declare-fun m!19511 () Bool)

(assert (=> b!13786 m!19511))

(assert (=> b!13769 d!4799))

(declare-fun d!4801 () Bool)

(assert (=> d!4801 (= (array_inv!437 q!31) (bvsge (size!490 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2563 d!4801))

(declare-fun d!4803 () Bool)

(assert (=> d!4803 (= (array_inv!438 iq!76) (bvsge (size!489 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2563 d!4803))

(declare-fun d!4805 () Bool)

(declare-fun res!10593 () Bool)

(declare-fun e!7966 () Bool)

(assert (=> d!4805 (=> (not res!10593) (not e!7966))))

(assert (=> d!4805 (= res!10593 (= (size!489 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!4805 (= (iqInv!0 iq!76) e!7966)))

(declare-fun b!13791 () Bool)

(declare-fun lambda!580 () Int)

(declare-fun all20Int!0 (array!1103 Int) Bool)

(assert (=> b!13791 (= e!7966 (all20Int!0 iq!76 lambda!580))))

(assert (= (and d!4805 res!10593) b!13791))

(declare-fun m!19513 () Bool)

(assert (=> b!13791 m!19513))

(assert (=> b!13768 d!4805))

(declare-fun d!4807 () Bool)

(declare-fun res!10596 () Bool)

(declare-fun e!7969 () Bool)

(assert (=> d!4807 (=> (not res!10596) (not e!7969))))

(assert (=> d!4807 (= res!10596 (= (size!490 q!31) #b00000000000000000000000000010100))))

(assert (=> d!4807 (= (qInv!0 q!31) e!7969)))

(declare-fun b!13794 () Bool)

(declare-fun lambda!583 () Int)

(declare-fun all20!0 (array!1105 Int) Bool)

(assert (=> b!13794 (= e!7969 (all20!0 q!31 lambda!583))))

(assert (= (and d!4807 res!10596) b!13794))

(declare-fun m!19515 () Bool)

(assert (=> b!13794 m!19515))

(assert (=> b!13767 d!4807))

(check-sat (not b!13794) (not b!13786) (not b!13783) (not b!13785) (not b!13791))
(check-sat)
