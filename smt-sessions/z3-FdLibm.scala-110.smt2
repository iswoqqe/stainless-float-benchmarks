; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!883 () Bool)

(assert start!883)

(declare-fun res!2814 () Bool)

(declare-fun e!1892 () Bool)

(assert (=> start!883 (=> (not res!2814) (not e!1892))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!883 (= res!2814 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!883 e!1892))

(assert (=> start!883 true))

(declare-datatypes ((array!246 0))(
  ( (array!247 (arr!109 (Array (_ BitVec 32) (_ BitVec 32))) (size!109 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!246)

(declare-fun array_inv!59 (array!246) Bool)

(assert (=> start!883 (array_inv!59 iq!165)))

(declare-datatypes ((array!248 0))(
  ( (array!249 (arr!110 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!110 (_ BitVec 32))) )
))
(declare-fun q!85 () array!248)

(declare-fun array_inv!60 (array!248) Bool)

(assert (=> start!883 (array_inv!60 q!85)))

(declare-fun b!3700 () Bool)

(declare-fun lt!2525 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!304 0))(
  ( (Unit!305) )
))
(declare-datatypes ((tuple4!148 0))(
  ( (tuple4!149 (_1!129 Unit!304) (_2!129 array!246) (_3!117 (_ BitVec 32)) (_4!74 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1888 () tuple4!148)

(declare-fun lt!2526 () array!246)

(declare-fun Unit!306 () Unit!304)

(assert (=> b!3700 (= e!1888 (tuple4!149 Unit!306 lt!2526 jz!53 lt!2525))))

(declare-fun b!3701 () Bool)

(declare-fun res!2815 () Bool)

(assert (=> b!3701 (=> (not res!2815) (not e!1892))))

(declare-fun qInv!0 (array!248) Bool)

(assert (=> b!3701 (= res!2815 (qInv!0 q!85))))

(declare-fun b!3702 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!248 array!246 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!148)

(assert (=> b!3702 (= e!1888 (computeModuloWhile!0 jz!53 q!85 lt!2526 jz!53 lt!2525))))

(declare-fun b!3703 () Bool)

(declare-fun res!2813 () Bool)

(declare-fun e!1891 () Bool)

(assert (=> b!3703 (=> (not res!2813) (not e!1891))))

(declare-fun iqInv!0 (array!246) Bool)

(assert (=> b!3703 (= res!2813 (iqInv!0 iq!165))))

(declare-fun b!3704 () Bool)

(assert (=> b!3704 (= e!1892 e!1891)))

(declare-fun res!2816 () Bool)

(assert (=> b!3704 (=> (not res!2816) (not e!1891))))

(declare-fun lt!2527 () tuple4!148)

(declare-fun lt!2528 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3704 (= res!2816 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2528) (fp.lt lt!2528 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!109 (_2!129 lt!2527)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3704 (= lt!2528 (fp.sub roundNearestTiesToEven (_4!74 lt!2527) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!74 lt!2527) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!74 lt!2527) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!74 lt!2527) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!74 lt!2527) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3704 (= lt!2527 e!1888)))

(declare-fun c!650 () Bool)

(assert (=> b!3704 (= c!650 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3704 (= lt!2525 (select (arr!110 q!85) jz!53))))

(assert (=> b!3704 (= lt!2526 (array!247 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun b!3705 () Bool)

(assert (=> b!3705 (= e!1891 (and (bvsge (select (arr!109 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (or (bvslt i!252 #b00000000000000000000000000000000) (bvsge i!252 (size!109 iq!165)))))))

(assert (= (and start!883 res!2814) b!3701))

(assert (= (and b!3701 res!2815) b!3704))

(assert (= (and b!3704 c!650) b!3702))

(assert (= (and b!3704 (not c!650)) b!3700))

(assert (= (and b!3704 res!2816) b!3703))

(assert (= (and b!3703 res!2813) b!3705))

(declare-fun m!4625 () Bool)

(assert (=> b!3702 m!4625))

(declare-fun m!4627 () Bool)

(assert (=> b!3704 m!4627))

(declare-fun m!4629 () Bool)

(assert (=> b!3704 m!4629))

(declare-fun m!4631 () Bool)

(assert (=> b!3705 m!4631))

(declare-fun m!4633 () Bool)

(assert (=> b!3703 m!4633))

(declare-fun m!4635 () Bool)

(assert (=> b!3701 m!4635))

(declare-fun m!4637 () Bool)

(assert (=> start!883 m!4637))

(declare-fun m!4639 () Bool)

(assert (=> start!883 m!4639))

(check-sat (not start!883) (not b!3703) (not b!3701) (not b!3702))
(check-sat)
(get-model)

(declare-fun d!1709 () Bool)

(assert (=> d!1709 (= (array_inv!59 iq!165) (bvsge (size!109 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!883 d!1709))

(declare-fun d!1711 () Bool)

(assert (=> d!1711 (= (array_inv!60 q!85) (bvsge (size!110 q!85) #b00000000000000000000000000000000))))

(assert (=> start!883 d!1711))

(declare-fun d!1713 () Bool)

(declare-fun res!2819 () Bool)

(declare-fun e!1895 () Bool)

(assert (=> d!1713 (=> (not res!2819) (not e!1895))))

(assert (=> d!1713 (= res!2819 (= (size!109 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!1713 (= (iqInv!0 iq!165) e!1895)))

(declare-fun b!3708 () Bool)

(declare-fun lambda!145 () Int)

(declare-fun all20Int!0 (array!246 Int) Bool)

(assert (=> b!3708 (= e!1895 (all20Int!0 iq!165 lambda!145))))

(assert (= (and d!1713 res!2819) b!3708))

(declare-fun m!4641 () Bool)

(assert (=> b!3708 m!4641))

(assert (=> b!3703 d!1713))

(declare-fun d!1715 () Bool)

(declare-fun res!2822 () Bool)

(declare-fun e!1898 () Bool)

(assert (=> d!1715 (=> (not res!2822) (not e!1898))))

(assert (=> d!1715 (= res!2822 (= (size!110 q!85) #b00000000000000000000000000010100))))

(assert (=> d!1715 (= (qInv!0 q!85) e!1898)))

(declare-fun b!3711 () Bool)

(declare-fun lambda!148 () Int)

(declare-fun all20!0 (array!248 Int) Bool)

(assert (=> b!3711 (= e!1898 (all20!0 q!85 lambda!148))))

(assert (= (and d!1715 res!2822) b!3711))

(declare-fun m!4643 () Bool)

(assert (=> b!3711 m!4643))

(assert (=> b!3701 d!1715))

(declare-fun b!3724 () Bool)

(declare-fun e!1905 () Bool)

(declare-fun lt!2542 () tuple4!148)

(assert (=> b!3724 (= e!1905 (bvsle (_3!117 lt!2542) #b00000000000000000000000000000000))))

(declare-fun b!3725 () Bool)

(declare-fun res!2832 () Bool)

(assert (=> b!3725 (=> (not res!2832) (not e!1905))))

(assert (=> b!3725 (= res!2832 (iqInv!0 (_2!129 lt!2542)))))

(declare-fun d!1717 () Bool)

(assert (=> d!1717 e!1905))

(declare-fun res!2831 () Bool)

(assert (=> d!1717 (=> (not res!2831) (not e!1905))))

(assert (=> d!1717 (= res!2831 (and true true (bvsle #b00000000000000000000000000000000 (_3!117 lt!2542)) (bvsle (_3!117 lt!2542) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!74 lt!2542)) (fp.leq (_4!74 lt!2542) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!1907 () tuple4!148)

(assert (=> d!1717 (= lt!2542 e!1907)))

(declare-fun c!653 () Bool)

(declare-fun lt!2539 () (_ BitVec 32))

(assert (=> d!1717 (= c!653 (bvsgt lt!2539 #b00000000000000000000000000000000))))

(assert (=> d!1717 (= lt!2539 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2540 () (_ FloatingPoint 11 53))

(declare-fun lt!2541 () (_ FloatingPoint 11 53))

(assert (=> d!1717 (= lt!2540 (fp.add roundNearestTiesToEven (select (arr!110 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2541))))

(declare-fun lt!2543 () array!246)

(assert (=> d!1717 (= lt!2543 (array!247 (store (arr!109 lt!2526) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2525 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2541))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2525 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2541)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2525 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2541)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2525 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2541))))))) (size!109 lt!2526)))))

(assert (=> d!1717 (= lt!2541 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2525)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2525) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2525) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2525)))))))))

(declare-fun e!1906 () Bool)

(assert (=> d!1717 e!1906))

(declare-fun res!2834 () Bool)

(assert (=> d!1717 (=> (not res!2834) (not e!1906))))

(assert (=> d!1717 (= res!2834 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2525) (fp.leq lt!2525 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1717 (= (computeModuloWhile!0 jz!53 q!85 lt!2526 jz!53 lt!2525) lt!2542)))

(declare-fun b!3726 () Bool)

(declare-fun Unit!307 () Unit!304)

(assert (=> b!3726 (= e!1907 (tuple4!149 Unit!307 lt!2543 lt!2539 lt!2540))))

(declare-fun b!3727 () Bool)

(assert (=> b!3727 (= e!1906 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!3728 () Bool)

(assert (=> b!3728 (= e!1907 (computeModuloWhile!0 jz!53 q!85 lt!2543 lt!2539 lt!2540))))

(declare-fun b!3729 () Bool)

(declare-fun res!2833 () Bool)

(assert (=> b!3729 (=> (not res!2833) (not e!1906))))

(assert (=> b!3729 (= res!2833 (iqInv!0 lt!2526))))

(assert (= (and d!1717 res!2834) b!3729))

(assert (= (and b!3729 res!2833) b!3727))

(assert (= (and d!1717 c!653) b!3728))

(assert (= (and d!1717 (not c!653)) b!3726))

(assert (= (and d!1717 res!2831) b!3725))

(assert (= (and b!3725 res!2832) b!3724))

(declare-fun m!4645 () Bool)

(assert (=> b!3725 m!4645))

(declare-fun m!4647 () Bool)

(assert (=> d!1717 m!4647))

(declare-fun m!4649 () Bool)

(assert (=> d!1717 m!4649))

(declare-fun m!4651 () Bool)

(assert (=> b!3728 m!4651))

(declare-fun m!4653 () Bool)

(assert (=> b!3729 m!4653))

(assert (=> b!3702 d!1717))

(check-sat (not b!3725) (not b!3708) (not b!3728) (not b!3711) (not b!3729))
(check-sat)
