; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2015 () Bool)

(assert start!2015)

(declare-fun res!8938 () Bool)

(declare-fun e!5794 () Bool)

(assert (=> start!2015 (=> (not res!8938) (not e!5794))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2015 (= res!8938 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2015 e!5794))

(assert (=> start!2015 true))

(declare-fun b!10787 () Bool)

(declare-fun e!5793 () Bool)

(assert (=> b!10787 (= e!5794 e!5793)))

(declare-fun res!8940 () Bool)

(assert (=> b!10787 (=> (not res!8940) (not e!5793))))

(declare-fun lt!5159 () (_ BitVec 32))

(assert (=> b!10787 (= res!8940 (and (bvsle #b11111111111111111111111111101001 lt!5159) (bvsle lt!5159 #b00000000000000000000001111101000)))))

(declare-fun lt!5155 () (_ BitVec 32))

(assert (=> b!10787 (= lt!5159 (bvsub (bvashr lt!5155 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10787 (= lt!5155 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10788 () Bool)

(declare-fun e!5792 () Bool)

(assert (=> b!10788 (= e!5793 e!5792)))

(declare-fun res!8939 () Bool)

(assert (=> b!10788 (=> (not res!8939) (not e!5792))))

(declare-fun lt!5154 () (_ BitVec 32))

(assert (=> b!10788 (= res!8939 (and (bvsle #b00000000000000000000000000011000 lt!5154) (bvsle lt!5154 #b00000000000000000000001111110000) (= (bvsrem lt!5154 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5157 () (_ BitVec 32))

(assert (=> b!10788 (= lt!5154 (ite (bvslt lt!5157 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5157))))

(assert (=> b!10788 (= lt!5157 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5159 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10789 () Bool)

(declare-fun lt!5156 () (_ FloatingPoint 11 53))

(assert (=> b!10789 (= e!5792 (and (not (fp.isNaN lt!5156)) (not (fp.gt lt!5156 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun lt!5158 () (_ FloatingPoint 11 53))

(assert (=> b!10789 (= lt!5156 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5158 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5158) #b00000000000000000000000000000000 (ite (fp.gt lt!5158 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5158 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5158)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10789 (= lt!5158 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5155 (bvshl lt!5154 #b00000000000000000000000000010100))))))

(assert (= (and start!2015 res!8938) b!10787))

(assert (= (and b!10787 res!8940) b!10788))

(assert (= (and b!10788 res!8939) b!10789))

(declare-fun m!18643 () Bool)

(assert (=> b!10787 m!18643))

(declare-fun m!18645 () Bool)

(assert (=> b!10789 m!18645))

(declare-fun m!18647 () Bool)

(assert (=> b!10789 m!18647))

(declare-fun m!18649 () Bool)

(assert (=> b!10789 m!18649))

(declare-fun m!18651 () Bool)

(assert (=> b!10789 m!18651))

(declare-fun m!18653 () Bool)

(assert (=> b!10789 m!18653))

(assert (=> b!10789 m!18647))

(assert (=> b!10789 m!18653))

(push 1)

(assert (not b!10789))

(assert (not b!10787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6316 () Bool)

(declare-fun c!1133 () Bool)

(assert (=> d!6316 (= c!1133 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5797 () (_ BitVec 64))

(assert (=> d!6316 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5155 (bvshl lt!5154 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5797 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5155 (bvshl lt!5154 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10794 () Bool)

(assert (=> b!10794 (= e!5797 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10795 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10795 (= e!5797 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5155 (bvshl lt!5154 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6316 c!1133) b!10794))

(assert (= (and d!6316 (not c!1133)) b!10795))

(assert (=> b!10795 m!18647))

(assert (=> b!10795 m!18647))

(declare-fun m!18655 () Bool)

(assert (=> b!10795 m!18655))

(assert (=> b!10789 d!6316))

(declare-fun d!6318 () Bool)

(declare-fun c!1136 () Bool)

(assert (=> d!6318 (= c!1136 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5800 () (_ BitVec 64))

(assert (=> d!6318 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5800 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10800 () Bool)

(assert (=> b!10800 (= e!5800 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10801 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10801 (= e!5800 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6318 c!1136) b!10800))

(assert (= (and d!6318 (not c!1136)) b!10801))

(assert (=> b!10801 m!18653))

(declare-fun m!18657 () Bool)

(assert (=> b!10801 m!18657))

(assert (=> b!10789 d!6318))

(declare-fun d!6320 () Bool)

(declare-fun c!1139 () Bool)

(assert (=> d!6320 (= c!1139 (fp.isNaN x!143))))

(declare-fun e!5803 () (_ BitVec 64))

(assert (=> d!6320 (= (__LO!0 x!143) ((_ extract 31 0) e!5803))))

(declare-fun b!10806 () Bool)

(assert (=> b!10806 (= e!5803 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10807 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10807 (= e!5803 (choose!1 x!143 x!143 false))))

(assert (= (and d!6320 c!1139) b!10806))

(assert (= (and d!6320 (not c!1139)) b!10807))

(declare-fun m!18659 () Bool)

(assert (=> b!10807 m!18659))

(assert (=> b!10789 d!6320))

(declare-fun d!6322 () Bool)

(declare-fun c!1142 () Bool)

(assert (=> d!6322 (= c!1142 (fp.isNaN x!143))))

(declare-fun e!5806 () (_ BitVec 64))

(assert (=> d!6322 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5806 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10812 () Bool)

(assert (=> b!10812 (= e!5806 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10813 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10813 (= e!5806 (choose!3 x!143 x!143 false))))

(assert (= (and d!6322 c!1142) b!10812))

(assert (= (and d!6322 (not c!1142)) b!10813))

(declare-fun m!18661 () Bool)

(assert (=> b!10813 m!18661))

(assert (=> b!10787 d!6322))

(push 1)

(assert (not b!10807))

(assert (not b!10795))

(assert (not b!10813))

(assert (not b!10801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

