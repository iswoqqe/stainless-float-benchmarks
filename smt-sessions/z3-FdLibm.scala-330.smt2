; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1915 () Bool)

(assert start!1915)

(declare-fun res!8241 () Bool)

(declare-fun e!5617 () Bool)

(assert (=> start!1915 (=> (not res!8241) (not e!5617))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1915 (= res!8241 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1915 e!5617))

(assert (=> start!1915 true))

(declare-fun b!10040 () Bool)

(declare-fun e!5618 () Bool)

(assert (=> b!10040 (= e!5617 e!5618)))

(declare-fun res!8240 () Bool)

(assert (=> b!10040 (=> (not res!8240) (not e!5618))))

(declare-fun lt!5002 () (_ BitVec 32))

(assert (=> b!10040 (= res!8240 (and (bvsle #b11111111111111111111111111101001 lt!5002) (bvsle lt!5002 #b00000000000000000000001111101000)))))

(declare-fun lt!5007 () (_ BitVec 32))

(assert (=> b!10040 (= lt!5002 (bvsub (bvashr lt!5007 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10040 (= lt!5007 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10041 () Bool)

(declare-fun e!5619 () Bool)

(assert (=> b!10041 (= e!5618 e!5619)))

(declare-fun res!8239 () Bool)

(assert (=> b!10041 (=> (not res!8239) (not e!5619))))

(declare-fun lt!5005 () (_ BitVec 32))

(assert (=> b!10041 (= res!8239 (and (bvsle #b00000000000000000000000000011000 lt!5005) (bvsle lt!5005 #b00000000000000000000001111110000) (= (bvsrem lt!5005 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5003 () (_ BitVec 32))

(assert (=> b!10041 (= lt!5005 (ite (bvslt lt!5003 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5003))))

(assert (=> b!10041 (= lt!5003 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5002 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10042 () Bool)

(declare-fun lt!5004 () (_ FloatingPoint 11 53))

(declare-fun lt!5006 () (_ FloatingPoint 11 53))

(assert (=> b!10042 (= e!5619 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5004 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5006) #b00000000000000000000000000000000 (ite (fp.gt lt!5006 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5006 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5006)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5004) #b00000000000000000000000000000000 (ite (fp.gt lt!5004 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5004 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5004)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!10042 (= lt!5004 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5006 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5006) #b00000000000000000000000000000000 (ite (fp.gt lt!5006 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5006 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5006)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10042 (= lt!5006 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5007 (bvshl lt!5005 #b00000000000000000000000000010100))))))

(assert (= (and start!1915 res!8241) b!10040))

(assert (= (and b!10040 res!8240) b!10041))

(assert (= (and b!10041 res!8239) b!10042))

(declare-fun m!15903 () Bool)

(assert (=> b!10040 m!15903))

(declare-fun m!15905 () Bool)

(assert (=> b!10042 m!15905))

(declare-fun m!15907 () Bool)

(assert (=> b!10042 m!15907))

(declare-fun m!15909 () Bool)

(assert (=> b!10042 m!15909))

(declare-fun m!15911 () Bool)

(assert (=> b!10042 m!15911))

(declare-fun m!15913 () Bool)

(assert (=> b!10042 m!15913))

(assert (=> b!10042 m!15913))

(declare-fun m!15915 () Bool)

(assert (=> b!10042 m!15915))

(declare-fun m!15917 () Bool)

(assert (=> b!10042 m!15917))

(assert (=> b!10042 m!15911))

(check-sat (not b!10042) (not b!10040))
(check-sat)
(get-model)

(declare-fun d!4797 () Bool)

(declare-fun c!1109 () Bool)

(assert (=> d!4797 (= c!1109 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5622 () (_ BitVec 64))

(assert (=> d!4797 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5007 (bvshl lt!5005 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5622 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5007 (bvshl lt!5005 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10047 () Bool)

(assert (=> b!10047 (= e!5622 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10048 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10048 (= e!5622 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5007 (bvshl lt!5005 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4797 c!1109) b!10047))

(assert (= (and d!4797 (not c!1109)) b!10048))

(assert (=> b!10048 m!15913))

(assert (=> b!10048 m!15913))

(declare-fun m!15919 () Bool)

(assert (=> b!10048 m!15919))

(assert (=> b!10042 d!4797))

(declare-fun d!4799 () Bool)

(declare-fun c!1112 () Bool)

(assert (=> d!4799 (= c!1112 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5625 () (_ BitVec 64))

(assert (=> d!4799 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5625 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10053 () Bool)

(assert (=> b!10053 (= e!5625 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10054 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10054 (= e!5625 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4799 c!1112) b!10053))

(assert (= (and d!4799 (not c!1112)) b!10054))

(assert (=> b!10054 m!15911))

(declare-fun m!15921 () Bool)

(assert (=> b!10054 m!15921))

(assert (=> b!10042 d!4799))

(declare-fun d!4801 () Bool)

(declare-fun c!1115 () Bool)

(assert (=> d!4801 (= c!1115 (fp.isNaN x!143))))

(declare-fun e!5628 () (_ BitVec 64))

(assert (=> d!4801 (= (__LO!0 x!143) ((_ extract 31 0) e!5628))))

(declare-fun b!10059 () Bool)

(assert (=> b!10059 (= e!5628 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10060 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10060 (= e!5628 (choose!1 x!143 x!143 false))))

(assert (= (and d!4801 c!1115) b!10059))

(assert (= (and d!4801 (not c!1115)) b!10060))

(declare-fun m!15923 () Bool)

(assert (=> b!10060 m!15923))

(assert (=> b!10042 d!4801))

(declare-fun d!4803 () Bool)

(declare-fun c!1118 () Bool)

(assert (=> d!4803 (= c!1118 (fp.isNaN x!143))))

(declare-fun e!5631 () (_ BitVec 64))

(assert (=> d!4803 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5631 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10065 () Bool)

(assert (=> b!10065 (= e!5631 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10066 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10066 (= e!5631 (choose!3 x!143 x!143 false))))

(assert (= (and d!4803 c!1118) b!10065))

(assert (= (and d!4803 (not c!1118)) b!10066))

(declare-fun m!15925 () Bool)

(assert (=> b!10066 m!15925))

(assert (=> b!10040 d!4803))

(check-sat (not b!10054) (not b!10066) (not b!10048) (not b!10060))
(check-sat)
