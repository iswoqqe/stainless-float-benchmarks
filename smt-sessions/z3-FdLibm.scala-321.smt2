; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1857 () Bool)

(assert start!1857)

(declare-fun res!8160 () Bool)

(declare-fun e!5476 () Bool)

(assert (=> start!1857 (=> (not res!8160) (not e!5476))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1857 (= res!8160 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1857 e!5476))

(assert (=> start!1857 true))

(declare-fun b!9839 () Bool)

(declare-fun e!5478 () Bool)

(assert (=> b!9839 (= e!5476 e!5478)))

(declare-fun res!8158 () Bool)

(assert (=> b!9839 (=> (not res!8158) (not e!5478))))

(declare-fun lt!4863 () (_ BitVec 32))

(assert (=> b!9839 (= res!8158 (and (bvsle #b11111111111111111111111111101001 lt!4863) (bvsle lt!4863 #b00000000000000000000001111101000)))))

(declare-fun lt!4859 () (_ BitVec 32))

(assert (=> b!9839 (= lt!4863 (bvsub (bvashr lt!4859 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9839 (= lt!4859 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9840 () Bool)

(declare-fun e!5477 () Bool)

(assert (=> b!9840 (= e!5478 e!5477)))

(declare-fun res!8159 () Bool)

(assert (=> b!9840 (=> (not res!8159) (not e!5477))))

(declare-fun lt!4862 () (_ BitVec 32))

(assert (=> b!9840 (= res!8159 (and (bvsle #b00000000000000000000000000011000 lt!4862) (bvsle lt!4862 #b00000000000000000000001111110000) (= (bvsrem lt!4862 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4860 () (_ BitVec 32))

(assert (=> b!9840 (= lt!4862 (ite (bvslt lt!4860 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4860))))

(assert (=> b!9840 (= lt!4860 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4863 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9841 () Bool)

(declare-fun lt!4861 () (_ FloatingPoint 11 53))

(assert (=> b!9841 (= e!5477 (and (not (fp.isNaN lt!4861)) (not (fp.gt lt!4861 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9841 (= lt!4861 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4859 (bvshl lt!4862 #b00000000000000000000000000010100))))))

(assert (= (and start!1857 res!8160) b!9839))

(assert (= (and b!9839 res!8158) b!9840))

(assert (= (and b!9840 res!8159) b!9841))

(declare-fun m!15779 () Bool)

(assert (=> b!9839 m!15779))

(declare-fun m!15781 () Bool)

(assert (=> b!9841 m!15781))

(assert (=> b!9841 m!15781))

(declare-fun m!15783 () Bool)

(assert (=> b!9841 m!15783))

(assert (=> b!9841 m!15783))

(declare-fun m!15785 () Bool)

(assert (=> b!9841 m!15785))

(check-sat (not b!9841) (not b!9839))
(check-sat)
(get-model)

(declare-fun d!4757 () Bool)

(declare-fun c!1049 () Bool)

(assert (=> d!4757 (= c!1049 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5481 () (_ BitVec 64))

(assert (=> d!4757 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4859 (bvshl lt!4862 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5481 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4859 (bvshl lt!4862 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9846 () Bool)

(assert (=> b!9846 (= e!5481 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9847 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9847 (= e!5481 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4859 (bvshl lt!4862 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4757 c!1049) b!9846))

(assert (= (and d!4757 (not c!1049)) b!9847))

(assert (=> b!9847 m!15783))

(assert (=> b!9847 m!15783))

(declare-fun m!15787 () Bool)

(assert (=> b!9847 m!15787))

(assert (=> b!9841 d!4757))

(declare-fun d!4759 () Bool)

(declare-fun c!1052 () Bool)

(assert (=> d!4759 (= c!1052 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5484 () (_ BitVec 64))

(assert (=> d!4759 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5484 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9852 () Bool)

(assert (=> b!9852 (= e!5484 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9853 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9853 (= e!5484 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4759 c!1052) b!9852))

(assert (= (and d!4759 (not c!1052)) b!9853))

(assert (=> b!9853 m!15781))

(declare-fun m!15789 () Bool)

(assert (=> b!9853 m!15789))

(assert (=> b!9841 d!4759))

(declare-fun d!4761 () Bool)

(declare-fun c!1055 () Bool)

(assert (=> d!4761 (= c!1055 (fp.isNaN x!143))))

(declare-fun e!5487 () (_ BitVec 64))

(assert (=> d!4761 (= (__LO!0 x!143) ((_ extract 31 0) e!5487))))

(declare-fun b!9858 () Bool)

(assert (=> b!9858 (= e!5487 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9859 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9859 (= e!5487 (choose!1 x!143 x!143 false))))

(assert (= (and d!4761 c!1055) b!9858))

(assert (= (and d!4761 (not c!1055)) b!9859))

(declare-fun m!15791 () Bool)

(assert (=> b!9859 m!15791))

(assert (=> b!9841 d!4761))

(declare-fun d!4763 () Bool)

(declare-fun c!1058 () Bool)

(assert (=> d!4763 (= c!1058 (fp.isNaN x!143))))

(declare-fun e!5490 () (_ BitVec 64))

(assert (=> d!4763 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5490 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9864 () Bool)

(assert (=> b!9864 (= e!5490 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9865 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9865 (= e!5490 (choose!3 x!143 x!143 false))))

(assert (= (and d!4763 c!1058) b!9864))

(assert (= (and d!4763 (not c!1058)) b!9865))

(declare-fun m!15793 () Bool)

(assert (=> b!9865 m!15793))

(assert (=> b!9839 d!4763))

(check-sat (not b!9847) (not b!9865) (not b!9859) (not b!9853))
(check-sat)
