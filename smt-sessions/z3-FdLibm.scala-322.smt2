; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1867 () Bool)

(assert start!1867)

(declare-fun res!8168 () Bool)

(declare-fun e!5499 () Bool)

(assert (=> start!1867 (=> (not res!8168) (not e!5499))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1867 (= res!8168 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1867 e!5499))

(assert (=> start!1867 true))

(declare-fun b!9872 () Bool)

(declare-fun e!5498 () Bool)

(assert (=> b!9872 (= e!5499 e!5498)))

(declare-fun res!8169 () Bool)

(assert (=> b!9872 (=> (not res!8169) (not e!5498))))

(declare-fun lt!4877 () (_ BitVec 32))

(assert (=> b!9872 (= res!8169 (and (bvsle #b11111111111111111111111111101001 lt!4877) (bvsle lt!4877 #b00000000000000000000001111101000)))))

(declare-fun lt!4874 () (_ BitVec 32))

(assert (=> b!9872 (= lt!4877 (bvsub (bvashr lt!4874 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9872 (= lt!4874 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9873 () Bool)

(declare-fun e!5497 () Bool)

(assert (=> b!9873 (= e!5498 e!5497)))

(declare-fun res!8167 () Bool)

(assert (=> b!9873 (=> (not res!8167) (not e!5497))))

(declare-fun lt!4876 () (_ BitVec 32))

(assert (=> b!9873 (= res!8167 (and (bvsle #b00000000000000000000000000011000 lt!4876) (bvsle lt!4876 #b00000000000000000000001111110000) (= (bvsrem lt!4876 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4875 () (_ BitVec 32))

(assert (=> b!9873 (= lt!4876 (ite (bvslt lt!4875 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4875))))

(assert (=> b!9873 (= lt!4875 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4877 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9874 () Bool)

(declare-fun lt!4878 () (_ FloatingPoint 11 53))

(assert (=> b!9874 (= e!5497 (and (not (fp.isNaN lt!4878)) (fp.gt lt!4878 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!4878 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9874 (= lt!4878 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4874 (bvshl lt!4876 #b00000000000000000000000000010100))))))

(assert (= (and start!1867 res!8168) b!9872))

(assert (= (and b!9872 res!8169) b!9873))

(assert (= (and b!9873 res!8167) b!9874))

(declare-fun m!15795 () Bool)

(assert (=> b!9872 m!15795))

(declare-fun m!15797 () Bool)

(assert (=> b!9874 m!15797))

(assert (=> b!9874 m!15797))

(declare-fun m!15799 () Bool)

(assert (=> b!9874 m!15799))

(assert (=> b!9874 m!15799))

(declare-fun m!15801 () Bool)

(assert (=> b!9874 m!15801))

(check-sat (not b!9872) (not b!9874))
(check-sat)
(get-model)

(declare-fun d!4765 () Bool)

(declare-fun c!1061 () Bool)

(assert (=> d!4765 (= c!1061 (fp.isNaN x!143))))

(declare-fun e!5502 () (_ BitVec 64))

(assert (=> d!4765 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5502 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9879 () Bool)

(assert (=> b!9879 (= e!5502 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9880 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9880 (= e!5502 (choose!3 x!143 x!143 false))))

(assert (= (and d!4765 c!1061) b!9879))

(assert (= (and d!4765 (not c!1061)) b!9880))

(declare-fun m!15803 () Bool)

(assert (=> b!9880 m!15803))

(assert (=> b!9872 d!4765))

(declare-fun d!4767 () Bool)

(declare-fun c!1064 () Bool)

(assert (=> d!4767 (= c!1064 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5505 () (_ BitVec 64))

(assert (=> d!4767 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4874 (bvshl lt!4876 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5505 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4874 (bvshl lt!4876 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9885 () Bool)

(assert (=> b!9885 (= e!5505 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9886 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9886 (= e!5505 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4874 (bvshl lt!4876 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4767 c!1064) b!9885))

(assert (= (and d!4767 (not c!1064)) b!9886))

(assert (=> b!9886 m!15799))

(assert (=> b!9886 m!15799))

(declare-fun m!15805 () Bool)

(assert (=> b!9886 m!15805))

(assert (=> b!9874 d!4767))

(declare-fun d!4769 () Bool)

(declare-fun c!1067 () Bool)

(assert (=> d!4769 (= c!1067 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5508 () (_ BitVec 64))

(assert (=> d!4769 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5508 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9891 () Bool)

(assert (=> b!9891 (= e!5508 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9892 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9892 (= e!5508 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4769 c!1067) b!9891))

(assert (= (and d!4769 (not c!1067)) b!9892))

(assert (=> b!9892 m!15797))

(declare-fun m!15807 () Bool)

(assert (=> b!9892 m!15807))

(assert (=> b!9874 d!4769))

(declare-fun d!4771 () Bool)

(declare-fun c!1070 () Bool)

(assert (=> d!4771 (= c!1070 (fp.isNaN x!143))))

(declare-fun e!5511 () (_ BitVec 64))

(assert (=> d!4771 (= (__LO!0 x!143) ((_ extract 31 0) e!5511))))

(declare-fun b!9897 () Bool)

(assert (=> b!9897 (= e!5511 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9898 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9898 (= e!5511 (choose!1 x!143 x!143 false))))

(assert (= (and d!4771 c!1070) b!9897))

(assert (= (and d!4771 (not c!1070)) b!9898))

(declare-fun m!15809 () Bool)

(assert (=> b!9898 m!15809))

(assert (=> b!9874 d!4771))

(check-sat (not b!9892) (not b!9886) (not b!9898) (not b!9880))
(check-sat)
