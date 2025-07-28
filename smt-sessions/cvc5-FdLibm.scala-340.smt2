; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2107 () Bool)

(assert start!2107)

(declare-fun res!9064 () Bool)

(declare-fun e!6016 () Bool)

(assert (=> start!2107 (=> (not res!9064) (not e!6016))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2107 (= res!9064 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2107 e!6016))

(assert (=> start!2107 true))

(declare-fun b!11105 () Bool)

(declare-fun e!6015 () Bool)

(assert (=> b!11105 (= e!6016 e!6015)))

(declare-fun res!9065 () Bool)

(assert (=> b!11105 (=> (not res!9065) (not e!6015))))

(declare-fun lt!5420 () (_ BitVec 32))

(assert (=> b!11105 (= res!9065 (and (bvsle #b11111111111111111111111111101001 lt!5420) (bvsle lt!5420 #b00000000000000000000001111101000)))))

(declare-fun lt!5414 () (_ BitVec 32))

(assert (=> b!11105 (= lt!5420 (bvsub (bvashr lt!5414 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11105 (= lt!5414 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11106 () Bool)

(declare-fun e!6014 () Bool)

(assert (=> b!11106 (= e!6015 e!6014)))

(declare-fun res!9066 () Bool)

(assert (=> b!11106 (=> (not res!9066) (not e!6014))))

(declare-fun lt!5419 () (_ BitVec 32))

(assert (=> b!11106 (= res!9066 (and (bvsle #b00000000000000000000000000011000 lt!5419) (bvsle lt!5419 #b00000000000000000000001111110000) (= (bvsrem lt!5419 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5418 () (_ BitVec 32))

(assert (=> b!11106 (= lt!5419 (ite (bvslt lt!5418 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5418))))

(assert (=> b!11106 (= lt!5418 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5420 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun lt!5415 () (_ FloatingPoint 11 53))

(declare-fun lt!5416 () (_ FloatingPoint 11 53))

(declare-fun lt!5417 () (_ FloatingPoint 11 53))

(declare-fun b!11107 () Bool)

(declare-fun lt!5413 () (_ FloatingPoint 11 53))

(assert (=> b!11107 (= e!6014 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5415 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5417) #b00000000000000000000000000000000 (ite (fp.gt lt!5417 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5417 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5417)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5413) #b00000000000000000000000000000000 (ite (fp.gt lt!5413 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5413 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5413)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5416) #b00000000000000000000000000000000 (ite (fp.gt lt!5416 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5416 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5416)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5415) #b00000000000000000000000000000000 (ite (fp.gt lt!5415 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5415 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5415)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!11107 (= lt!5415 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5416 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5417) #b00000000000000000000000000000000 (ite (fp.gt lt!5417 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5417 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5417)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5413) #b00000000000000000000000000000000 (ite (fp.gt lt!5413 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5413 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5413)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5416) #b00000000000000000000000000000000 (ite (fp.gt lt!5416 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5416 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5416)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11107 (= lt!5416 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5413 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5417) #b00000000000000000000000000000000 (ite (fp.gt lt!5417 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5417 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5417)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5413) #b00000000000000000000000000000000 (ite (fp.gt lt!5413 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5413 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5413)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11107 (= lt!5413 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5417 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5417) #b00000000000000000000000000000000 (ite (fp.gt lt!5417 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5417 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5417)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11107 (= lt!5417 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5414 (bvshl lt!5419 #b00000000000000000000000000010100))))))

(assert (= (and start!2107 res!9064) b!11105))

(assert (= (and b!11105 res!9065) b!11106))

(assert (= (and b!11106 res!9066) b!11107))

(declare-fun m!18887 () Bool)

(assert (=> b!11105 m!18887))

(declare-fun m!18889 () Bool)

(assert (=> b!11107 m!18889))

(declare-fun m!18891 () Bool)

(assert (=> b!11107 m!18891))

(declare-fun m!18893 () Bool)

(assert (=> b!11107 m!18893))

(declare-fun m!18895 () Bool)

(assert (=> b!11107 m!18895))

(declare-fun m!18897 () Bool)

(assert (=> b!11107 m!18897))

(declare-fun m!18899 () Bool)

(assert (=> b!11107 m!18899))

(declare-fun m!18901 () Bool)

(assert (=> b!11107 m!18901))

(assert (=> b!11107 m!18901))

(declare-fun m!18903 () Bool)

(assert (=> b!11107 m!18903))

(declare-fun m!18905 () Bool)

(assert (=> b!11107 m!18905))

(declare-fun m!18907 () Bool)

(assert (=> b!11107 m!18907))

(assert (=> b!11107 m!18899))

(declare-fun m!18909 () Bool)

(assert (=> b!11107 m!18909))

(push 1)

(assert (not b!11107))

(assert (not b!11105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6394 () Bool)

(declare-fun c!1229 () Bool)

(assert (=> d!6394 (= c!1229 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!6019 () (_ BitVec 64))

(assert (=> d!6394 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5414 (bvshl lt!5419 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!6019 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5414 (bvshl lt!5419 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!11112 () Bool)

(assert (=> b!11112 (= e!6019 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11113 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11113 (= e!6019 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5414 (bvshl lt!5419 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6394 c!1229) b!11112))

(assert (= (and d!6394 (not c!1229)) b!11113))

(assert (=> b!11113 m!18901))

(assert (=> b!11113 m!18901))

(declare-fun m!18911 () Bool)

(assert (=> b!11113 m!18911))

(assert (=> b!11107 d!6394))

(declare-fun d!6396 () Bool)

(declare-fun c!1232 () Bool)

(assert (=> d!6396 (= c!1232 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!6022 () (_ BitVec 64))

(assert (=> d!6396 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!6022 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!11118 () Bool)

(assert (=> b!11118 (= e!6022 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11119 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11119 (= e!6022 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6396 c!1232) b!11118))

(assert (= (and d!6396 (not c!1232)) b!11119))

(assert (=> b!11119 m!18899))

(declare-fun m!18913 () Bool)

(assert (=> b!11119 m!18913))

(assert (=> b!11107 d!6396))

(declare-fun d!6398 () Bool)

(declare-fun c!1235 () Bool)

(assert (=> d!6398 (= c!1235 (fp.isNaN x!143))))

(declare-fun e!6025 () (_ BitVec 64))

(assert (=> d!6398 (= (__LO!0 x!143) ((_ extract 31 0) e!6025))))

(declare-fun b!11124 () Bool)

(assert (=> b!11124 (= e!6025 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11125 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11125 (= e!6025 (choose!1 x!143 x!143 false))))

(assert (= (and d!6398 c!1235) b!11124))

(assert (= (and d!6398 (not c!1235)) b!11125))

(declare-fun m!18915 () Bool)

(assert (=> b!11125 m!18915))

(assert (=> b!11107 d!6398))

(declare-fun d!6400 () Bool)

(declare-fun c!1238 () Bool)

(assert (=> d!6400 (= c!1238 (fp.isNaN x!143))))

(declare-fun e!6028 () (_ BitVec 64))

(assert (=> d!6400 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!6028 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!11130 () Bool)

(assert (=> b!11130 (= e!6028 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11131 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11131 (= e!6028 (choose!3 x!143 x!143 false))))

(assert (= (and d!6400 c!1238) b!11130))

(assert (= (and d!6400 (not c!1238)) b!11131))

(declare-fun m!18917 () Bool)

(assert (=> b!11131 m!18917))

(assert (=> b!11105 d!6400))

(push 1)

(assert (not b!11131))

(assert (not b!11113))

(assert (not b!11119))

(assert (not b!11125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

