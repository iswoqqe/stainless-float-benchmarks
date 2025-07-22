; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2039 () Bool)

(assert start!2039)

(declare-fun res!8976 () Bool)

(declare-fun e!5852 () Bool)

(assert (=> start!2039 (=> (not res!8976) (not e!5852))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2039 (= res!8976 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2039 e!5852))

(assert (=> start!2039 true))

(declare-fun b!10871 () Bool)

(declare-fun e!5853 () Bool)

(assert (=> b!10871 (= e!5852 e!5853)))

(declare-fun res!8975 () Bool)

(assert (=> b!10871 (=> (not res!8975) (not e!5853))))

(declare-fun lt!5222 () (_ BitVec 32))

(assert (=> b!10871 (= res!8975 (and (bvsle #b11111111111111111111111111101001 lt!5222) (bvsle lt!5222 #b00000000000000000000001111101000)))))

(declare-fun lt!5224 () (_ BitVec 32))

(assert (=> b!10871 (= lt!5222 (bvsub (bvashr lt!5224 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10871 (= lt!5224 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10872 () Bool)

(declare-fun e!5854 () Bool)

(assert (=> b!10872 (= e!5853 e!5854)))

(declare-fun res!8974 () Bool)

(assert (=> b!10872 (=> (not res!8974) (not e!5854))))

(declare-fun lt!5225 () (_ BitVec 32))

(assert (=> b!10872 (= res!8974 (and (bvsle #b00000000000000000000000000011000 lt!5225) (bvsle lt!5225 #b00000000000000000000001111110000) (= (bvsrem lt!5225 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5223 () (_ BitVec 32))

(assert (=> b!10872 (= lt!5225 (ite (bvslt lt!5223 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5223))))

(assert (=> b!10872 (= lt!5223 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5222 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10873 () Bool)

(declare-fun lt!5221 () (_ FloatingPoint 11 53))

(declare-fun lt!5220 () (_ FloatingPoint 11 53))

(assert (=> b!10873 (= e!5854 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5221 (select (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5220) #b00000000000000000000000000000000 (ite (fp.gt lt!5220 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5220 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5220)))))) #b00000000000000000000000000000001 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5221) #b00000000000000000000000000000000 (ite (fp.gt lt!5221 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5221 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5221)))))) #b00000000000000000000000000000001)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!10873 (= lt!5221 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5220 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5220) #b00000000000000000000000000000000 (ite (fp.gt lt!5220 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5220 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5220)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10873 (= lt!5220 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5224 (bvshl lt!5225 #b00000000000000000000000000010100))))))

(assert (= (and start!2039 res!8976) b!10871))

(assert (= (and b!10871 res!8975) b!10872))

(assert (= (and b!10872 res!8974) b!10873))

(declare-fun m!18699 () Bool)

(assert (=> b!10871 m!18699))

(declare-fun m!18701 () Bool)

(assert (=> b!10873 m!18701))

(declare-fun m!18703 () Bool)

(assert (=> b!10873 m!18703))

(declare-fun m!18705 () Bool)

(assert (=> b!10873 m!18705))

(declare-fun m!18707 () Bool)

(assert (=> b!10873 m!18707))

(declare-fun m!18709 () Bool)

(assert (=> b!10873 m!18709))

(declare-fun m!18711 () Bool)

(assert (=> b!10873 m!18711))

(declare-fun m!18713 () Bool)

(assert (=> b!10873 m!18713))

(assert (=> b!10873 m!18705))

(assert (=> b!10873 m!18713))

(push 1)

(assert (not b!10871))

(assert (not b!10873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6336 () Bool)

(declare-fun c!1157 () Bool)

(assert (=> d!6336 (= c!1157 (fp.isNaN x!143))))

(declare-fun e!5857 () (_ BitVec 64))

(assert (=> d!6336 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5857 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10878 () Bool)

(assert (=> b!10878 (= e!5857 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10879 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10879 (= e!5857 (choose!3 x!143 x!143 false))))

(assert (= (and d!6336 c!1157) b!10878))

(assert (= (and d!6336 (not c!1157)) b!10879))

(declare-fun m!18715 () Bool)

(assert (=> b!10879 m!18715))

(assert (=> b!10871 d!6336))

(declare-fun d!6338 () Bool)

(declare-fun c!1160 () Bool)

(assert (=> d!6338 (= c!1160 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5860 () (_ BitVec 64))

(assert (=> d!6338 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5224 (bvshl lt!5225 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5860 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5224 (bvshl lt!5225 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10884 () Bool)

(assert (=> b!10884 (= e!5860 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10885 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10885 (= e!5860 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5224 (bvshl lt!5225 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6338 c!1160) b!10884))

(assert (= (and d!6338 (not c!1160)) b!10885))

(assert (=> b!10885 m!18705))

(assert (=> b!10885 m!18705))

(declare-fun m!18717 () Bool)

(assert (=> b!10885 m!18717))

(assert (=> b!10873 d!6338))

(declare-fun d!6340 () Bool)

(declare-fun c!1163 () Bool)

(assert (=> d!6340 (= c!1163 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5863 () (_ BitVec 64))

(assert (=> d!6340 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5863 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10890 () Bool)

(assert (=> b!10890 (= e!5863 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10891 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10891 (= e!5863 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6340 c!1163) b!10890))

(assert (= (and d!6340 (not c!1163)) b!10891))

(assert (=> b!10891 m!18713))

(declare-fun m!18719 () Bool)

(assert (=> b!10891 m!18719))

(assert (=> b!10873 d!6340))

(declare-fun d!6342 () Bool)

(declare-fun c!1166 () Bool)

(assert (=> d!6342 (= c!1166 (fp.isNaN x!143))))

(declare-fun e!5866 () (_ BitVec 64))

(assert (=> d!6342 (= (__LO!0 x!143) ((_ extract 31 0) e!5866))))

(declare-fun b!10896 () Bool)

(assert (=> b!10896 (= e!5866 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10897 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10897 (= e!5866 (choose!1 x!143 x!143 false))))

(assert (= (and d!6342 c!1166) b!10896))

(assert (= (and d!6342 (not c!1166)) b!10897))

(declare-fun m!18721 () Bool)

(assert (=> b!10897 m!18721))

(assert (=> b!10873 d!6342))

(push 1)

(assert (not b!10891))

(assert (not b!10897))

(assert (not b!10879))

(assert (not b!10885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

