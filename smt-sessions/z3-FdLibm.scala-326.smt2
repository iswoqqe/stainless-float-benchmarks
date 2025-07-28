; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1891 () Bool)

(assert start!1891)

(declare-fun res!8204 () Bool)

(declare-fun e!5557 () Bool)

(assert (=> start!1891 (=> (not res!8204) (not e!5557))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1891 (= res!8204 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1891 e!5557))

(assert (=> start!1891 true))

(declare-fun b!9956 () Bool)

(declare-fun e!5558 () Bool)

(assert (=> b!9956 (= e!5557 e!5558)))

(declare-fun res!8205 () Bool)

(assert (=> b!9956 (=> (not res!8205) (not e!5558))))

(declare-fun lt!4936 () (_ BitVec 32))

(assert (=> b!9956 (= res!8205 (and (bvsle #b11111111111111111111111111101001 lt!4936) (bvsle lt!4936 #b00000000000000000000001111101000)))))

(declare-fun lt!4939 () (_ BitVec 32))

(assert (=> b!9956 (= lt!4936 (bvsub (bvashr lt!4939 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9956 (= lt!4939 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9957 () Bool)

(declare-fun e!5559 () Bool)

(assert (=> b!9957 (= e!5558 e!5559)))

(declare-fun res!8203 () Bool)

(assert (=> b!9957 (=> (not res!8203) (not e!5559))))

(declare-fun lt!4940 () (_ BitVec 32))

(assert (=> b!9957 (= res!8203 (and (bvsle #b00000000000000000000000000011000 lt!4940) (bvsle lt!4940 #b00000000000000000000001111110000) (= (bvsrem lt!4940 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4938 () (_ BitVec 32))

(assert (=> b!9957 (= lt!4940 (ite (bvslt lt!4938 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4938))))

(assert (=> b!9957 (= lt!4938 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4936 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9958 () Bool)

(declare-fun lt!4937 () (_ FloatingPoint 11 53))

(assert (=> b!9958 (= e!5559 (and (not (fp.isNaN lt!4937)) (not (fp.gt lt!4937 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!4941 () (_ FloatingPoint 11 53))

(assert (=> b!9958 (= lt!4937 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!4941 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!4941) #b00000000000000000000000000000000 (ite (fp.gt lt!4941 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!4941 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!4941)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9958 (= lt!4941 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4939 (bvshl lt!4940 #b00000000000000000000000000010100))))))

(assert (= (and start!1891 res!8204) b!9956))

(assert (= (and b!9956 res!8205) b!9957))

(assert (= (and b!9957 res!8203) b!9958))

(declare-fun m!15847 () Bool)

(assert (=> b!9956 m!15847))

(declare-fun m!15849 () Bool)

(assert (=> b!9958 m!15849))

(declare-fun m!15851 () Bool)

(assert (=> b!9958 m!15851))

(declare-fun m!15853 () Bool)

(assert (=> b!9958 m!15853))

(declare-fun m!15855 () Bool)

(assert (=> b!9958 m!15855))

(declare-fun m!15857 () Bool)

(assert (=> b!9958 m!15857))

(assert (=> b!9958 m!15853))

(assert (=> b!9958 m!15857))

(check-sat (not b!9956) (not b!9958))
(check-sat)
(get-model)

(declare-fun d!4781 () Bool)

(declare-fun c!1085 () Bool)

(assert (=> d!4781 (= c!1085 (fp.isNaN x!143))))

(declare-fun e!5562 () (_ BitVec 64))

(assert (=> d!4781 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5562 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9963 () Bool)

(assert (=> b!9963 (= e!5562 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9964 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9964 (= e!5562 (choose!3 x!143 x!143 false))))

(assert (= (and d!4781 c!1085) b!9963))

(assert (= (and d!4781 (not c!1085)) b!9964))

(declare-fun m!15859 () Bool)

(assert (=> b!9964 m!15859))

(assert (=> b!9956 d!4781))

(declare-fun d!4783 () Bool)

(declare-fun c!1088 () Bool)

(assert (=> d!4783 (= c!1088 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5565 () (_ BitVec 64))

(assert (=> d!4783 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4939 (bvshl lt!4940 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5565 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4939 (bvshl lt!4940 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9969 () Bool)

(assert (=> b!9969 (= e!5565 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9970 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9970 (= e!5565 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4939 (bvshl lt!4940 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4783 c!1088) b!9969))

(assert (= (and d!4783 (not c!1088)) b!9970))

(assert (=> b!9970 m!15853))

(assert (=> b!9970 m!15853))

(declare-fun m!15861 () Bool)

(assert (=> b!9970 m!15861))

(assert (=> b!9958 d!4783))

(declare-fun d!4785 () Bool)

(declare-fun c!1091 () Bool)

(assert (=> d!4785 (= c!1091 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5568 () (_ BitVec 64))

(assert (=> d!4785 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5568 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9975 () Bool)

(assert (=> b!9975 (= e!5568 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9976 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9976 (= e!5568 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4785 c!1091) b!9975))

(assert (= (and d!4785 (not c!1091)) b!9976))

(assert (=> b!9976 m!15857))

(declare-fun m!15863 () Bool)

(assert (=> b!9976 m!15863))

(assert (=> b!9958 d!4785))

(declare-fun d!4787 () Bool)

(declare-fun c!1094 () Bool)

(assert (=> d!4787 (= c!1094 (fp.isNaN x!143))))

(declare-fun e!5571 () (_ BitVec 64))

(assert (=> d!4787 (= (__LO!0 x!143) ((_ extract 31 0) e!5571))))

(declare-fun b!9981 () Bool)

(assert (=> b!9981 (= e!5571 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9982 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9982 (= e!5571 (choose!1 x!143 x!143 false))))

(assert (= (and d!4787 c!1094) b!9981))

(assert (= (and d!4787 (not c!1094)) b!9982))

(declare-fun m!15865 () Bool)

(assert (=> b!9982 m!15865))

(assert (=> b!9958 d!4787))

(check-sat (not b!9970) (not b!9964) (not b!9982) (not b!9976))
(check-sat)
