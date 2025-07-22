; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2083 () Bool)

(assert start!2083)

(declare-fun res!9028 () Bool)

(declare-fun e!5955 () Bool)

(assert (=> start!2083 (=> (not res!9028) (not e!5955))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2083 (= res!9028 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2083 e!5955))

(assert (=> start!2083 true))

(declare-fun b!11021 () Bool)

(declare-fun e!5954 () Bool)

(assert (=> b!11021 (= e!5955 e!5954)))

(declare-fun res!9030 () Bool)

(assert (=> b!11021 (=> (not res!9030) (not e!5954))))

(declare-fun lt!5338 () (_ BitVec 32))

(assert (=> b!11021 (= res!9030 (and (bvsle #b11111111111111111111111111101001 lt!5338) (bvsle lt!5338 #b00000000000000000000001111101000)))))

(declare-fun lt!5342 () (_ BitVec 32))

(assert (=> b!11021 (= lt!5338 (bvsub (bvashr lt!5342 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11021 (= lt!5342 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11022 () Bool)

(declare-fun e!5956 () Bool)

(assert (=> b!11022 (= e!5954 e!5956)))

(declare-fun res!9029 () Bool)

(assert (=> b!11022 (=> (not res!9029) (not e!5956))))

(declare-fun lt!5337 () (_ BitVec 32))

(assert (=> b!11022 (= res!9029 (and (bvsle #b00000000000000000000000000011000 lt!5337) (bvsle lt!5337 #b00000000000000000000001111110000) (= (bvsrem lt!5337 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5341 () (_ BitVec 32))

(assert (=> b!11022 (= lt!5337 (ite (bvslt lt!5341 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5341))))

(assert (=> b!11022 (= lt!5341 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5338 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11023 () Bool)

(declare-fun lt!5335 () (_ FloatingPoint 11 53))

(assert (=> b!11023 (= e!5956 (and (not (fp.isNaN lt!5335)) (not (fp.gt lt!5335 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5336 () (_ FloatingPoint 11 53))

(declare-fun lt!5340 () (_ FloatingPoint 11 53))

(declare-fun lt!5339 () (_ FloatingPoint 11 53))

(assert (=> b!11023 (= lt!5335 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5336 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5340) #b00000000000000000000000000000000 (ite (fp.gt lt!5340 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5340 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5340)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5339) #b00000000000000000000000000000000 (ite (fp.gt lt!5339 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5339 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5339)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5336) #b00000000000000000000000000000000 (ite (fp.gt lt!5336 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5336 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5336)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11023 (= lt!5336 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5339 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5340) #b00000000000000000000000000000000 (ite (fp.gt lt!5340 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5340 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5340)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5339) #b00000000000000000000000000000000 (ite (fp.gt lt!5339 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5339 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5339)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11023 (= lt!5339 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5340 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5340) #b00000000000000000000000000000000 (ite (fp.gt lt!5340 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5340 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5340)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11023 (= lt!5340 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5342 (bvshl lt!5337 #b00000000000000000000000000010100))))))

(assert (= (and start!2083 res!9028) b!11021))

(assert (= (and b!11021 res!9030) b!11022))

(assert (= (and b!11022 res!9029) b!11023))

(declare-fun m!18815 () Bool)

(assert (=> b!11021 m!18815))

(declare-fun m!18817 () Bool)

(assert (=> b!11023 m!18817))

(declare-fun m!18819 () Bool)

(assert (=> b!11023 m!18819))

(declare-fun m!18821 () Bool)

(assert (=> b!11023 m!18821))

(declare-fun m!18823 () Bool)

(assert (=> b!11023 m!18823))

(declare-fun m!18825 () Bool)

(assert (=> b!11023 m!18825))

(declare-fun m!18827 () Bool)

(assert (=> b!11023 m!18827))

(declare-fun m!18829 () Bool)

(assert (=> b!11023 m!18829))

(assert (=> b!11023 m!18825))

(declare-fun m!18831 () Bool)

(assert (=> b!11023 m!18831))

(assert (=> b!11023 m!18829))

(declare-fun m!18833 () Bool)

(assert (=> b!11023 m!18833))

(push 1)

(assert (not b!11021))

(assert (not b!11023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6374 () Bool)

(declare-fun c!1205 () Bool)

(assert (=> d!6374 (= c!1205 (fp.isNaN x!143))))

(declare-fun e!5959 () (_ BitVec 64))

(assert (=> d!6374 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5959 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!11028 () Bool)

(assert (=> b!11028 (= e!5959 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11029 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11029 (= e!5959 (choose!3 x!143 x!143 false))))

(assert (= (and d!6374 c!1205) b!11028))

(assert (= (and d!6374 (not c!1205)) b!11029))

(declare-fun m!18835 () Bool)

(assert (=> b!11029 m!18835))

(assert (=> b!11021 d!6374))

(declare-fun d!6376 () Bool)

(declare-fun c!1208 () Bool)

(assert (=> d!6376 (= c!1208 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5962 () (_ BitVec 64))

(assert (=> d!6376 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5342 (bvshl lt!5337 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5962 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5342 (bvshl lt!5337 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!11034 () Bool)

(assert (=> b!11034 (= e!5962 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11035 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11035 (= e!5962 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5342 (bvshl lt!5337 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6376 c!1208) b!11034))

(assert (= (and d!6376 (not c!1208)) b!11035))

(assert (=> b!11035 m!18825))

(assert (=> b!11035 m!18825))

(declare-fun m!18837 () Bool)

(assert (=> b!11035 m!18837))

(assert (=> b!11023 d!6376))

(declare-fun d!6378 () Bool)

(declare-fun c!1211 () Bool)

(assert (=> d!6378 (= c!1211 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5965 () (_ BitVec 64))

(assert (=> d!6378 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5965 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!11040 () Bool)

(assert (=> b!11040 (= e!5965 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11041 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11041 (= e!5965 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6378 c!1211) b!11040))

(assert (= (and d!6378 (not c!1211)) b!11041))

(assert (=> b!11041 m!18829))

(declare-fun m!18839 () Bool)

(assert (=> b!11041 m!18839))

(assert (=> b!11023 d!6378))

(declare-fun d!6380 () Bool)

(declare-fun c!1214 () Bool)

(assert (=> d!6380 (= c!1214 (fp.isNaN x!143))))

(declare-fun e!5968 () (_ BitVec 64))

(assert (=> d!6380 (= (__LO!0 x!143) ((_ extract 31 0) e!5968))))

(declare-fun b!11046 () Bool)

(assert (=> b!11046 (= e!5968 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11047 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11047 (= e!5968 (choose!1 x!143 x!143 false))))

(assert (= (and d!6380 c!1214) b!11046))

(assert (= (and d!6380 (not c!1214)) b!11047))

(declare-fun m!18841 () Bool)

(assert (=> b!11047 m!18841))

(assert (=> b!11023 d!6380))

(push 1)

(assert (not b!11035))

(assert (not b!11041))

(assert (not b!11029))

(assert (not b!11047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

