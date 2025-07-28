; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1993 () Bool)

(assert start!1993)

(declare-fun res!8338 () Bool)

(declare-fun e!5802 () Bool)

(assert (=> start!1993 (=> (not res!8338) (not e!5802))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1993 (= res!8338 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1993 e!5802))

(assert (=> start!1993 true))

(declare-fun b!10307 () Bool)

(declare-fun e!5800 () Bool)

(assert (=> b!10307 (= e!5802 e!5800)))

(declare-fun res!8340 () Bool)

(assert (=> b!10307 (=> (not res!8340) (not e!5800))))

(declare-fun lt!5229 () (_ BitVec 32))

(assert (=> b!10307 (= res!8340 (and (bvsle #b11111111111111111111111111101001 lt!5229) (bvsle lt!5229 #b00000000000000000000001111101000)))))

(declare-fun lt!5227 () (_ BitVec 32))

(assert (=> b!10307 (= lt!5229 (bvsub (bvashr lt!5227 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10307 (= lt!5227 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10308 () Bool)

(declare-fun e!5801 () Bool)

(assert (=> b!10308 (= e!5800 e!5801)))

(declare-fun res!8339 () Bool)

(assert (=> b!10308 (=> (not res!8339) (not e!5801))))

(declare-fun lt!5225 () (_ BitVec 32))

(assert (=> b!10308 (= res!8339 (and (bvsle #b00000000000000000000000000011000 lt!5225) (bvsle lt!5225 #b00000000000000000000001111110000) (= (bvsrem lt!5225 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5222 () (_ BitVec 32))

(assert (=> b!10308 (= lt!5225 (ite (bvslt lt!5222 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5222))))

(assert (=> b!10308 (= lt!5222 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5229 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10309 () Bool)

(declare-fun lt!5228 () (_ FloatingPoint 11 53))

(assert (=> b!10309 (= e!5801 (and (not (fp.isNaN lt!5228)) (not (fp.gt lt!5228 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5226 () (_ FloatingPoint 11 53))

(declare-fun lt!5224 () (_ FloatingPoint 11 53))

(declare-fun lt!5221 () (_ FloatingPoint 11 53))

(declare-fun lt!5223 () (_ FloatingPoint 11 53))

(assert (=> b!10309 (= lt!5228 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5221 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5223) #b00000000000000000000000000000000 (ite (fp.gt lt!5223 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5223 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5223)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5224) #b00000000000000000000000000000000 (ite (fp.gt lt!5224 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5224 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5224)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5226) #b00000000000000000000000000000000 (ite (fp.gt lt!5226 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5226 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5226)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5221) #b00000000000000000000000000000000 (ite (fp.gt lt!5221 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5221 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5221)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10309 (= lt!5221 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5226 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5223) #b00000000000000000000000000000000 (ite (fp.gt lt!5223 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5223 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5223)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5224) #b00000000000000000000000000000000 (ite (fp.gt lt!5224 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5224 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5224)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5226) #b00000000000000000000000000000000 (ite (fp.gt lt!5226 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5226 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5226)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10309 (= lt!5226 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5224 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5223) #b00000000000000000000000000000000 (ite (fp.gt lt!5223 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5223 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5223)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5224) #b00000000000000000000000000000000 (ite (fp.gt lt!5224 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5224 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5224)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10309 (= lt!5224 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5223 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5223) #b00000000000000000000000000000000 (ite (fp.gt lt!5223 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5223 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5223)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10309 (= lt!5223 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5227 (bvshl lt!5225 #b00000000000000000000000000010100))))))

(assert (= (and start!1993 res!8338) b!10307))

(assert (= (and b!10307 res!8340) b!10308))

(assert (= (and b!10308 res!8339) b!10309))

(declare-fun m!16123 () Bool)

(assert (=> b!10307 m!16123))

(declare-fun m!16125 () Bool)

(assert (=> b!10309 m!16125))

(declare-fun m!16127 () Bool)

(assert (=> b!10309 m!16127))

(declare-fun m!16129 () Bool)

(assert (=> b!10309 m!16129))

(declare-fun m!16131 () Bool)

(assert (=> b!10309 m!16131))

(declare-fun m!16133 () Bool)

(assert (=> b!10309 m!16133))

(assert (=> b!10309 m!16125))

(assert (=> b!10309 m!16133))

(declare-fun m!16135 () Bool)

(assert (=> b!10309 m!16135))

(declare-fun m!16137 () Bool)

(assert (=> b!10309 m!16137))

(declare-fun m!16139 () Bool)

(assert (=> b!10309 m!16139))

(declare-fun m!16141 () Bool)

(assert (=> b!10309 m!16141))

(declare-fun m!16143 () Bool)

(assert (=> b!10309 m!16143))

(declare-fun m!16145 () Bool)

(assert (=> b!10309 m!16145))

(check-sat (not b!10309) (not b!10307))
(check-sat)
(get-model)

(declare-fun d!4853 () Bool)

(declare-fun c!1193 () Bool)

(assert (=> d!4853 (= c!1193 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5805 () (_ BitVec 64))

(assert (=> d!4853 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5227 (bvshl lt!5225 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5805 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5227 (bvshl lt!5225 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10314 () Bool)

(assert (=> b!10314 (= e!5805 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10315 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10315 (= e!5805 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5227 (bvshl lt!5225 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4853 c!1193) b!10314))

(assert (= (and d!4853 (not c!1193)) b!10315))

(assert (=> b!10315 m!16125))

(assert (=> b!10315 m!16125))

(declare-fun m!16147 () Bool)

(assert (=> b!10315 m!16147))

(assert (=> b!10309 d!4853))

(declare-fun d!4855 () Bool)

(declare-fun c!1196 () Bool)

(assert (=> d!4855 (= c!1196 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5808 () (_ BitVec 64))

(assert (=> d!4855 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5808 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10320 () Bool)

(assert (=> b!10320 (= e!5808 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10321 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10321 (= e!5808 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4855 c!1196) b!10320))

(assert (= (and d!4855 (not c!1196)) b!10321))

(assert (=> b!10321 m!16133))

(declare-fun m!16149 () Bool)

(assert (=> b!10321 m!16149))

(assert (=> b!10309 d!4855))

(declare-fun d!4857 () Bool)

(declare-fun c!1199 () Bool)

(assert (=> d!4857 (= c!1199 (fp.isNaN x!143))))

(declare-fun e!5811 () (_ BitVec 64))

(assert (=> d!4857 (= (__LO!0 x!143) ((_ extract 31 0) e!5811))))

(declare-fun b!10326 () Bool)

(assert (=> b!10326 (= e!5811 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10327 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10327 (= e!5811 (choose!1 x!143 x!143 false))))

(assert (= (and d!4857 c!1199) b!10326))

(assert (= (and d!4857 (not c!1199)) b!10327))

(declare-fun m!16151 () Bool)

(assert (=> b!10327 m!16151))

(assert (=> b!10309 d!4857))

(declare-fun d!4859 () Bool)

(declare-fun c!1202 () Bool)

(assert (=> d!4859 (= c!1202 (fp.isNaN x!143))))

(declare-fun e!5814 () (_ BitVec 64))

(assert (=> d!4859 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5814 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10332 () Bool)

(assert (=> b!10332 (= e!5814 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10333 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10333 (= e!5814 (choose!3 x!143 x!143 false))))

(assert (= (and d!4859 c!1202) b!10332))

(assert (= (and d!4859 (not c!1202)) b!10333))

(declare-fun m!16153 () Bool)

(assert (=> b!10333 m!16153))

(assert (=> b!10307 d!4859))

(check-sat (not b!10333) (not b!10315) (not b!10327) (not b!10321))
(check-sat)
