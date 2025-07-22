; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2035 () Bool)

(assert start!2035)

(declare-fun res!8958 () Bool)

(declare-fun e!5836 () Bool)

(assert (=> start!2035 (=> (not res!8958) (not e!5836))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2035 (= res!8958 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2035 e!5836))

(assert (=> start!2035 true))

(declare-fun b!10853 () Bool)

(declare-fun e!5835 () Bool)

(assert (=> b!10853 (= e!5836 e!5835)))

(declare-fun res!8957 () Bool)

(assert (=> b!10853 (=> (not res!8957) (not e!5835))))

(declare-fun lt!5188 () (_ BitVec 32))

(assert (=> b!10853 (= res!8957 (and (bvsle #b11111111111111111111111111101001 lt!5188) (bvsle lt!5188 #b00000000000000000000001111101000)))))

(declare-fun lt!5192 () (_ BitVec 32))

(assert (=> b!10853 (= lt!5188 (bvsub (bvashr lt!5192 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10853 (= lt!5192 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10854 () Bool)

(declare-fun e!5834 () Bool)

(assert (=> b!10854 (= e!5835 e!5834)))

(declare-fun res!8956 () Bool)

(assert (=> b!10854 (=> (not res!8956) (not e!5834))))

(declare-fun lt!5189 () (_ BitVec 32))

(assert (=> b!10854 (= res!8956 (and (bvsle #b00000000000000000000000000011000 lt!5189) (bvsle lt!5189 #b00000000000000000000001111110000) (= (bvsrem lt!5189 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5190 () (_ BitVec 32))

(assert (=> b!10854 (= lt!5189 (ite (bvslt lt!5190 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5190))))

(assert (=> b!10854 (= lt!5190 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5188 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10855 () Bool)

(assert (=> b!10855 (= e!5834 false)))

(declare-fun lt!5191 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10855 (= lt!5191 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5192 (bvshl lt!5189 #b00000000000000000000000000010100))))))

(assert (= (and start!2035 res!8958) b!10853))

(assert (= (and b!10853 res!8957) b!10854))

(assert (= (and b!10854 res!8956) b!10855))

(declare-fun m!18683 () Bool)

(assert (=> b!10853 m!18683))

(declare-fun m!18685 () Bool)

(assert (=> b!10855 m!18685))

(assert (=> b!10855 m!18685))

(declare-fun m!18687 () Bool)

(assert (=> b!10855 m!18687))

(assert (=> b!10855 m!18687))

(declare-fun m!18689 () Bool)

(assert (=> b!10855 m!18689))

(push 1)

(assert (not b!10853))

(assert (not b!10855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

