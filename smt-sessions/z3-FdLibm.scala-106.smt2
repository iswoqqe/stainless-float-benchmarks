; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!865 () Bool)

(assert start!865)

(declare-fun res!2749 () Bool)

(declare-fun e!1814 () Bool)

(assert (=> start!865 (=> (not res!2749) (not e!1814))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!865 (= res!2749 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!865 e!1814))

(assert (=> start!865 true))

(declare-datatypes ((array!228 0))(
  ( (array!229 (arr!101 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!101 (_ BitVec 32))) )
))
(declare-fun q!85 () array!228)

(declare-fun array_inv!51 (array!228) Bool)

(assert (=> start!865 (array_inv!51 q!85)))

(declare-datatypes ((array!230 0))(
  ( (array!231 (arr!102 (Array (_ BitVec 32) (_ BitVec 32))) (size!102 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!230)

(declare-fun array_inv!52 (array!230) Bool)

(assert (=> start!865 (array_inv!52 iq!165)))

(declare-fun b!3604 () Bool)

(declare-fun e!1816 () Bool)

(assert (=> b!3604 (= e!1814 e!1816)))

(declare-fun res!2747 () Bool)

(assert (=> b!3604 (=> (not res!2747) (not e!1816))))

(declare-datatypes ((Unit!291 0))(
  ( (Unit!292) )
))
(declare-datatypes ((tuple4!140 0))(
  ( (tuple4!141 (_1!125 Unit!291) (_2!125 array!230) (_3!113 (_ BitVec 32)) (_4!70 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2461 () tuple4!140)

(declare-fun lt!2463 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3604 (= res!2747 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2463) (fp.lt lt!2463 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!102 (_2!125 lt!2461)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3604 (= lt!2463 (fp.sub roundNearestTiesToEven (_4!70 lt!2461) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!70 lt!2461) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!70 lt!2461) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!70 lt!2461) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!70 lt!2461) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1815 () tuple4!140)

(assert (=> b!3604 (= lt!2461 e!1815)))

(declare-fun c!635 () Bool)

(assert (=> b!3604 (= c!635 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2462 () (_ FloatingPoint 11 53))

(assert (=> b!3604 (= lt!2462 (select (arr!101 q!85) jz!53))))

(declare-fun lt!2464 () array!230)

(assert (=> b!3604 (= lt!2464 (array!231 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3605 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!228 array!230 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!140)

(assert (=> b!3605 (= e!1815 (computeModuloWhile!0 jz!53 q!85 lt!2464 jz!53 lt!2462))))

(declare-fun b!3606 () Bool)

(declare-fun res!2750 () Bool)

(assert (=> b!3606 (=> (not res!2750) (not e!1814))))

(declare-fun qInv!0 (array!228) Bool)

(assert (=> b!3606 (= res!2750 (qInv!0 q!85))))

(declare-fun b!3607 () Bool)

(declare-fun lt!2465 () (_ BitVec 32))

(assert (=> b!3607 (= e!1816 (or (bvslt lt!2465 #b00000000000000000000000000000000) (bvsge lt!2465 (size!102 iq!165))))))

(assert (=> b!3607 (= lt!2465 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun b!3608 () Bool)

(declare-fun res!2748 () Bool)

(assert (=> b!3608 (=> (not res!2748) (not e!1816))))

(declare-fun iqInv!0 (array!230) Bool)

(assert (=> b!3608 (= res!2748 (iqInv!0 iq!165))))

(declare-fun b!3609 () Bool)

(declare-fun Unit!293 () Unit!291)

(assert (=> b!3609 (= e!1815 (tuple4!141 Unit!293 lt!2464 jz!53 lt!2462))))

(assert (= (and start!865 res!2749) b!3606))

(assert (= (and b!3606 res!2750) b!3604))

(assert (= (and b!3604 c!635) b!3605))

(assert (= (and b!3604 (not c!635)) b!3609))

(assert (= (and b!3604 res!2747) b!3608))

(assert (= (and b!3608 res!2748) b!3607))

(declare-fun m!4549 () Bool)

(assert (=> start!865 m!4549))

(declare-fun m!4551 () Bool)

(assert (=> start!865 m!4551))

(declare-fun m!4553 () Bool)

(assert (=> b!3605 m!4553))

(declare-fun m!4555 () Bool)

(assert (=> b!3604 m!4555))

(declare-fun m!4557 () Bool)

(assert (=> b!3604 m!4557))

(declare-fun m!4559 () Bool)

(assert (=> b!3606 m!4559))

(declare-fun m!4561 () Bool)

(assert (=> b!3608 m!4561))

(check-sat (not start!865) (not b!3605) (not b!3608) (not b!3606))
(check-sat)
(get-model)

(declare-fun d!1699 () Bool)

(assert (=> d!1699 (= (array_inv!51 q!85) (bvsge (size!101 q!85) #b00000000000000000000000000000000))))

(assert (=> start!865 d!1699))

(declare-fun d!1701 () Bool)

(assert (=> d!1701 (= (array_inv!52 iq!165) (bvsge (size!102 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!865 d!1701))

(declare-fun b!3622 () Bool)

(declare-fun res!2759 () Bool)

(declare-fun e!1826 () Bool)

(assert (=> b!3622 (=> (not res!2759) (not e!1826))))

(declare-fun lt!2480 () tuple4!140)

(assert (=> b!3622 (= res!2759 (iqInv!0 (_2!125 lt!2480)))))

(declare-fun d!1703 () Bool)

(assert (=> d!1703 e!1826))

(declare-fun res!2760 () Bool)

(assert (=> d!1703 (=> (not res!2760) (not e!1826))))

(assert (=> d!1703 (= res!2760 (and true true (bvsle #b00000000000000000000000000000000 (_3!113 lt!2480)) (bvsle (_3!113 lt!2480) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!70 lt!2480)) (fp.leq (_4!70 lt!2480) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!1824 () tuple4!140)

(assert (=> d!1703 (= lt!2480 e!1824)))

(declare-fun c!638 () Bool)

(declare-fun lt!2476 () (_ BitVec 32))

(assert (=> d!1703 (= c!638 (bvsgt lt!2476 #b00000000000000000000000000000000))))

(assert (=> d!1703 (= lt!2476 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2479 () (_ FloatingPoint 11 53))

(declare-fun lt!2478 () (_ FloatingPoint 11 53))

(assert (=> d!1703 (= lt!2478 (fp.add roundNearestTiesToEven (select (arr!101 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2479))))

(declare-fun lt!2477 () array!230)

(assert (=> d!1703 (= lt!2477 (array!231 (store (arr!102 lt!2464) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2462 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2479))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2462 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2479)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2462 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2479)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2462 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2479))))))) (size!102 lt!2464)))))

(assert (=> d!1703 (= lt!2479 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2462)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2462) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2462) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2462)))))))))

(declare-fun e!1825 () Bool)

(assert (=> d!1703 e!1825))

(declare-fun res!2762 () Bool)

(assert (=> d!1703 (=> (not res!2762) (not e!1825))))

(assert (=> d!1703 (= res!2762 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2462) (fp.leq lt!2462 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1703 (= (computeModuloWhile!0 jz!53 q!85 lt!2464 jz!53 lt!2462) lt!2480)))

(declare-fun b!3623 () Bool)

(assert (=> b!3623 (= e!1825 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!3624 () Bool)

(assert (=> b!3624 (= e!1824 (computeModuloWhile!0 jz!53 q!85 lt!2477 lt!2476 lt!2478))))

(declare-fun b!3625 () Bool)

(assert (=> b!3625 (= e!1826 (bvsle (_3!113 lt!2480) #b00000000000000000000000000000000))))

(declare-fun b!3626 () Bool)

(declare-fun res!2761 () Bool)

(assert (=> b!3626 (=> (not res!2761) (not e!1825))))

(assert (=> b!3626 (= res!2761 (iqInv!0 lt!2464))))

(declare-fun b!3627 () Bool)

(declare-fun Unit!294 () Unit!291)

(assert (=> b!3627 (= e!1824 (tuple4!141 Unit!294 lt!2477 lt!2476 lt!2478))))

(assert (= (and d!1703 res!2762) b!3626))

(assert (= (and b!3626 res!2761) b!3623))

(assert (= (and d!1703 c!638) b!3624))

(assert (= (and d!1703 (not c!638)) b!3627))

(assert (= (and d!1703 res!2760) b!3622))

(assert (= (and b!3622 res!2759) b!3625))

(declare-fun m!4563 () Bool)

(assert (=> b!3622 m!4563))

(declare-fun m!4565 () Bool)

(assert (=> d!1703 m!4565))

(declare-fun m!4567 () Bool)

(assert (=> d!1703 m!4567))

(declare-fun m!4569 () Bool)

(assert (=> b!3624 m!4569))

(declare-fun m!4571 () Bool)

(assert (=> b!3626 m!4571))

(assert (=> b!3605 d!1703))

(declare-fun d!1705 () Bool)

(declare-fun res!2765 () Bool)

(declare-fun e!1829 () Bool)

(assert (=> d!1705 (=> (not res!2765) (not e!1829))))

(assert (=> d!1705 (= res!2765 (= (size!102 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!1705 (= (iqInv!0 iq!165) e!1829)))

(declare-fun b!3630 () Bool)

(declare-fun lambda!139 () Int)

(declare-fun all20Int!0 (array!230 Int) Bool)

(assert (=> b!3630 (= e!1829 (all20Int!0 iq!165 lambda!139))))

(assert (= (and d!1705 res!2765) b!3630))

(declare-fun m!4573 () Bool)

(assert (=> b!3630 m!4573))

(assert (=> b!3608 d!1705))

(declare-fun d!1707 () Bool)

(declare-fun res!2768 () Bool)

(declare-fun e!1832 () Bool)

(assert (=> d!1707 (=> (not res!2768) (not e!1832))))

(assert (=> d!1707 (= res!2768 (= (size!101 q!85) #b00000000000000000000000000010100))))

(assert (=> d!1707 (= (qInv!0 q!85) e!1832)))

(declare-fun b!3633 () Bool)

(declare-fun lambda!142 () Int)

(declare-fun all20!0 (array!228 Int) Bool)

(assert (=> b!3633 (= e!1832 (all20!0 q!85 lambda!142))))

(assert (= (and d!1707 res!2768) b!3633))

(declare-fun m!4575 () Bool)

(assert (=> b!3633 m!4575))

(assert (=> b!3606 d!1707))

(check-sat (not b!3624) (not b!3626) (not b!3630) (not b!3633) (not b!3622))
(check-sat)
