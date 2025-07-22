; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!895 () Bool)

(assert start!895)

(declare-fun b!3746 () Bool)

(declare-fun e!1921 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun lt!2556 () (_ BitVec 32))

(assert (=> b!3746 (= e!1921 (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2556 #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!2556 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000001000000000000000000000000 lt!2556) #b10000000000000000000000000000000)))))))

(declare-fun b!3747 () Bool)

(declare-fun res!2850 () Bool)

(declare-fun e!1920 () Bool)

(assert (=> b!3747 (=> (not res!2850) (not e!1920))))

(declare-datatypes ((array!252 0))(
  ( (array!253 (arr!111 (Array (_ BitVec 32) (_ BitVec 32))) (size!111 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!252)

(declare-fun iqInv!0 (array!252) Bool)

(assert (=> b!3747 (= res!2850 (iqInv!0 iq!165))))

(declare-datatypes ((array!254 0))(
  ( (array!255 (arr!112 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!112 (_ BitVec 32))) )
))
(declare-fun q!85 () array!254)

(declare-fun b!3748 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!2558 () (_ FloatingPoint 11 53))

(declare-fun lt!2557 () array!252)

(declare-datatypes ((Unit!308 0))(
  ( (Unit!309) )
))
(declare-datatypes ((tuple4!150 0))(
  ( (tuple4!151 (_1!130 Unit!308) (_2!130 array!252) (_3!118 (_ BitVec 32)) (_4!75 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1922 () tuple4!150)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!254 array!252 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!150)

(assert (=> b!3748 (= e!1922 (computeModuloWhile!0 jz!53 q!85 lt!2557 jz!53 lt!2558))))

(declare-fun b!3749 () Bool)

(declare-fun Unit!310 () Unit!308)

(assert (=> b!3749 (= e!1922 (tuple4!151 Unit!310 lt!2557 jz!53 lt!2558))))

(declare-fun res!2849 () Bool)

(declare-fun e!1923 () Bool)

(assert (=> start!895 (=> (not res!2849) (not e!1923))))

(assert (=> start!895 (= res!2849 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!895 e!1923))

(assert (=> start!895 true))

(declare-fun array_inv!61 (array!252) Bool)

(assert (=> start!895 (array_inv!61 iq!165)))

(declare-fun array_inv!62 (array!254) Bool)

(assert (=> start!895 (array_inv!62 q!85)))

(declare-fun b!3750 () Bool)

(assert (=> b!3750 (= e!1923 e!1920)))

(declare-fun res!2851 () Bool)

(assert (=> b!3750 (=> (not res!2851) (not e!1920))))

(declare-fun lt!2555 () tuple4!150)

(declare-fun lt!2554 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3750 (= res!2851 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2554) (fp.lt lt!2554 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!111 (_2!130 lt!2555)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3750 (= lt!2554 (fp.sub roundNearestTiesToEven (_4!75 lt!2555) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!75 lt!2555) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!75 lt!2555) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!75 lt!2555) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!75 lt!2555) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3750 (= lt!2555 e!1922)))

(declare-fun c!656 () Bool)

(assert (=> b!3750 (= c!656 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3750 (= lt!2558 (select (arr!112 q!85) jz!53))))

(assert (=> b!3750 (= lt!2557 (array!253 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3751 () Bool)

(declare-fun res!2848 () Bool)

(assert (=> b!3751 (=> (not res!2848) (not e!1923))))

(declare-fun qInv!0 (array!254) Bool)

(assert (=> b!3751 (= res!2848 (qInv!0 q!85))))

(declare-fun b!3752 () Bool)

(declare-fun res!2852 () Bool)

(assert (=> b!3752 (=> (not res!2852) (not e!1920))))

(assert (=> b!3752 (= res!2852 (and (bvsge (select (arr!111 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!3753 () Bool)

(assert (=> b!3753 (= e!1920 e!1921)))

(declare-fun res!2847 () Bool)

(assert (=> b!3753 (=> (not res!2847) (not e!1921))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3753 (= res!2847 (QInt!0 lt!2556))))

(assert (=> b!3753 (= lt!2556 (select (arr!111 iq!165) i!252))))

(assert (= (and start!895 res!2849) b!3751))

(assert (= (and b!3751 res!2848) b!3750))

(assert (= (and b!3750 c!656) b!3748))

(assert (= (and b!3750 (not c!656)) b!3749))

(assert (= (and b!3750 res!2851) b!3747))

(assert (= (and b!3747 res!2850) b!3752))

(assert (= (and b!3752 res!2852) b!3753))

(assert (= (and b!3753 res!2847) b!3746))

(declare-fun m!4655 () Bool)

(assert (=> b!3753 m!4655))

(declare-fun m!4657 () Bool)

(assert (=> b!3753 m!4657))

(declare-fun m!4659 () Bool)

(assert (=> b!3752 m!4659))

(declare-fun m!4661 () Bool)

(assert (=> b!3750 m!4661))

(declare-fun m!4663 () Bool)

(assert (=> b!3750 m!4663))

(declare-fun m!4665 () Bool)

(assert (=> start!895 m!4665))

(declare-fun m!4667 () Bool)

(assert (=> start!895 m!4667))

(declare-fun m!4669 () Bool)

(assert (=> b!3748 m!4669))

(declare-fun m!4671 () Bool)

(assert (=> b!3747 m!4671))

(declare-fun m!4673 () Bool)

(assert (=> b!3751 m!4673))

(check-sat (not b!3751) (not b!3748) (not b!3753) (not start!895) (not b!3747))
(check-sat)
(get-model)

(declare-fun b!3766 () Bool)

(declare-fun lt!2573 () (_ FloatingPoint 11 53))

(declare-fun lt!2569 () (_ BitVec 32))

(declare-fun lt!2571 () array!252)

(declare-fun e!1932 () tuple4!150)

(declare-fun Unit!311 () Unit!308)

(assert (=> b!3766 (= e!1932 (tuple4!151 Unit!311 lt!2571 lt!2569 lt!2573))))

(declare-fun b!3767 () Bool)

(assert (=> b!3767 (= e!1932 (computeModuloWhile!0 jz!53 q!85 lt!2571 lt!2569 lt!2573))))

(declare-fun b!3769 () Bool)

(declare-fun res!2863 () Bool)

(declare-fun e!1933 () Bool)

(assert (=> b!3769 (=> (not res!2863) (not e!1933))))

(assert (=> b!3769 (= res!2863 (iqInv!0 lt!2557))))

(declare-fun b!3770 () Bool)

(assert (=> b!3770 (= e!1933 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!3771 () Bool)

(declare-fun e!1934 () Bool)

(declare-fun lt!2570 () tuple4!150)

(assert (=> b!3771 (= e!1934 (bvsle (_3!118 lt!2570) #b00000000000000000000000000000000))))

(declare-fun d!1719 () Bool)

(assert (=> d!1719 e!1934))

(declare-fun res!2864 () Bool)

(assert (=> d!1719 (=> (not res!2864) (not e!1934))))

(assert (=> d!1719 (= res!2864 (and true true (bvsle #b00000000000000000000000000000000 (_3!118 lt!2570)) (bvsle (_3!118 lt!2570) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!75 lt!2570)) (fp.leq (_4!75 lt!2570) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1719 (= lt!2570 e!1932)))

(declare-fun c!659 () Bool)

(assert (=> d!1719 (= c!659 (bvsgt lt!2569 #b00000000000000000000000000000000))))

(assert (=> d!1719 (= lt!2569 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2572 () (_ FloatingPoint 11 53))

(assert (=> d!1719 (= lt!2573 (fp.add roundNearestTiesToEven (select (arr!112 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2572))))

(assert (=> d!1719 (= lt!2571 (array!253 (store (arr!111 lt!2557) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2558 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2572))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2558 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2572)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2558 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2572)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2558 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2572))))))) (size!111 lt!2557)))))

(assert (=> d!1719 (= lt!2572 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2558)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2558) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2558) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2558)))))))))

(assert (=> d!1719 e!1933))

(declare-fun res!2861 () Bool)

(assert (=> d!1719 (=> (not res!2861) (not e!1933))))

(assert (=> d!1719 (= res!2861 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2558) (fp.leq lt!2558 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1719 (= (computeModuloWhile!0 jz!53 q!85 lt!2557 jz!53 lt!2558) lt!2570)))

(declare-fun b!3768 () Bool)

(declare-fun res!2862 () Bool)

(assert (=> b!3768 (=> (not res!2862) (not e!1934))))

(assert (=> b!3768 (= res!2862 (iqInv!0 (_2!130 lt!2570)))))

(assert (= (and d!1719 res!2861) b!3769))

(assert (= (and b!3769 res!2863) b!3770))

(assert (= (and d!1719 c!659) b!3767))

(assert (= (and d!1719 (not c!659)) b!3766))

(assert (= (and d!1719 res!2864) b!3768))

(assert (= (and b!3768 res!2862) b!3771))

(declare-fun m!4675 () Bool)

(assert (=> b!3767 m!4675))

(declare-fun m!4677 () Bool)

(assert (=> b!3769 m!4677))

(declare-fun m!4679 () Bool)

(assert (=> d!1719 m!4679))

(declare-fun m!4681 () Bool)

(assert (=> d!1719 m!4681))

(declare-fun m!4683 () Bool)

(assert (=> b!3768 m!4683))

(assert (=> b!3748 d!1719))

(declare-fun d!1721 () Bool)

(assert (=> d!1721 (= (QInt!0 lt!2556) (and (bvsle #b00000000000000000000000000000000 lt!2556) (bvsle lt!2556 #b00000000111111111111111111111111)))))

(assert (=> b!3753 d!1721))

(declare-fun d!1723 () Bool)

(declare-fun res!2867 () Bool)

(declare-fun e!1937 () Bool)

(assert (=> d!1723 (=> (not res!2867) (not e!1937))))

(assert (=> d!1723 (= res!2867 (= (size!111 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!1723 (= (iqInv!0 iq!165) e!1937)))

(declare-fun b!3774 () Bool)

(declare-fun lambda!151 () Int)

(declare-fun all20Int!0 (array!252 Int) Bool)

(assert (=> b!3774 (= e!1937 (all20Int!0 iq!165 lambda!151))))

(assert (= (and d!1723 res!2867) b!3774))

(declare-fun m!4685 () Bool)

(assert (=> b!3774 m!4685))

(assert (=> b!3747 d!1723))

(declare-fun d!1725 () Bool)

(declare-fun res!2870 () Bool)

(declare-fun e!1940 () Bool)

(assert (=> d!1725 (=> (not res!2870) (not e!1940))))

(assert (=> d!1725 (= res!2870 (= (size!112 q!85) #b00000000000000000000000000010100))))

(assert (=> d!1725 (= (qInv!0 q!85) e!1940)))

(declare-fun b!3777 () Bool)

(declare-fun lambda!154 () Int)

(declare-fun all20!0 (array!254 Int) Bool)

(assert (=> b!3777 (= e!1940 (all20!0 q!85 lambda!154))))

(assert (= (and d!1725 res!2870) b!3777))

(declare-fun m!4687 () Bool)

(assert (=> b!3777 m!4687))

(assert (=> b!3751 d!1725))

(declare-fun d!1727 () Bool)

(assert (=> d!1727 (= (array_inv!61 iq!165) (bvsge (size!111 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!895 d!1727))

(declare-fun d!1729 () Bool)

(assert (=> d!1729 (= (array_inv!62 q!85) (bvsge (size!112 q!85) #b00000000000000000000000000000000))))

(assert (=> start!895 d!1729))

(check-sat (not b!3768) (not b!3774) (not b!3767) (not b!3769) (not b!3777))
(check-sat)
