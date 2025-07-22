; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2139 () Bool)

(assert start!2139)

(declare-fun res!9101 () Bool)

(declare-fun e!6087 () Bool)

(assert (=> start!2139 (=> (not res!9101) (not e!6087))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2139 (= res!9101 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2139 e!6087))

(assert (=> start!2139 true))

(declare-fun b!11213 () Bool)

(declare-fun e!6086 () Bool)

(assert (=> b!11213 (= e!6087 e!6086)))

(declare-fun res!9102 () Bool)

(assert (=> b!11213 (=> (not res!9102) (not e!6086))))

(declare-fun lt!5504 () (_ BitVec 32))

(assert (=> b!11213 (= res!9102 (and (bvsle #b11111111111111111111111111101001 lt!5504) (bvsle lt!5504 #b00000000000000000000001111101000)))))

(declare-fun lt!5502 () (_ BitVec 32))

(assert (=> b!11213 (= lt!5504 (bvsub (bvashr lt!5502 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11213 (= lt!5502 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11214 () Bool)

(declare-fun e!6088 () Bool)

(assert (=> b!11214 (= e!6086 e!6088)))

(declare-fun res!9100 () Bool)

(assert (=> b!11214 (=> (not res!9100) (not e!6088))))

(declare-fun lt!5501 () (_ BitVec 32))

(assert (=> b!11214 (= res!9100 (and (bvsle #b00000000000000000000000000011000 lt!5501) (bvsle lt!5501 #b00000000000000000000001111110000) (= (bvsrem lt!5501 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5503 () (_ BitVec 32))

(assert (=> b!11214 (= lt!5501 (ite (bvslt lt!5503 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5503))))

(assert (=> b!11214 (= lt!5503 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5504 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11215 () Bool)

(assert (=> b!11215 (= e!6088 false)))

(declare-fun lt!5500 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11215 (= lt!5500 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5502 (bvshl lt!5501 #b00000000000000000000000000010100))))))

(assert (= (and start!2139 res!9101) b!11213))

(assert (= (and b!11213 res!9102) b!11214))

(assert (= (and b!11214 res!9100) b!11215))

(declare-fun m!18991 () Bool)

(assert (=> b!11213 m!18991))

(declare-fun m!18993 () Bool)

(assert (=> b!11215 m!18993))

(assert (=> b!11215 m!18993))

(declare-fun m!18995 () Bool)

(assert (=> b!11215 m!18995))

(assert (=> b!11215 m!18995))

(declare-fun m!18997 () Bool)

(assert (=> b!11215 m!18997))

(push 1)

(assert (not b!11215))

(assert (not b!11213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

