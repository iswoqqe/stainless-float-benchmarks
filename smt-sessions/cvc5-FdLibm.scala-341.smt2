; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2117 () Bool)

(assert start!2117)

(declare-fun res!9074 () Bool)

(declare-fun e!6037 () Bool)

(assert (=> start!2117 (=> (not res!9074) (not e!6037))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2117 (= res!9074 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2117 e!6037))

(assert (=> start!2117 true))

(declare-fun b!11138 () Bool)

(declare-fun e!6035 () Bool)

(assert (=> b!11138 (= e!6037 e!6035)))

(declare-fun res!9075 () Bool)

(assert (=> b!11138 (=> (not res!9075) (not e!6035))))

(declare-fun lt!5439 () (_ BitVec 32))

(assert (=> b!11138 (= res!9075 (and (bvsle #b11111111111111111111111111101001 lt!5439) (bvsle lt!5439 #b00000000000000000000001111101000)))))

(declare-fun lt!5447 () (_ BitVec 32))

(assert (=> b!11138 (= lt!5439 (bvsub (bvashr lt!5447 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11138 (= lt!5447 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11139 () Bool)

(declare-fun e!6036 () Bool)

(assert (=> b!11139 (= e!6035 e!6036)))

(declare-fun res!9073 () Bool)

(assert (=> b!11139 (=> (not res!9073) (not e!6036))))

(declare-fun lt!5446 () (_ BitVec 32))

(assert (=> b!11139 (= res!9073 (and (bvsle #b00000000000000000000000000011000 lt!5446) (bvsle lt!5446 #b00000000000000000000001111110000) (= (bvsrem lt!5446 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5443 () (_ BitVec 32))

(assert (=> b!11139 (= lt!5446 (ite (bvslt lt!5443 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5443))))

(assert (=> b!11139 (= lt!5443 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5439 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11140 () Bool)

(declare-fun lt!5444 () (_ FloatingPoint 11 53))

(assert (=> b!11140 (= e!6036 (and (not (fp.isNaN lt!5444)) (not (fp.gt lt!5444 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5440 () (_ FloatingPoint 11 53))

(declare-fun lt!5441 () (_ FloatingPoint 11 53))

(declare-fun lt!5445 () (_ FloatingPoint 11 53))

(declare-fun lt!5442 () (_ FloatingPoint 11 53))

(assert (=> b!11140 (= lt!5444 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5441 (select (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5442) #b00000000000000000000000000000000 (ite (fp.gt lt!5442 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5442 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5442)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5440) #b00000000000000000000000000000000 (ite (fp.gt lt!5440 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5440 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5440)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5445) #b00000000000000000000000000000000 (ite (fp.gt lt!5445 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5445 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5445)))))) #b00000000000000000000000000000011 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5441) #b00000000000000000000000000000000 (ite (fp.gt lt!5441 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5441 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5441)))))) #b00000000000000000000000000000011)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11140 (= lt!5441 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5445 (select (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5442) #b00000000000000000000000000000000 (ite (fp.gt lt!5442 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5442 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5442)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5440) #b00000000000000000000000000000000 (ite (fp.gt lt!5440 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5440 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5440)))))) #b00000000000000000000000000000010 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5445) #b00000000000000000000000000000000 (ite (fp.gt lt!5445 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5445 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5445)))))) #b00000000000000000000000000000010)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11140 (= lt!5445 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5440 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5442) #b00000000000000000000000000000000 (ite (fp.gt lt!5442 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5442 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5442)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5440) #b00000000000000000000000000000000 (ite (fp.gt lt!5440 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5440 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5440)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> b!11140 (= lt!5440 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5442 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5442) #b00000000000000000000000000000000 (ite (fp.gt lt!5442 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5442 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5442)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11140 (= lt!5442 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5447 (bvshl lt!5446 #b00000000000000000000000000010100))))))

(assert (= (and start!2117 res!9074) b!11138))

(assert (= (and b!11138 res!9075) b!11139))

(assert (= (and b!11139 res!9073) b!11140))

(declare-fun m!18919 () Bool)

(assert (=> b!11138 m!18919))

(declare-fun m!18921 () Bool)

(assert (=> b!11140 m!18921))

(declare-fun m!18923 () Bool)

(assert (=> b!11140 m!18923))

(declare-fun m!18925 () Bool)

(assert (=> b!11140 m!18925))

(declare-fun m!18927 () Bool)

(assert (=> b!11140 m!18927))

(declare-fun m!18929 () Bool)

(assert (=> b!11140 m!18929))

(declare-fun m!18931 () Bool)

(assert (=> b!11140 m!18931))

(declare-fun m!18933 () Bool)

(assert (=> b!11140 m!18933))

(declare-fun m!18935 () Bool)

(assert (=> b!11140 m!18935))

(declare-fun m!18937 () Bool)

(assert (=> b!11140 m!18937))

(declare-fun m!18939 () Bool)

(assert (=> b!11140 m!18939))

(assert (=> b!11140 m!18923))

(assert (=> b!11140 m!18939))

(declare-fun m!18941 () Bool)

(assert (=> b!11140 m!18941))

(push 1)

(assert (not b!11140))

(assert (not b!11138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6403 () Bool)

(declare-fun c!1241 () Bool)

(assert (=> d!6403 (= c!1241 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!6040 () (_ BitVec 64))

(assert (=> d!6403 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5447 (bvshl lt!5446 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!6040 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5447 (bvshl lt!5446 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!11145 () Bool)

(assert (=> b!11145 (= e!6040 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11146 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11146 (= e!6040 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5447 (bvshl lt!5446 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6403 c!1241) b!11145))

(assert (= (and d!6403 (not c!1241)) b!11146))

(assert (=> b!11146 m!18923))

(assert (=> b!11146 m!18923))

(declare-fun m!18943 () Bool)

(assert (=> b!11146 m!18943))

(assert (=> b!11140 d!6403))

(declare-fun d!6405 () Bool)

(declare-fun c!1244 () Bool)

(assert (=> d!6405 (= c!1244 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!6043 () (_ BitVec 64))

(assert (=> d!6405 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!6043 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!11151 () Bool)

(assert (=> b!11151 (= e!6043 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11152 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11152 (= e!6043 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6405 c!1244) b!11151))

(assert (= (and d!6405 (not c!1244)) b!11152))

(assert (=> b!11152 m!18939))

(declare-fun m!18945 () Bool)

(assert (=> b!11152 m!18945))

(assert (=> b!11140 d!6405))

(declare-fun d!6407 () Bool)

(declare-fun c!1247 () Bool)

(assert (=> d!6407 (= c!1247 (fp.isNaN x!143))))

(declare-fun e!6046 () (_ BitVec 64))

(assert (=> d!6407 (= (__LO!0 x!143) ((_ extract 31 0) e!6046))))

(declare-fun b!11157 () Bool)

(assert (=> b!11157 (= e!6046 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11158 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11158 (= e!6046 (choose!1 x!143 x!143 false))))

(assert (= (and d!6407 c!1247) b!11157))

(assert (= (and d!6407 (not c!1247)) b!11158))

(declare-fun m!18947 () Bool)

(assert (=> b!11158 m!18947))

(assert (=> b!11140 d!6407))

(declare-fun d!6409 () Bool)

(declare-fun c!1250 () Bool)

(assert (=> d!6409 (= c!1250 (fp.isNaN x!143))))

(declare-fun e!6049 () (_ BitVec 64))

(assert (=> d!6409 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!6049 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!11163 () Bool)

(assert (=> b!11163 (= e!6049 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11164 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11164 (= e!6049 (choose!3 x!143 x!143 false))))

(assert (= (and d!6409 c!1250) b!11163))

(assert (= (and d!6409 (not c!1250)) b!11164))

(declare-fun m!18949 () Bool)

(assert (=> b!11164 m!18949))

(assert (=> b!11138 d!6409))

(push 1)

(assert (not b!11164))

(assert (not b!11146))

(assert (not b!11152))

(assert (not b!11158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

