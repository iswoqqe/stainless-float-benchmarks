; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2025 () Bool)

(assert start!2025)

(declare-fun res!8948 () Bool)

(declare-fun e!5813 () Bool)

(assert (=> start!2025 (=> (not res!8948) (not e!5813))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2025 (= res!8948 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2025 e!5813))

(assert (=> start!2025 true))

(declare-fun b!10820 () Bool)

(declare-fun e!5814 () Bool)

(assert (=> b!10820 (= e!5813 e!5814)))

(declare-fun res!8949 () Bool)

(assert (=> b!10820 (=> (not res!8949) (not e!5814))))

(declare-fun lt!5176 () (_ BitVec 32))

(assert (=> b!10820 (= res!8949 (and (bvsle #b11111111111111111111111111101001 lt!5176) (bvsle lt!5176 #b00000000000000000000001111101000)))))

(declare-fun lt!5175 () (_ BitVec 32))

(assert (=> b!10820 (= lt!5176 (bvsub (bvashr lt!5175 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10820 (= lt!5175 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10821 () Bool)

(declare-fun e!5815 () Bool)

(assert (=> b!10821 (= e!5814 e!5815)))

(declare-fun res!8947 () Bool)

(assert (=> b!10821 (=> (not res!8947) (not e!5815))))

(declare-fun lt!5177 () (_ BitVec 32))

(assert (=> b!10821 (= res!8947 (and (bvsle #b00000000000000000000000000011000 lt!5177) (bvsle lt!5177 #b00000000000000000000001111110000) (= (bvsrem lt!5177 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5172 () (_ BitVec 32))

(assert (=> b!10821 (= lt!5177 (ite (bvslt lt!5172 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5172))))

(assert (=> b!10821 (= lt!5172 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5176 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10822 () Bool)

(declare-fun lt!5173 () (_ FloatingPoint 11 53))

(assert (=> b!10822 (= e!5815 (and (not (fp.isNaN lt!5173)) (fp.gt lt!5173 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5173 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun lt!5174 () (_ FloatingPoint 11 53))

(assert (=> b!10822 (= lt!5173 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5174 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5174) #b00000000000000000000000000000000 (ite (fp.gt lt!5174 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5174 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5174)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10822 (= lt!5174 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5175 (bvshl lt!5177 #b00000000000000000000000000010100))))))

(assert (= (and start!2025 res!8948) b!10820))

(assert (= (and b!10820 res!8949) b!10821))

(assert (= (and b!10821 res!8947) b!10822))

(declare-fun m!18663 () Bool)

(assert (=> b!10820 m!18663))

(declare-fun m!18665 () Bool)

(assert (=> b!10822 m!18665))

(declare-fun m!18667 () Bool)

(assert (=> b!10822 m!18667))

(declare-fun m!18669 () Bool)

(assert (=> b!10822 m!18669))

(declare-fun m!18671 () Bool)

(assert (=> b!10822 m!18671))

(assert (=> b!10822 m!18671))

(declare-fun m!18673 () Bool)

(assert (=> b!10822 m!18673))

(assert (=> b!10822 m!18669))

(push 1)

(assert (not b!10822))

(assert (not b!10820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6325 () Bool)

(declare-fun c!1145 () Bool)

(assert (=> d!6325 (= c!1145 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5818 () (_ BitVec 64))

(assert (=> d!6325 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5175 (bvshl lt!5177 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5818 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5175 (bvshl lt!5177 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10827 () Bool)

(assert (=> b!10827 (= e!5818 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10828 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10828 (= e!5818 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5175 (bvshl lt!5177 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6325 c!1145) b!10827))

(assert (= (and d!6325 (not c!1145)) b!10828))

(assert (=> b!10828 m!18671))

(assert (=> b!10828 m!18671))

(declare-fun m!18675 () Bool)

(assert (=> b!10828 m!18675))

(assert (=> b!10822 d!6325))

(declare-fun d!6327 () Bool)

(declare-fun c!1148 () Bool)

(assert (=> d!6327 (= c!1148 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5821 () (_ BitVec 64))

(assert (=> d!6327 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5821 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10833 () Bool)

(assert (=> b!10833 (= e!5821 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10834 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10834 (= e!5821 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6327 c!1148) b!10833))

(assert (= (and d!6327 (not c!1148)) b!10834))

(assert (=> b!10834 m!18669))

(declare-fun m!18677 () Bool)

(assert (=> b!10834 m!18677))

(assert (=> b!10822 d!6327))

(declare-fun d!6329 () Bool)

(declare-fun c!1151 () Bool)

(assert (=> d!6329 (= c!1151 (fp.isNaN x!143))))

(declare-fun e!5824 () (_ BitVec 64))

(assert (=> d!6329 (= (__LO!0 x!143) ((_ extract 31 0) e!5824))))

(declare-fun b!10839 () Bool)

(assert (=> b!10839 (= e!5824 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10840 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10840 (= e!5824 (choose!1 x!143 x!143 false))))

(assert (= (and d!6329 c!1151) b!10839))

(assert (= (and d!6329 (not c!1151)) b!10840))

(declare-fun m!18679 () Bool)

(assert (=> b!10840 m!18679))

(assert (=> b!10822 d!6329))

(declare-fun d!6331 () Bool)

(declare-fun c!1154 () Bool)

(assert (=> d!6331 (= c!1154 (fp.isNaN x!143))))

(declare-fun e!5827 () (_ BitVec 64))

(assert (=> d!6331 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5827 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10845 () Bool)

(assert (=> b!10845 (= e!5827 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10846 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10846 (= e!5827 (choose!3 x!143 x!143 false))))

(assert (= (and d!6331 c!1154) b!10845))

(assert (= (and d!6331 (not c!1154)) b!10846))

(declare-fun m!18681 () Bool)

(assert (=> b!10846 m!18681))

(assert (=> b!10820 d!6331))

(push 1)

(assert (not b!10840))

(assert (not b!10828))

(assert (not b!10846))

(assert (not b!10834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

