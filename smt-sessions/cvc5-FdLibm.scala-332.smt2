; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2059 () Bool)

(assert start!2059)

(declare-fun res!8994 () Bool)

(declare-fun e!5894 () Bool)

(assert (=> start!2059 (=> (not res!8994) (not e!5894))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2059 (= res!8994 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2059 e!5894))

(assert (=> start!2059 true))

(declare-fun b!10937 () Bool)

(declare-fun e!5895 () Bool)

(assert (=> b!10937 (= e!5894 e!5895)))

(declare-fun res!8992 () Bool)

(assert (=> b!10937 (=> (not res!8992) (not e!5895))))

(declare-fun lt!5263 () (_ BitVec 32))

(assert (=> b!10937 (= res!8992 (and (bvsle #b11111111111111111111111111101001 lt!5263) (bvsle lt!5263 #b00000000000000000000001111101000)))))

(declare-fun lt!5265 () (_ BitVec 32))

(assert (=> b!10937 (= lt!5263 (bvsub (bvashr lt!5265 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10937 (= lt!5265 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10938 () Bool)

(declare-fun e!5896 () Bool)

(assert (=> b!10938 (= e!5895 e!5896)))

(declare-fun res!8993 () Bool)

(assert (=> b!10938 (=> (not res!8993) (not e!5896))))

(declare-fun lt!5264 () (_ BitVec 32))

(assert (=> b!10938 (= res!8993 (and (bvsle #b00000000000000000000000000011000 lt!5264) (bvsle lt!5264 #b00000000000000000000001111110000) (= (bvsrem lt!5264 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5262 () (_ BitVec 32))

(assert (=> b!10938 (= lt!5264 (ite (bvslt lt!5262 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5262))))

(assert (=> b!10938 (= lt!5262 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5263 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10939 () Bool)

(declare-fun lt!5261 () (_ FloatingPoint 11 53))

(assert (=> b!10939 (= e!5896 (and (not (fp.isNaN lt!5261)) (fp.gt lt!5261 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5261 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5267 () (_ FloatingPoint 11 53))

(declare-fun lt!5266 () (_ FloatingPoint 11 53))

(assert (=> b!10939 (= lt!5261 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5267 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5266) #b00000000000000000000000000000000 (ite (fp.gt lt!5266 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5266 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5266)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5267) #b00000000000000000000000000000000 (ite (fp.gt lt!5267 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5267 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5267)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!10939 (= lt!5267 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5266 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5266) #b00000000000000000000000000000000 (ite (fp.gt lt!5266 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5266 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5266)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10939 (= lt!5266 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5265 (bvshl lt!5264 #b00000000000000000000000000010100))))))

(assert (= (and start!2059 res!8994) b!10937))

(assert (= (and b!10937 res!8992) b!10938))

(assert (= (and b!10938 res!8993) b!10939))

(declare-fun m!18747 () Bool)

(assert (=> b!10937 m!18747))

(declare-fun m!18749 () Bool)

(assert (=> b!10939 m!18749))

(declare-fun m!18751 () Bool)

(assert (=> b!10939 m!18751))

(declare-fun m!18753 () Bool)

(assert (=> b!10939 m!18753))

(declare-fun m!18755 () Bool)

(assert (=> b!10939 m!18755))

(declare-fun m!18757 () Bool)

(assert (=> b!10939 m!18757))

(declare-fun m!18759 () Bool)

(assert (=> b!10939 m!18759))

(assert (=> b!10939 m!18757))

(declare-fun m!18761 () Bool)

(assert (=> b!10939 m!18761))

(assert (=> b!10939 m!18755))

(push 1)

(assert (not b!10939))

(assert (not b!10937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6354 () Bool)

(declare-fun c!1181 () Bool)

(assert (=> d!6354 (= c!1181 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5899 () (_ BitVec 64))

(assert (=> d!6354 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5265 (bvshl lt!5264 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5899 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5265 (bvshl lt!5264 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10944 () Bool)

(assert (=> b!10944 (= e!5899 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10945 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10945 (= e!5899 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5265 (bvshl lt!5264 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6354 c!1181) b!10944))

(assert (= (and d!6354 (not c!1181)) b!10945))

(assert (=> b!10945 m!18757))

(assert (=> b!10945 m!18757))

(declare-fun m!18763 () Bool)

(assert (=> b!10945 m!18763))

(assert (=> b!10939 d!6354))

(declare-fun d!6356 () Bool)

(declare-fun c!1184 () Bool)

(assert (=> d!6356 (= c!1184 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5902 () (_ BitVec 64))

(assert (=> d!6356 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5902 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10950 () Bool)

(assert (=> b!10950 (= e!5902 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10951 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10951 (= e!5902 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6356 c!1184) b!10950))

(assert (= (and d!6356 (not c!1184)) b!10951))

(assert (=> b!10951 m!18755))

(declare-fun m!18765 () Bool)

(assert (=> b!10951 m!18765))

(assert (=> b!10939 d!6356))

(declare-fun d!6358 () Bool)

(declare-fun c!1187 () Bool)

(assert (=> d!6358 (= c!1187 (fp.isNaN x!143))))

(declare-fun e!5905 () (_ BitVec 64))

(assert (=> d!6358 (= (__LO!0 x!143) ((_ extract 31 0) e!5905))))

(declare-fun b!10956 () Bool)

(assert (=> b!10956 (= e!5905 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10957 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10957 (= e!5905 (choose!1 x!143 x!143 false))))

(assert (= (and d!6358 c!1187) b!10956))

(assert (= (and d!6358 (not c!1187)) b!10957))

(declare-fun m!18767 () Bool)

(assert (=> b!10957 m!18767))

(assert (=> b!10939 d!6358))

(declare-fun d!6360 () Bool)

(declare-fun c!1190 () Bool)

(assert (=> d!6360 (= c!1190 (fp.isNaN x!143))))

(declare-fun e!5908 () (_ BitVec 64))

(assert (=> d!6360 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5908 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10962 () Bool)

(assert (=> b!10962 (= e!5908 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10963 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10963 (= e!5908 (choose!3 x!143 x!143 false))))

(assert (= (and d!6360 c!1190) b!10962))

(assert (= (and d!6360 (not c!1190)) b!10963))

(declare-fun m!18769 () Bool)

(assert (=> b!10963 m!18769))

(assert (=> b!10937 d!6360))

(push 1)

(assert (not b!10957))

(assert (not b!10945))

(assert (not b!10963))

(assert (not b!10951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

