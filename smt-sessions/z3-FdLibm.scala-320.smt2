; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1847 () Bool)

(assert start!1847)

(declare-fun res!8150 () Bool)

(declare-fun e!5456 () Bool)

(assert (=> start!1847 (=> (not res!8150) (not e!5456))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1847 (= res!8150 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1847 e!5456))

(assert (=> start!1847 true))

(declare-fun b!9806 () Bool)

(declare-fun e!5455 () Bool)

(assert (=> b!9806 (= e!5456 e!5455)))

(declare-fun res!8149 () Bool)

(assert (=> b!9806 (=> (not res!8149) (not e!5455))))

(declare-fun lt!4848 () (_ BitVec 32))

(assert (=> b!9806 (= res!8149 (and (bvsle #b11111111111111111111111111101001 lt!4848) (bvsle lt!4848 #b00000000000000000000001111101000)))))

(declare-fun lt!4846 () (_ BitVec 32))

(assert (=> b!9806 (= lt!4848 (bvsub (bvashr lt!4846 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9806 (= lt!4846 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9807 () Bool)

(declare-fun e!5457 () Bool)

(assert (=> b!9807 (= e!5455 e!5457)))

(declare-fun res!8151 () Bool)

(assert (=> b!9807 (=> (not res!8151) (not e!5457))))

(declare-fun lt!4845 () (_ BitVec 32))

(assert (=> b!9807 (= res!8151 (and (bvsle #b00000000000000000000000000011000 lt!4845) (bvsle lt!4845 #b00000000000000000000001111110000) (= (bvsrem lt!4845 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4847 () (_ BitVec 32))

(assert (=> b!9807 (= lt!4845 (ite (bvslt lt!4847 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4847))))

(assert (=> b!9807 (= lt!4847 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4848 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9808 () Bool)

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9808 (= e!5457 (fp.isNaN (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4846 (bvshl lt!4845 #b00000000000000000000000000010100)))))))

(assert (= (and start!1847 res!8150) b!9806))

(assert (= (and b!9806 res!8149) b!9807))

(assert (= (and b!9807 res!8151) b!9808))

(declare-fun m!15763 () Bool)

(assert (=> b!9806 m!15763))

(declare-fun m!15765 () Bool)

(assert (=> b!9808 m!15765))

(assert (=> b!9808 m!15765))

(declare-fun m!15767 () Bool)

(assert (=> b!9808 m!15767))

(assert (=> b!9808 m!15767))

(declare-fun m!15769 () Bool)

(assert (=> b!9808 m!15769))

(check-sat (not b!9806) (not b!9808))
(check-sat)
(get-model)

(declare-fun d!4749 () Bool)

(declare-fun c!1037 () Bool)

(assert (=> d!4749 (= c!1037 (fp.isNaN x!143))))

(declare-fun e!5460 () (_ BitVec 64))

(assert (=> d!4749 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5460 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!9813 () Bool)

(assert (=> b!9813 (= e!5460 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9814 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9814 (= e!5460 (choose!3 x!143 x!143 false))))

(assert (= (and d!4749 c!1037) b!9813))

(assert (= (and d!4749 (not c!1037)) b!9814))

(declare-fun m!15771 () Bool)

(assert (=> b!9814 m!15771))

(assert (=> b!9806 d!4749))

(declare-fun d!4751 () Bool)

(declare-fun c!1040 () Bool)

(assert (=> d!4751 (= c!1040 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5463 () (_ BitVec 64))

(assert (=> d!4751 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4846 (bvshl lt!4845 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5463 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!4846 (bvshl lt!4845 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!9819 () Bool)

(assert (=> b!9819 (= e!5463 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9820 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9820 (= e!5463 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4846 (bvshl lt!4845 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!4751 c!1040) b!9819))

(assert (= (and d!4751 (not c!1040)) b!9820))

(assert (=> b!9820 m!15767))

(assert (=> b!9820 m!15767))

(declare-fun m!15773 () Bool)

(assert (=> b!9820 m!15773))

(assert (=> b!9808 d!4751))

(declare-fun d!4753 () Bool)

(declare-fun c!1043 () Bool)

(assert (=> d!4753 (= c!1043 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5466 () (_ BitVec 64))

(assert (=> d!4753 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5466 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!9825 () Bool)

(assert (=> b!9825 (= e!5466 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9826 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9826 (= e!5466 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!4753 c!1043) b!9825))

(assert (= (and d!4753 (not c!1043)) b!9826))

(assert (=> b!9826 m!15765))

(declare-fun m!15775 () Bool)

(assert (=> b!9826 m!15775))

(assert (=> b!9808 d!4753))

(declare-fun d!4755 () Bool)

(declare-fun c!1046 () Bool)

(assert (=> d!4755 (= c!1046 (fp.isNaN x!143))))

(declare-fun e!5469 () (_ BitVec 64))

(assert (=> d!4755 (= (__LO!0 x!143) ((_ extract 31 0) e!5469))))

(declare-fun b!9831 () Bool)

(assert (=> b!9831 (= e!5469 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!9832 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!9832 (= e!5469 (choose!1 x!143 x!143 false))))

(assert (= (and d!4755 c!1046) b!9831))

(assert (= (and d!4755 (not c!1046)) b!9832))

(declare-fun m!15777 () Bool)

(assert (=> b!9832 m!15777))

(assert (=> b!9808 d!4755))

(check-sat (not b!9826) (not b!9820) (not b!9814) (not b!9832))
(check-sat)
