; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1971 () Bool)

(assert start!1971)

(declare-fun res!8885 () Bool)

(declare-fun e!5692 () Bool)

(assert (=> start!1971 (=> (not res!8885) (not e!5692))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1971 (= res!8885 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1971 e!5692))

(assert (=> start!1971 true))

(declare-fun b!10637 () Bool)

(declare-fun e!5690 () Bool)

(assert (=> b!10637 (= e!5692 e!5690)))

(declare-fun res!8886 () Bool)

(assert (=> b!10637 (=> (not res!8886) (not e!5690))))

(declare-fun lt!5065 () (_ BitVec 32))

(assert (=> b!10637 (= res!8886 (and (bvsle #b11111111111111111111111111101001 lt!5065) (bvsle lt!5065 #b00000000000000000000001111101000)))))

(declare-fun lt!5064 () (_ BitVec 32))

(assert (=> b!10637 (= lt!5065 (bvsub (bvashr lt!5064 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10637 (= lt!5064 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10638 () Bool)

(declare-fun e!5691 () Bool)

(assert (=> b!10638 (= e!5690 e!5691)))

(declare-fun res!8884 () Bool)

(assert (=> b!10638 (=> (not res!8884) (not e!5691))))

(declare-fun lt!5066 () (_ BitVec 32))

(assert (=> b!10638 (= res!8884 (and (bvsle #b00000000000000000000000000011000 lt!5066) (bvsle lt!5066 #b00000000000000000000001111110000) (= (bvsrem lt!5066 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5063 () (_ BitVec 32))

(assert (=> b!10638 (= lt!5066 (ite (bvslt lt!5063 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5063))))

(assert (=> b!10638 (= lt!5063 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5065 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10639 () Bool)

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10639 (= e!5691 (fp.isNaN (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5064 (bvshl lt!5066 #b00000000000000000000000000010100)))))))

(assert (= (and start!1971 res!8885) b!10637))

(assert (= (and b!10637 res!8886) b!10638))

(assert (= (and b!10638 res!8884) b!10639))

(declare-fun m!18559 () Bool)

(assert (=> b!10637 m!18559))

(declare-fun m!18561 () Bool)

(assert (=> b!10639 m!18561))

(assert (=> b!10639 m!18561))

(declare-fun m!18563 () Bool)

(assert (=> b!10639 m!18563))

(assert (=> b!10639 m!18563))

(declare-fun m!18565 () Bool)

(assert (=> b!10639 m!18565))

(push 1)

(assert (not b!10639))

(assert (not b!10637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6278 () Bool)

(declare-fun c!1085 () Bool)

(assert (=> d!6278 (= c!1085 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5695 () (_ BitVec 64))

(assert (=> d!6278 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5064 (bvshl lt!5066 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5695 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5064 (bvshl lt!5066 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10644 () Bool)

(assert (=> b!10644 (= e!5695 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10645 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10645 (= e!5695 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5064 (bvshl lt!5066 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6278 c!1085) b!10644))

(assert (= (and d!6278 (not c!1085)) b!10645))

(assert (=> b!10645 m!18563))

(assert (=> b!10645 m!18563))

(declare-fun m!18567 () Bool)

(assert (=> b!10645 m!18567))

(assert (=> b!10639 d!6278))

(declare-fun d!6280 () Bool)

(declare-fun c!1088 () Bool)

(assert (=> d!6280 (= c!1088 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5698 () (_ BitVec 64))

(assert (=> d!6280 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5698 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10650 () Bool)

(assert (=> b!10650 (= e!5698 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10651 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10651 (= e!5698 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6280 c!1088) b!10650))

(assert (= (and d!6280 (not c!1088)) b!10651))

(assert (=> b!10651 m!18561))

(declare-fun m!18569 () Bool)

(assert (=> b!10651 m!18569))

(assert (=> b!10639 d!6280))

(declare-fun d!6282 () Bool)

(declare-fun c!1091 () Bool)

(assert (=> d!6282 (= c!1091 (fp.isNaN x!143))))

(declare-fun e!5701 () (_ BitVec 64))

(assert (=> d!6282 (= (__LO!0 x!143) ((_ extract 31 0) e!5701))))

(declare-fun b!10656 () Bool)

(assert (=> b!10656 (= e!5701 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10657 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10657 (= e!5701 (choose!1 x!143 x!143 false))))

(assert (= (and d!6282 c!1091) b!10656))

(assert (= (and d!6282 (not c!1091)) b!10657))

(declare-fun m!18571 () Bool)

(assert (=> b!10657 m!18571))

(assert (=> b!10639 d!6282))

(declare-fun d!6284 () Bool)

(declare-fun c!1094 () Bool)

(assert (=> d!6284 (= c!1094 (fp.isNaN x!143))))

(declare-fun e!5704 () (_ BitVec 64))

(assert (=> d!6284 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5704 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10662 () Bool)

(assert (=> b!10662 (= e!5704 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10663 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10663 (= e!5704 (choose!3 x!143 x!143 false))))

(assert (= (and d!6284 c!1094) b!10662))

(assert (= (and d!6284 (not c!1094)) b!10663))

(declare-fun m!18573 () Bool)

(assert (=> b!10663 m!18573))

(assert (=> b!10637 d!6284))

(push 1)

(assert (not b!10645))

(assert (not b!10657))

(assert (not b!10651))

(assert (not b!10663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

