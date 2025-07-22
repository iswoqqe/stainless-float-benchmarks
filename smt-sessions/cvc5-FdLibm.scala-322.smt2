; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1991 () Bool)

(assert start!1991)

(declare-fun res!8904 () Bool)

(declare-fun e!5733 () Bool)

(assert (=> start!1991 (=> (not res!8904) (not e!5733))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1991 (= res!8904 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1991 e!5733))

(assert (=> start!1991 true))

(declare-fun b!10703 () Bool)

(declare-fun e!5734 () Bool)

(assert (=> b!10703 (= e!5733 e!5734)))

(declare-fun res!8902 () Bool)

(assert (=> b!10703 (=> (not res!8902) (not e!5734))))

(declare-fun lt!5095 () (_ BitVec 32))

(assert (=> b!10703 (= res!8902 (and (bvsle #b11111111111111111111111111101001 lt!5095) (bvsle lt!5095 #b00000000000000000000001111101000)))))

(declare-fun lt!5093 () (_ BitVec 32))

(assert (=> b!10703 (= lt!5095 (bvsub (bvashr lt!5093 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10703 (= lt!5093 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10704 () Bool)

(declare-fun e!5732 () Bool)

(assert (=> b!10704 (= e!5734 e!5732)))

(declare-fun res!8903 () Bool)

(assert (=> b!10704 (=> (not res!8903) (not e!5732))))

(declare-fun lt!5094 () (_ BitVec 32))

(assert (=> b!10704 (= res!8903 (and (bvsle #b00000000000000000000000000011000 lt!5094) (bvsle lt!5094 #b00000000000000000000001111110000) (= (bvsrem lt!5094 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5092 () (_ BitVec 32))

(assert (=> b!10704 (= lt!5094 (ite (bvslt lt!5092 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5092))))

(assert (=> b!10704 (= lt!5092 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5095 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10705 () Bool)

(declare-fun lt!5096 () (_ FloatingPoint 11 53))

(assert (=> b!10705 (= e!5732 (and (not (fp.isNaN lt!5096)) (fp.gt lt!5096 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!5096 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10705 (= lt!5096 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5093 (bvshl lt!5094 #b00000000000000000000000000010100))))))

(assert (= (and start!1991 res!8904) b!10703))

(assert (= (and b!10703 res!8902) b!10704))

(assert (= (and b!10704 res!8903) b!10705))

(declare-fun m!18591 () Bool)

(assert (=> b!10703 m!18591))

(declare-fun m!18593 () Bool)

(assert (=> b!10705 m!18593))

(assert (=> b!10705 m!18593))

(declare-fun m!18595 () Bool)

(assert (=> b!10705 m!18595))

(assert (=> b!10705 m!18595))

(declare-fun m!18597 () Bool)

(assert (=> b!10705 m!18597))

(push 1)

(assert (not b!10703))

(assert (not b!10705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6296 () Bool)

(declare-fun c!1109 () Bool)

(assert (=> d!6296 (= c!1109 (fp.isNaN x!143))))

(declare-fun e!5737 () (_ BitVec 64))

(assert (=> d!6296 (= (__HI!0 x!143) ((_ extract 31 0) (bvashr e!5737 #b0000000000000000000000000000000000000000000000000000000000100000)))))

(declare-fun b!10710 () Bool)

(assert (=> b!10710 (= e!5737 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10711 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10711 (= e!5737 (choose!3 x!143 x!143 false))))

(assert (= (and d!6296 c!1109) b!10710))

(assert (= (and d!6296 (not c!1109)) b!10711))

(declare-fun m!18599 () Bool)

(assert (=> b!10711 m!18599))

(assert (=> b!10703 d!6296))

(declare-fun d!6298 () Bool)

(declare-fun c!1112 () Bool)

(assert (=> d!6298 (= c!1112 (fp.isNaN (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143))))))

(declare-fun e!5740 () (_ BitVec 64))

(assert (=> d!6298 (= (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5093 (bvshl lt!5094 #b00000000000000000000000000010100))) ((_ to_fp 11 53) (bvor (bvand e!5740 #b0000000000000000000000000000000011111111111111111111111111111111) (bvshl ((_ sign_extend 32) (bvsub lt!5093 (bvshl lt!5094 #b00000000000000000000000000010100))) #b0000000000000000000000000000000000000000000000000000000000100000))))))

(declare-fun b!10716 () Bool)

(assert (=> b!10716 (= e!5740 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10717 () Bool)

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10717 (= e!5740 (choose!0 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5093 (bvshl lt!5094 #b00000000000000000000000000010100)) (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) false))))

(assert (= (and d!6298 c!1112) b!10716))

(assert (= (and d!6298 (not c!1112)) b!10717))

(assert (=> b!10717 m!18595))

(assert (=> b!10717 m!18595))

(declare-fun m!18601 () Bool)

(assert (=> b!10717 m!18601))

(assert (=> b!10705 d!6298))

(declare-fun d!6300 () Bool)

(declare-fun c!1115 () Bool)

(assert (=> d!6300 (= c!1115 (fp.isNaN (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun e!5743 () (_ BitVec 64))

(assert (=> d!6300 (= (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) ((_ to_fp 11 53) (bvor (bvand e!5743 #b1111111111111111111111111111111100000000000000000000000000000000) (bvand ((_ sign_extend 32) (__LO!0 x!143)) #b0000000000000000000000000000000011111111111111111111111111111111))))))

(declare-fun b!10722 () Bool)

(assert (=> b!10722 (= e!5743 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10723 () Bool)

(declare-fun choose!2 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10723 (= e!5743 (choose!2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) false))))

(assert (= (and d!6300 c!1115) b!10722))

(assert (= (and d!6300 (not c!1115)) b!10723))

(assert (=> b!10723 m!18593))

(declare-fun m!18603 () Bool)

(assert (=> b!10723 m!18603))

(assert (=> b!10705 d!6300))

(declare-fun d!6302 () Bool)

(declare-fun c!1118 () Bool)

(assert (=> d!6302 (= c!1118 (fp.isNaN x!143))))

(declare-fun e!5746 () (_ BitVec 64))

(assert (=> d!6302 (= (__LO!0 x!143) ((_ extract 31 0) e!5746))))

(declare-fun b!10728 () Bool)

(assert (=> b!10728 (= e!5746 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10729 () Bool)

(declare-fun choose!1 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10729 (= e!5746 (choose!1 x!143 x!143 false))))

(assert (= (and d!6302 c!1118) b!10728))

(assert (= (and d!6302 (not c!1118)) b!10729))

(declare-fun m!18605 () Bool)

(assert (=> b!10729 m!18605))

(assert (=> b!10705 d!6302))

(push 1)

(assert (not b!10717))

(assert (not b!10711))

(assert (not b!10729))

(assert (not b!10723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

