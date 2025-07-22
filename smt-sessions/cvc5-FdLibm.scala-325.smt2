; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2005 () Bool)

(assert start!2005)

(declare-fun res!8931 () Bool)

(declare-fun e!5771 () Bool)

(assert (=> start!2005 (=> (not res!8931) (not e!5771))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2005 (= res!8931 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2005 e!5771))

(assert (=> start!2005 true))

(declare-fun b!10754 () Bool)

(declare-fun e!5772 () Bool)

(assert (=> b!10754 (= e!5771 e!5772)))

(declare-fun res!8929 () Bool)

(assert (=> b!10754 (=> (not res!8929) (not e!5772))))

(declare-fun lt!5137 () (_ BitVec 32))

(assert (=> b!10754 (= res!8929 (and (bvsle #b11111111111111111111111111101001 lt!5137) (bvsle lt!5137 #b00000000000000000000001111101000)))))

(declare-fun lt!5140 () (_ BitVec 32))

(assert (=> b!10754 (= lt!5137 (bvsub (bvashr lt!5140 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10754 (= lt!5140 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10755 () Bool)

(declare-fun e!5773 () Bool)

(assert (=> b!10755 (= e!5772 e!5773)))

(declare-fun res!8930 () Bool)

(assert (=> b!10755 (=> (not res!8930) (not e!5773))))

(declare-fun lt!5141 () (_ BitVec 32))

(assert (=> b!10755 (= res!8930 (and (bvsle #b00000000000000000000000000011000 lt!5141) (bvsle lt!5141 #b00000000000000000000001111110000) (= (bvsrem lt!5141 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5139 () (_ BitVec 32))

(assert (=> b!10755 (= lt!5141 (ite (bvslt lt!5139 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5139))))

(assert (=> b!10755 (= lt!5139 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5137 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10756 () Bool)

(declare-fun lt!5138 () (_ FloatingPoint 11 53))

(assert (=> b!10756 (= e!5773 (fp.isNaN (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven lt!5138 (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN lt!5138) #b00000000000000000000000000000000 (ite (fp.gt lt!5138 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!5138 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!5138)))))) #b00000000000000000000000000000000)) (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10756 (= lt!5138 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5140 (bvshl lt!5141 #b00000000000000000000000000010100))))))

(assert (= (and start!2005 res!8931) b!10754))

(assert (= (and b!10754 res!8929) b!10755))

(assert (= (and b!10755 res!8930) b!10756))

(declare-fun m!18623 () Bool)

(assert (=> b!10754 m!18623))

(declare-fun m!18625 () Bool)

(assert (=> b!10756 m!18625))

(declare-fun m!18627 () Bool)

(assert (=> b!10756 m!18627))

(declare-fun m!18629 () Bool)

(assert (=> b!10756 m!18629))

(declare-fun m!18631 () Bool)

(assert (=> b!10756 m!18631))

(declare-fun m!18633 () Bool)

(assert (=> b!10756 m!18633))

(assert (=> b!10756 m!18625))

(assert (=> b!10756 m!18633))

(push 1)

(assert (not b!10754))

(assert (not b!10756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6307 () Bool)

(declare-fun c!1121 () Bool)

(assert (=> d!6307 (= c!1121 (fp.isNaN x!143))))

(declare-fun e!5776 () (_ BitVec 64))

(assert (=> d!6307 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5776 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10761 () Bool)

(assert (=> b!10761 (= e!5776 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10762 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10762 (= e!5776 (choose!3 x!143 x!143 false))))

(assert (= (and d!6307 c!1121) b!10761))

(assert (= (and d!6307 (not c!1121)) b!10762))

(declare-fun m!18635 () Bool)

(assert (=> b!10762 m!18635))

(assert (=> b!10754 d!6307))

(declare-fun d!6309 () Bool)

(declare-fun c!1124 () Bool)

(assert (=> d!6309 (= c!1124 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5779 () (_ BitVec 64))

(assert (=> d!6309 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5140 (bvshl lt!5141 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5779 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5140 (bvshl lt!5141 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10767 () Bool)

(assert (=> b!10767 (= e!5779 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10768 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10768 (= e!5779 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5140 (bvshl lt!5141 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6309 c!1124) b!10767))

(assert (= (and d!6309 (not c!1124)) b!10768))

(assert (=> b!10768 m!18625))

(assert (=> b!10768 m!18625))

(declare-fun m!18637 () Bool)

(assert (=> b!10768 m!18637))

(assert (=> b!10756 d!6309))

(declare-fun d!6311 () Bool)

(declare-fun c!1127 () Bool)

(assert (=> d!6311 (= c!1127 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5782 () (_ BitVec 64))

(assert (=> d!6311 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5782 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10773 () Bool)

(assert (=> b!10773 (= e!5782 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10774 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10774 (= e!5782 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6311 c!1127) b!10773))

(assert (= (and d!6311 (not c!1127)) b!10774))

(assert (=> b!10774 m!18633))

(declare-fun m!18639 () Bool)

(assert (=> b!10774 m!18639))

(assert (=> b!10756 d!6311))

(declare-fun d!6313 () Bool)

(declare-fun c!1130 () Bool)

(assert (=> d!6313 (= c!1130 (fp.isNaN x!143))))

(declare-fun e!5785 () (_ BitVec 64))

(assert (=> d!6313 (= (__LO!0 x!143) ((_ extract 31 0) e!5785))))

(declare-fun b!10779 () Bool)

(assert (=> b!10779 (= e!5785 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10780 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10780 (= e!5785 (choose!1 x!143 x!143 false))))

(assert (= (and d!6313 c!1130) b!10779))

(assert (= (and d!6313 (not c!1130)) b!10780))

(declare-fun m!18641 () Bool)

(assert (=> b!10780 m!18641))

(assert (=> b!10756 d!6313))

(push 1)

(assert (not b!10762))

(assert (not b!10780))

(assert (not b!10774))

(assert (not b!10768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

