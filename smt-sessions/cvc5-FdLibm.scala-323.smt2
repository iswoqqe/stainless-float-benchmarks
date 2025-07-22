; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2001 () Bool)

(assert start!2001)

(declare-fun res!8911 () Bool)

(declare-fun e!5754 () Bool)

(assert (=> start!2001 (=> (not res!8911) (not e!5754))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2001 (= res!8911 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2001 e!5754))

(assert (=> start!2001 true))

(declare-fun b!10736 () Bool)

(declare-fun e!5753 () Bool)

(assert (=> b!10736 (= e!5754 e!5753)))

(declare-fun res!8912 () Bool)

(assert (=> b!10736 (=> (not res!8912) (not e!5753))))

(declare-fun lt!5108 () (_ BitVec 32))

(assert (=> b!10736 (= res!8912 (and (bvsle #b11111111111111111111111111101001 lt!5108) (bvsle lt!5108 #b00000000000000000000001111101000)))))

(declare-fun lt!5110 () (_ BitVec 32))

(assert (=> b!10736 (= lt!5108 (bvsub (bvashr lt!5110 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10736 (= lt!5110 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10737 () Bool)

(declare-fun e!5755 () Bool)

(assert (=> b!10737 (= e!5753 e!5755)))

(declare-fun res!8913 () Bool)

(assert (=> b!10737 (=> (not res!8913) (not e!5755))))

(declare-fun lt!5109 () (_ BitVec 32))

(assert (=> b!10737 (= res!8913 (and (bvsle #b00000000000000000000000000011000 lt!5109) (bvsle lt!5109 #b00000000000000000000001111110000) (= (bvsrem lt!5109 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5111 () (_ BitVec 32))

(assert (=> b!10737 (= lt!5109 (ite (bvslt lt!5111 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5111))))

(assert (=> b!10737 (= lt!5111 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5108 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10738 () Bool)

(assert (=> b!10738 (= e!5755 false)))

(declare-fun lt!5107 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10738 (= lt!5107 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5110 (bvshl lt!5109 #b00000000000000000000000000010100))))))

(assert (= (and start!2001 res!8911) b!10736))

(assert (= (and b!10736 res!8912) b!10737))

(assert (= (and b!10737 res!8913) b!10738))

(declare-fun m!18607 () Bool)

(assert (=> b!10736 m!18607))

(declare-fun m!18609 () Bool)

(assert (=> b!10738 m!18609))

(assert (=> b!10738 m!18609))

(declare-fun m!18611 () Bool)

(assert (=> b!10738 m!18611))

(assert (=> b!10738 m!18611))

(declare-fun m!18613 () Bool)

(assert (=> b!10738 m!18613))

(push 1)

(assert (not b!10736))

(assert (not b!10738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

