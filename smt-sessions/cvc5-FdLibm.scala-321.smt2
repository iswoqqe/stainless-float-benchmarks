; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1981 () Bool)

(assert start!1981)

(declare-fun res!8893 () Bool)

(declare-fun e!5711 () Bool)

(assert (=> start!1981 (=> (not res!8893) (not e!5711))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1981 (= res!8893 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1981 e!5711))

(assert (=> start!1981 true))

(declare-fun b!10670 () Bool)

(declare-fun e!5713 () Bool)

(assert (=> b!10670 (= e!5711 e!5713)))

(declare-fun res!8894 () Bool)

(assert (=> b!10670 (=> (not res!8894) (not e!5713))))

(declare-fun lt!5081 () (_ BitVec 32))

(assert (=> b!10670 (= res!8894 (and (bvsle #b11111111111111111111111111101001 lt!5081) (bvsle lt!5081 #b00000000000000000000001111101000)))))

(declare-fun lt!5078 () (_ BitVec 32))

(assert (=> b!10670 (= lt!5081 (bvsub (bvashr lt!5078 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10670 (= lt!5078 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10671 () Bool)

(declare-fun e!5712 () Bool)

(assert (=> b!10671 (= e!5713 e!5712)))

(declare-fun res!8895 () Bool)

(assert (=> b!10671 (=> (not res!8895) (not e!5712))))

(declare-fun lt!5080 () (_ BitVec 32))

(assert (=> b!10671 (= res!8895 (and (bvsle #b00000000000000000000000000011000 lt!5080) (bvsle lt!5080 #b00000000000000000000001111110000) (= (bvsrem lt!5080 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5077 () (_ BitVec 32))

(assert (=> b!10671 (= lt!5080 (ite (bvslt lt!5077 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5077))))

(assert (=> b!10671 (= lt!5077 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5081 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10672 () Bool)

(declare-fun lt!5079 () (_ FloatingPoint 11 53))

(assert (=> b!10672 (= e!5712 (and (not (fp.isNaN lt!5079)) (not (fp.gt lt!5079 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10672 (= lt!5079 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5078 (bvshl lt!5080 #b00000000000000000000000000010100))))))

(assert (= (and start!1981 res!8893) b!10670))

(assert (= (and b!10670 res!8894) b!10671))

(assert (= (and b!10671 res!8895) b!10672))

(declare-fun m!18575 () Bool)

(assert (=> b!10670 m!18575))

(declare-fun m!18577 () Bool)

(assert (=> b!10672 m!18577))

(assert (=> b!10672 m!18577))

(declare-fun m!18579 () Bool)

(assert (=> b!10672 m!18579))

(assert (=> b!10672 m!18579))

(declare-fun m!18581 () Bool)

(assert (=> b!10672 m!18581))

(push 1)

(assert (not b!10670))

(assert (not b!10672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6287 () Bool)

(declare-fun c!1097 () Bool)

(assert (=> d!6287 (= c!1097 (fp.isNaN x!143))))

(declare-fun e!5716 () (_ BitVec 64))

(assert (=> d!6287 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5716 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10677 () Bool)

(assert (=> b!10677 (= e!5716 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10678 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10678 (= e!5716 (choose!3 x!143 x!143 false))))

(assert (= (and d!6287 c!1097) b!10677))

(assert (= (and d!6287 (not c!1097)) b!10678))

(declare-fun m!18583 () Bool)

(assert (=> b!10678 m!18583))

(assert (=> b!10670 d!6287))

(declare-fun d!6289 () Bool)

(declare-fun c!1100 () Bool)

(assert (=> d!6289 (= c!1100 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5719 () (_ BitVec 64))

(assert (=> d!6289 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5078 (bvshl lt!5080 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5719 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5078 (bvshl lt!5080 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10683 () Bool)

(assert (=> b!10683 (= e!5719 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10684 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10684 (= e!5719 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5078 (bvshl lt!5080 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6289 c!1100) b!10683))

(assert (= (and d!6289 (not c!1100)) b!10684))

(assert (=> b!10684 m!18579))

(assert (=> b!10684 m!18579))

(declare-fun m!18585 () Bool)

(assert (=> b!10684 m!18585))

(assert (=> b!10672 d!6289))

(declare-fun d!6291 () Bool)

(declare-fun c!1103 () Bool)

(assert (=> d!6291 (= c!1103 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5722 () (_ BitVec 64))

(assert (=> d!6291 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5722 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10689 () Bool)

(assert (=> b!10689 (= e!5722 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10690 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10690 (= e!5722 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6291 c!1103) b!10689))

(assert (= (and d!6291 (not c!1103)) b!10690))

(assert (=> b!10690 m!18577))

(declare-fun m!18587 () Bool)

(assert (=> b!10690 m!18587))

(assert (=> b!10672 d!6291))

(declare-fun d!6293 () Bool)

(declare-fun c!1106 () Bool)

(assert (=> d!6293 (= c!1106 (fp.isNaN x!143))))

(declare-fun e!5725 () (_ BitVec 64))

(assert (=> d!6293 (= (__LO!0 x!143) ((_ extract 31 0) e!5725))))

(declare-fun b!10695 () Bool)

(assert (=> b!10695 (= e!5725 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10696 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10696 (= e!5725 (choose!1 x!143 x!143 false))))

(assert (= (and d!6293 c!1106) b!10695))

(assert (= (and d!6293 (not c!1106)) b!10696))

(declare-fun m!18589 () Bool)

(assert (=> b!10696 m!18589))

(assert (=> b!10672 d!6293))

(push 1)

(assert (not b!10690))

(assert (not b!10684))

(assert (not b!10678))

(assert (not b!10696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

