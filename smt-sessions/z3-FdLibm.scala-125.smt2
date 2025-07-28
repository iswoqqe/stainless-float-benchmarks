; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1009 () Bool)

(assert start!1009)

(declare-fun b!4750 () Bool)

(declare-fun res!3665 () Bool)

(declare-fun e!2399 () Bool)

(assert (=> b!4750 (=> (not res!3665) (not e!2399))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((array!320 0))(
  ( (array!321 (arr!139 (Array (_ BitVec 32) (_ BitVec 32))) (size!139 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!320)

(assert (=> b!4750 (= res!3665 (and (bvsge (select (arr!139 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4751 () Bool)

(declare-fun res!3666 () Bool)

(declare-fun e!2401 () Bool)

(assert (=> b!4751 (=> (not res!3666) (not e!2401))))

(declare-fun lt!3053 () (_ BitVec 32))

(declare-fun iqInv!0 (array!320) Bool)

(assert (=> b!4751 (= res!3666 (iqInv!0 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3053 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3053) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3053))) (size!139 iq!165))))))

(declare-fun b!4752 () Bool)

(declare-fun e!2402 () Bool)

(assert (=> b!4752 (= e!2402 e!2401)))

(declare-fun res!3663 () Bool)

(assert (=> b!4752 (=> (not res!3663) (not e!2401))))

(declare-fun lt!3047 () (_ BitVec 32))

(assert (=> b!4752 (= res!3663 (and (bvsge lt!3047 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3047) (bvsle lt!3047 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4752 (= lt!3047 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4753 () Bool)

(declare-fun res!3664 () Bool)

(assert (=> b!4753 (=> (not res!3664) (not e!2399))))

(assert (=> b!4753 (= res!3664 (iqInv!0 iq!165))))

(declare-fun res!3662 () Bool)

(declare-fun e!2400 () Bool)

(assert (=> start!1009 (=> (not res!3662) (not e!2400))))

(assert (=> start!1009 (= res!3662 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1009 e!2400))

(assert (=> start!1009 true))

(declare-fun array_inv!89 (array!320) Bool)

(assert (=> start!1009 (array_inv!89 iq!165)))

(declare-datatypes ((array!322 0))(
  ( (array!323 (arr!140 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!140 (_ BitVec 32))) )
))
(declare-fun q!85 () array!322)

(declare-fun array_inv!90 (array!322) Bool)

(assert (=> start!1009 (array_inv!90 q!85)))

(declare-fun lt!3051 () (_ FloatingPoint 11 53))

(declare-fun lt!3048 () array!320)

(declare-fun b!4754 () Bool)

(declare-datatypes ((Unit!378 0))(
  ( (Unit!379) )
))
(declare-datatypes ((tuple4!190 0))(
  ( (tuple4!191 (_1!150 Unit!378) (_2!150 array!320) (_3!138 (_ BitVec 32)) (_4!95 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2403 () tuple4!190)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!322 array!320 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!190)

(assert (=> b!4754 (= e!2403 (computeModuloWhile!0 jz!53 q!85 lt!3048 jz!53 lt!3051))))

(declare-fun b!4755 () Bool)

(declare-fun Unit!380 () Unit!378)

(assert (=> b!4755 (= e!2403 (tuple4!191 Unit!380 lt!3048 jz!53 lt!3051))))

(declare-fun b!4756 () Bool)

(assert (=> b!4756 (= e!2400 e!2399)))

(declare-fun res!3659 () Bool)

(assert (=> b!4756 (=> (not res!3659) (not e!2399))))

(declare-fun lt!3052 () (_ FloatingPoint 11 53))

(declare-fun lt!3049 () tuple4!190)

(assert (=> b!4756 (= res!3659 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3052) (fp.lt lt!3052 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!139 (_2!150 lt!3049)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4756 (= lt!3052 (fp.sub roundNearestTiesToEven (_4!95 lt!3049) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!95 lt!3049) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!95 lt!3049) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!95 lt!3049) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!95 lt!3049) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4756 (= lt!3049 e!2403)))

(declare-fun c!752 () Bool)

(assert (=> b!4756 (= c!752 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4756 (= lt!3051 (select (arr!140 q!85) jz!53))))

(assert (=> b!4756 (= lt!3048 (array!321 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4757 () Bool)

(declare-fun lt!3050 () (_ BitVec 32))

(assert (=> b!4757 (= e!2401 (or (bvslt lt!3050 #b00000000000000000000000000000000) (bvsge lt!3050 (size!139 iq!165))))))

(assert (=> b!4757 (= lt!3050 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun b!4758 () Bool)

(assert (=> b!4758 (= e!2399 e!2402)))

(declare-fun res!3660 () Bool)

(assert (=> b!4758 (=> (not res!3660) (not e!2402))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4758 (= res!3660 (QInt!0 lt!3053))))

(assert (=> b!4758 (= lt!3053 (select (arr!139 iq!165) i!252))))

(declare-fun b!4759 () Bool)

(declare-fun res!3661 () Bool)

(assert (=> b!4759 (=> (not res!3661) (not e!2400))))

(declare-fun qInv!0 (array!322) Bool)

(assert (=> b!4759 (= res!3661 (qInv!0 q!85))))

(assert (= (and start!1009 res!3662) b!4759))

(assert (= (and b!4759 res!3661) b!4756))

(assert (= (and b!4756 c!752) b!4754))

(assert (= (and b!4756 (not c!752)) b!4755))

(assert (= (and b!4756 res!3659) b!4753))

(assert (= (and b!4753 res!3664) b!4750))

(assert (= (and b!4750 res!3665) b!4758))

(assert (= (and b!4758 res!3660) b!4752))

(assert (= (and b!4752 res!3663) b!4751))

(assert (= (and b!4751 res!3666) b!4757))

(declare-fun m!6721 () Bool)

(assert (=> b!4759 m!6721))

(declare-fun m!6723 () Bool)

(assert (=> b!4751 m!6723))

(declare-fun m!6725 () Bool)

(assert (=> b!4751 m!6725))

(declare-fun m!6727 () Bool)

(assert (=> start!1009 m!6727))

(declare-fun m!6729 () Bool)

(assert (=> start!1009 m!6729))

(declare-fun m!6731 () Bool)

(assert (=> b!4756 m!6731))

(declare-fun m!6733 () Bool)

(assert (=> b!4756 m!6733))

(declare-fun m!6735 () Bool)

(assert (=> b!4758 m!6735))

(declare-fun m!6737 () Bool)

(assert (=> b!4758 m!6737))

(declare-fun m!6739 () Bool)

(assert (=> b!4750 m!6739))

(declare-fun m!6741 () Bool)

(assert (=> b!4753 m!6741))

(declare-fun m!6743 () Bool)

(assert (=> b!4754 m!6743))

(check-sat (not b!4758) (not b!4751) (not b!4759) (not b!4753) (not b!4754) (not start!1009))
(check-sat)
(get-model)

(declare-fun d!2485 () Bool)

(assert (=> d!2485 (= (QInt!0 lt!3053) (and (bvsle #b00000000000000000000000000000000 lt!3053) (bvsle lt!3053 #b00000000111111111111111111111111)))))

(assert (=> b!4758 d!2485))

(declare-fun d!2487 () Bool)

(assert (=> d!2487 (= (array_inv!89 iq!165) (bvsge (size!139 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!1009 d!2487))

(declare-fun d!2489 () Bool)

(assert (=> d!2489 (= (array_inv!90 q!85) (bvsge (size!140 q!85) #b00000000000000000000000000000000))))

(assert (=> start!1009 d!2489))

(declare-fun d!2491 () Bool)

(declare-fun res!3669 () Bool)

(declare-fun e!2406 () Bool)

(assert (=> d!2491 (=> (not res!3669) (not e!2406))))

(assert (=> d!2491 (= res!3669 (= (size!139 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3053 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3053) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3053))) (size!139 iq!165))) #b00000000000000000000000000010100))))

(assert (=> d!2491 (= (iqInv!0 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3053 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3053) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3053))) (size!139 iq!165))) e!2406)))

(declare-fun b!4762 () Bool)

(declare-fun lambda!207 () Int)

(declare-fun all20Int!0 (array!320 Int) Bool)

(assert (=> b!4762 (= e!2406 (all20Int!0 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3053 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3053) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3053))) (size!139 iq!165)) lambda!207))))

(assert (= (and d!2491 res!3669) b!4762))

(declare-fun m!6745 () Bool)

(assert (=> b!4762 m!6745))

(assert (=> b!4751 d!2491))

(declare-fun bs!1150 () Bool)

(declare-fun b!4763 () Bool)

(assert (= bs!1150 (and b!4763 b!4762)))

(declare-fun lambda!208 () Int)

(assert (=> bs!1150 (= lambda!208 lambda!207)))

(declare-fun d!2493 () Bool)

(declare-fun res!3670 () Bool)

(declare-fun e!2407 () Bool)

(assert (=> d!2493 (=> (not res!3670) (not e!2407))))

(assert (=> d!2493 (= res!3670 (= (size!139 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2493 (= (iqInv!0 iq!165) e!2407)))

(assert (=> b!4763 (= e!2407 (all20Int!0 iq!165 lambda!208))))

(assert (= (and d!2493 res!3670) b!4763))

(declare-fun m!6747 () Bool)

(assert (=> b!4763 m!6747))

(assert (=> b!4753 d!2493))

(declare-fun d!2495 () Bool)

(declare-fun e!2415 () Bool)

(assert (=> d!2495 e!2415))

(declare-fun res!3681 () Bool)

(assert (=> d!2495 (=> (not res!3681) (not e!2415))))

(declare-fun lt!3068 () tuple4!190)

(assert (=> d!2495 (= res!3681 (and true true (bvsle #b00000000000000000000000000000000 (_3!138 lt!3068)) (bvsle (_3!138 lt!3068) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!95 lt!3068)) (fp.leq (_4!95 lt!3068) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!2414 () tuple4!190)

(assert (=> d!2495 (= lt!3068 e!2414)))

(declare-fun c!755 () Bool)

(declare-fun lt!3064 () (_ BitVec 32))

(assert (=> d!2495 (= c!755 (bvsgt lt!3064 #b00000000000000000000000000000000))))

(assert (=> d!2495 (= lt!3064 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!3065 () (_ FloatingPoint 11 53))

(declare-fun lt!3066 () (_ FloatingPoint 11 53))

(assert (=> d!2495 (= lt!3066 (fp.add roundNearestTiesToEven (select (arr!140 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!3065))))

(declare-fun lt!3067 () array!320)

(assert (=> d!2495 (= lt!3067 (array!321 (store (arr!139 lt!3048) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!3051 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3065))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!3051 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3065)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!3051 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3065)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!3051 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!3065))))))) (size!139 lt!3048)))))

(assert (=> d!2495 (= lt!3065 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3051)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3051) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3051) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!3051)))))))))

(declare-fun e!2416 () Bool)

(assert (=> d!2495 e!2416))

(declare-fun res!3679 () Bool)

(assert (=> d!2495 (=> (not res!3679) (not e!2416))))

(assert (=> d!2495 (= res!3679 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3051) (fp.leq lt!3051 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2495 (= (computeModuloWhile!0 jz!53 q!85 lt!3048 jz!53 lt!3051) lt!3068)))

(declare-fun b!4776 () Bool)

(assert (=> b!4776 (= e!2414 (computeModuloWhile!0 jz!53 q!85 lt!3067 lt!3064 lt!3066))))

(declare-fun b!4777 () Bool)

(declare-fun res!3682 () Bool)

(assert (=> b!4777 (=> (not res!3682) (not e!2415))))

(assert (=> b!4777 (= res!3682 (iqInv!0 (_2!150 lt!3068)))))

(declare-fun b!4778 () Bool)

(assert (=> b!4778 (= e!2416 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!4779 () Bool)

(assert (=> b!4779 (= e!2415 (bvsle (_3!138 lt!3068) #b00000000000000000000000000000000))))

(declare-fun b!4780 () Bool)

(declare-fun Unit!381 () Unit!378)

(assert (=> b!4780 (= e!2414 (tuple4!191 Unit!381 lt!3067 lt!3064 lt!3066))))

(declare-fun b!4781 () Bool)

(declare-fun res!3680 () Bool)

(assert (=> b!4781 (=> (not res!3680) (not e!2416))))

(assert (=> b!4781 (= res!3680 (iqInv!0 lt!3048))))

(assert (= (and d!2495 res!3679) b!4781))

(assert (= (and b!4781 res!3680) b!4778))

(assert (= (and d!2495 c!755) b!4776))

(assert (= (and d!2495 (not c!755)) b!4780))

(assert (= (and d!2495 res!3681) b!4777))

(assert (= (and b!4777 res!3682) b!4779))

(declare-fun m!6749 () Bool)

(assert (=> d!2495 m!6749))

(declare-fun m!6751 () Bool)

(assert (=> d!2495 m!6751))

(declare-fun m!6753 () Bool)

(assert (=> b!4776 m!6753))

(declare-fun m!6755 () Bool)

(assert (=> b!4777 m!6755))

(declare-fun m!6757 () Bool)

(assert (=> b!4781 m!6757))

(assert (=> b!4754 d!2495))

(declare-fun d!2497 () Bool)

(declare-fun res!3685 () Bool)

(declare-fun e!2419 () Bool)

(assert (=> d!2497 (=> (not res!3685) (not e!2419))))

(assert (=> d!2497 (= res!3685 (= (size!140 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2497 (= (qInv!0 q!85) e!2419)))

(declare-fun b!4784 () Bool)

(declare-fun lambda!211 () Int)

(declare-fun all20!0 (array!322 Int) Bool)

(assert (=> b!4784 (= e!2419 (all20!0 q!85 lambda!211))))

(assert (= (and d!2497 res!3685) b!4784))

(declare-fun m!6759 () Bool)

(assert (=> b!4784 m!6759))

(assert (=> b!4759 d!2497))

(check-sat (not b!4781) (not b!4784) (not b!4776) (not b!4777) (not b!4762) (not b!4763))
(check-sat)
