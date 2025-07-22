; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2049 () Bool)

(assert start!2049)

(declare-fun res!8984 () Bool)

(declare-fun e!5875 () Bool)

(assert (=> start!2049 (=> (not res!8984) (not e!5875))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2049 (= res!8984 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2049 e!5875))

(assert (=> start!2049 true))

(declare-fun b!10904 () Bool)

(declare-fun e!5874 () Bool)

(assert (=> b!10904 (= e!5875 e!5874)))

(declare-fun res!8983 () Bool)

(assert (=> b!10904 (=> (not res!8983) (not e!5874))))

(declare-fun lt!5243 () (_ BitVec 32))

(assert (=> b!10904 (= res!8983 (and (bvsle #b11111111111111111111111111101001 lt!5243) (bvsle lt!5243 #b00000000000000000000001111101000)))))

(declare-fun lt!5244 () (_ BitVec 32))

(assert (=> b!10904 (= lt!5243 (bvsub (bvashr lt!5244 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10904 (= lt!5244 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10905 () Bool)

(declare-fun e!5873 () Bool)

(assert (=> b!10905 (= e!5874 e!5873)))

(declare-fun res!8985 () Bool)

(assert (=> b!10905 (=> (not res!8985) (not e!5873))))

(declare-fun lt!5242 () (_ BitVec 32))

(assert (=> b!10905 (= res!8985 (and (bvsle #b00000000000000000000000000011000 lt!5242) (bvsle lt!5242 #b00000000000000000000001111110000) (= (bvsrem lt!5242 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5240 () (_ BitVec 32))

(assert (=> b!10905 (= lt!5242 (ite (bvslt lt!5240 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5240))))

(assert (=> b!10905 (= lt!5240 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5243 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10906 () Bool)

(declare-fun lt!5241 () (_ FloatingPoint 11 53))

(assert (=> b!10906 (= e!5873 (and (not (fp.isNaN lt!5241)) (not (fp.gt lt!5241 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5245 () (_ FloatingPoint 11 53))

(declare-fun lt!5246 () (_ FloatingPoint 11 53))

(assert (=> b!10906 (= lt!5241 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5245 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5246) #b00000000000000000000000000000000 (ite (fp.gt lt!5246 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5246 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5246)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5245) #b00000000000000000000000000000000 (ite (fp.gt lt!5245 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5245 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5245)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10906 (= lt!5245 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5246 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5246) #b00000000000000000000000000000000 (ite (fp.gt lt!5246 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5246 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5246)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10906 (= lt!5246 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5244 (bvshl lt!5242 #b00000000000000000000000000010100))))))

(assert (= (and start!2049 res!8984) b!10904))

(assert (= (and b!10904 res!8983) b!10905))

(assert (= (and b!10905 res!8985) b!10906))

(declare-fun m!18723 () Bool)

(assert (=> b!10904 m!18723))

(declare-fun m!18725 () Bool)

(assert (=> b!10906 m!18725))

(declare-fun m!18727 () Bool)

(assert (=> b!10906 m!18727))

(declare-fun m!18729 () Bool)

(assert (=> b!10906 m!18729))

(declare-fun m!18731 () Bool)

(assert (=> b!10906 m!18731))

(declare-fun m!18733 () Bool)

(assert (=> b!10906 m!18733))

(assert (=> b!10906 m!18727))

(assert (=> b!10906 m!18729))

(declare-fun m!18735 () Bool)

(assert (=> b!10906 m!18735))

(declare-fun m!18737 () Bool)

(assert (=> b!10906 m!18737))

(push 1)

(assert (not b!10906))

(assert (not b!10904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6345 () Bool)

(declare-fun c!1169 () Bool)

(assert (=> d!6345 (= c!1169 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5878 () (_ BitVec 64))

(assert (=> d!6345 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5244 (bvshl lt!5242 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5878 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5244 (bvshl lt!5242 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10911 () Bool)

(assert (=> b!10911 (= e!5878 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10912 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10912 (= e!5878 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5244 (bvshl lt!5242 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6345 c!1169) b!10911))

(assert (= (and d!6345 (not c!1169)) b!10912))

(assert (=> b!10912 m!18729))

(assert (=> b!10912 m!18729))

(declare-fun m!18739 () Bool)

(assert (=> b!10912 m!18739))

(assert (=> b!10906 d!6345))

(declare-fun d!6347 () Bool)

(declare-fun c!1172 () Bool)

(assert (=> d!6347 (= c!1172 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5881 () (_ BitVec 64))

(assert (=> d!6347 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5881 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10917 () Bool)

(assert (=> b!10917 (= e!5881 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10918 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10918 (= e!5881 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6347 c!1172) b!10917))

(assert (= (and d!6347 (not c!1172)) b!10918))

(assert (=> b!10918 m!18727))

(declare-fun m!18741 () Bool)

(assert (=> b!10918 m!18741))

(assert (=> b!10906 d!6347))

(declare-fun d!6349 () Bool)

(declare-fun c!1175 () Bool)

(assert (=> d!6349 (= c!1175 (fp.isNaN x!143))))

(declare-fun e!5884 () (_ BitVec 64))

(assert (=> d!6349 (= (__LO!0 x!143) ((_ extract 31 0) e!5884))))

(declare-fun b!10923 () Bool)

(assert (=> b!10923 (= e!5884 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10924 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10924 (= e!5884 (choose!1 x!143 x!143 false))))

(assert (= (and d!6349 c!1175) b!10923))

(assert (= (and d!6349 (not c!1175)) b!10924))

(declare-fun m!18743 () Bool)

(assert (=> b!10924 m!18743))

(assert (=> b!10906 d!6349))

(declare-fun d!6351 () Bool)

(declare-fun c!1178 () Bool)

(assert (=> d!6351 (= c!1178 (fp.isNaN x!143))))

(declare-fun e!5887 () (_ BitVec 64))

(assert (=> d!6351 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5887 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10929 () Bool)

(assert (=> b!10929 (= e!5887 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10930 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10930 (= e!5887 (choose!3 x!143 x!143 false))))

(assert (= (and d!6351 c!1178) b!10929))

(assert (= (and d!6351 (not c!1178)) b!10930))

(declare-fun m!18745 () Bool)

(assert (=> b!10930 m!18745))

(assert (=> b!10904 d!6351))

(push 1)

(assert (not b!10912))

(assert (not b!10930))

(assert (not b!10918))

(assert (not b!10924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

