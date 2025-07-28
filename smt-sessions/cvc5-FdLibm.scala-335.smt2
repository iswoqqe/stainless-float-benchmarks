; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2073 () Bool)

(assert start!2073)

(declare-fun res!9020 () Bool)

(declare-fun e!5935 () Bool)

(assert (=> start!2073 (=> (not res!9020) (not e!5935))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2073 (= res!9020 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2073 e!5935))

(assert (=> start!2073 true))

(declare-fun b!10988 () Bool)

(declare-fun e!5934 () Bool)

(assert (=> b!10988 (= e!5935 e!5934)))

(declare-fun res!9019 () Bool)

(assert (=> b!10988 (=> (not res!9019) (not e!5934))))

(declare-fun lt!5313 () (_ BitVec 32))

(assert (=> b!10988 (= res!9019 (and (bvsle #b11111111111111111111111111101001 lt!5313) (bvsle lt!5313 #b00000000000000000000001111101000)))))

(declare-fun lt!5317 () (_ BitVec 32))

(assert (=> b!10988 (= lt!5313 (bvsub (bvashr lt!5317 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10988 (= lt!5317 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10989 () Bool)

(declare-fun e!5933 () Bool)

(assert (=> b!10989 (= e!5934 e!5933)))

(declare-fun res!9021 () Bool)

(assert (=> b!10989 (=> (not res!9021) (not e!5933))))

(declare-fun lt!5315 () (_ BitVec 32))

(assert (=> b!10989 (= res!9021 (and (bvsle #b00000000000000000000000000011000 lt!5315) (bvsle lt!5315 #b00000000000000000000001111110000) (= (bvsrem lt!5315 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5312 () (_ BitVec 32))

(assert (=> b!10989 (= lt!5315 (ite (bvslt lt!5312 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5312))))

(assert (=> b!10989 (= lt!5312 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5313 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun lt!5314 () (_ FloatingPoint 11 53))

(declare-fun lt!5318 () (_ FloatingPoint 11 53))

(declare-fun b!10990 () Bool)

(declare-fun lt!5316 () (_ FloatingPoint 11 53))

(assert (=> b!10990 (= e!5933 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5314 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5316) #b00000000000000000000000000000000 (ite (fp.gt lt!5316 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5316 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5316)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5318) #b00000000000000000000000000000000 (ite (fp.gt lt!5318 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5318 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5318)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5314) #b00000000000000000000000000000000 (ite (fp.gt lt!5314 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5314 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5314)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!10990 (= lt!5314 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5318 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5316) #b00000000000000000000000000000000 (ite (fp.gt lt!5316 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5316 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5316)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5318) #b00000000000000000000000000000000 (ite (fp.gt lt!5318 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5318 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5318)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10990 (= lt!5318 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5316 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5316) #b00000000000000000000000000000000 (ite (fp.gt lt!5316 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5316 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5316)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10990 (= lt!5316 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5317 (bvshl lt!5315 #b00000000000000000000000000010100))))))

(assert (= (and start!2073 res!9020) b!10988))

(assert (= (and b!10988 res!9019) b!10989))

(assert (= (and b!10989 res!9021) b!10990))

(declare-fun m!18787 () Bool)

(assert (=> b!10988 m!18787))

(declare-fun m!18789 () Bool)

(assert (=> b!10990 m!18789))

(declare-fun m!18791 () Bool)

(assert (=> b!10990 m!18791))

(declare-fun m!18793 () Bool)

(assert (=> b!10990 m!18793))

(declare-fun m!18795 () Bool)

(assert (=> b!10990 m!18795))

(declare-fun m!18797 () Bool)

(assert (=> b!10990 m!18797))

(declare-fun m!18799 () Bool)

(assert (=> b!10990 m!18799))

(assert (=> b!10990 m!18795))

(assert (=> b!10990 m!18797))

(declare-fun m!18801 () Bool)

(assert (=> b!10990 m!18801))

(declare-fun m!18803 () Bool)

(assert (=> b!10990 m!18803))

(declare-fun m!18805 () Bool)

(assert (=> b!10990 m!18805))

(push 1)

(assert (not b!10990))

(assert (not b!10988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6365 () Bool)

(declare-fun c!1193 () Bool)

(assert (=> d!6365 (= c!1193 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5938 () (_ BitVec 64))

(assert (=> d!6365 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5317 (bvshl lt!5315 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5938 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5317 (bvshl lt!5315 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10995 () Bool)

(assert (=> b!10995 (= e!5938 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10996 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10996 (= e!5938 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5317 (bvshl lt!5315 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6365 c!1193) b!10995))

(assert (= (and d!6365 (not c!1193)) b!10996))

(assert (=> b!10996 m!18797))

(assert (=> b!10996 m!18797))

(declare-fun m!18807 () Bool)

(assert (=> b!10996 m!18807))

(assert (=> b!10990 d!6365))

(declare-fun d!6367 () Bool)

(declare-fun c!1196 () Bool)

(assert (=> d!6367 (= c!1196 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5941 () (_ BitVec 64))

(assert (=> d!6367 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5941 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!11001 () Bool)

(assert (=> b!11001 (= e!5941 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11002 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11002 (= e!5941 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6367 c!1196) b!11001))

(assert (= (and d!6367 (not c!1196)) b!11002))

(assert (=> b!11002 m!18795))

(declare-fun m!18809 () Bool)

(assert (=> b!11002 m!18809))

(assert (=> b!10990 d!6367))

(declare-fun d!6369 () Bool)

(declare-fun c!1199 () Bool)

(assert (=> d!6369 (= c!1199 (fp.isNaN x!143))))

(declare-fun e!5944 () (_ BitVec 64))

(assert (=> d!6369 (= (__LO!0 x!143) ((_ extract 31 0) e!5944))))

(declare-fun b!11007 () Bool)

(assert (=> b!11007 (= e!5944 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11008 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11008 (= e!5944 (choose!1 x!143 x!143 false))))

(assert (= (and d!6369 c!1199) b!11007))

(assert (= (and d!6369 (not c!1199)) b!11008))

(declare-fun m!18811 () Bool)

(assert (=> b!11008 m!18811))

(assert (=> b!10990 d!6369))

(declare-fun d!6371 () Bool)

(declare-fun c!1202 () Bool)

(assert (=> d!6371 (= c!1202 (fp.isNaN x!143))))

(declare-fun e!5947 () (_ BitVec 64))

(assert (=> d!6371 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5947 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!11013 () Bool)

(assert (=> b!11013 (= e!5947 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11014 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11014 (= e!5947 (choose!3 x!143 x!143 false))))

(assert (= (and d!6371 c!1202) b!11013))

(assert (= (and d!6371 (not c!1202)) b!11014))

(declare-fun m!18813 () Bool)

(assert (=> b!11014 m!18813))

(assert (=> b!10988 d!6371))

(push 1)

(assert (not b!11008))

(assert (not b!10996))

(assert (not b!11014))

(assert (not b!11002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

