; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2003 () Bool)

(assert start!2003)

(declare-fun res!8920 () Bool)

(declare-fun e!5762 () Bool)

(assert (=> start!2003 (=> (not res!8920) (not e!5762))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2003 (= res!8920 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2003 e!5762))

(assert (=> start!2003 true))

(declare-fun b!10745 () Bool)

(declare-fun e!5764 () Bool)

(assert (=> b!10745 (= e!5762 e!5764)))

(declare-fun res!8921 () Bool)

(assert (=> b!10745 (=> (not res!8921) (not e!5764))))

(declare-fun lt!5123 () (_ BitVec 32))

(assert (=> b!10745 (= res!8921 (and (bvsle #b11111111111111111111111111101001 lt!5123) (bvsle lt!5123 #b00000000000000000000001111101000)))))

(declare-fun lt!5126 () (_ BitVec 32))

(assert (=> b!10745 (= lt!5123 (bvsub (bvashr lt!5126 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10745 (= lt!5126 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10746 () Bool)

(declare-fun e!5763 () Bool)

(assert (=> b!10746 (= e!5764 e!5763)))

(declare-fun res!8922 () Bool)

(assert (=> b!10746 (=> (not res!8922) (not e!5763))))

(declare-fun lt!5124 () (_ BitVec 32))

(assert (=> b!10746 (= res!8922 (and (bvsle #b00000000000000000000000000011000 lt!5124) (bvsle lt!5124 #b00000000000000000000001111110000) (= (bvsrem lt!5124 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5125 () (_ BitVec 32))

(assert (=> b!10746 (= lt!5124 (ite (bvslt lt!5125 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5125))))

(assert (=> b!10746 (= lt!5125 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5123 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10747 () Bool)

(assert (=> b!10747 (= e!5763 false)))

(declare-fun lt!5122 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10747 (= lt!5122 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5126 (bvshl lt!5124 #b00000000000000000000000000010100))))))

(assert (= (and start!2003 res!8920) b!10745))

(assert (= (and b!10745 res!8921) b!10746))

(assert (= (and b!10746 res!8922) b!10747))

(declare-fun m!18615 () Bool)

(assert (=> b!10745 m!18615))

(declare-fun m!18617 () Bool)

(assert (=> b!10747 m!18617))

(assert (=> b!10747 m!18617))

(declare-fun m!18619 () Bool)

(assert (=> b!10747 m!18619))

(assert (=> b!10747 m!18619))

(declare-fun m!18621 () Bool)

(assert (=> b!10747 m!18621))

(push 1)

(assert (not b!10745))

(assert (not b!10747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

