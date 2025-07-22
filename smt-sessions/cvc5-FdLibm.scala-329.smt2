; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2037 () Bool)

(assert start!2037)

(declare-fun res!8967 () Bool)

(declare-fun e!5845 () Bool)

(assert (=> start!2037 (=> (not res!8967) (not e!5845))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2037 (= res!8967 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2037 e!5845))

(assert (=> start!2037 true))

(declare-fun b!10862 () Bool)

(declare-fun e!5843 () Bool)

(assert (=> b!10862 (= e!5845 e!5843)))

(declare-fun res!8965 () Bool)

(assert (=> b!10862 (=> (not res!8965) (not e!5843))))

(declare-fun lt!5205 () (_ BitVec 32))

(assert (=> b!10862 (= res!8965 (and (bvsle #b11111111111111111111111111101001 lt!5205) (bvsle lt!5205 #b00000000000000000000001111101000)))))

(declare-fun lt!5206 () (_ BitVec 32))

(assert (=> b!10862 (= lt!5205 (bvsub (bvashr lt!5206 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10862 (= lt!5206 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10863 () Bool)

(declare-fun e!5844 () Bool)

(assert (=> b!10863 (= e!5843 e!5844)))

(declare-fun res!8966 () Bool)

(assert (=> b!10863 (=> (not res!8966) (not e!5844))))

(declare-fun lt!5204 () (_ BitVec 32))

(assert (=> b!10863 (= res!8966 (and (bvsle #b00000000000000000000000000011000 lt!5204) (bvsle lt!5204 #b00000000000000000000001111110000) (= (bvsrem lt!5204 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5207 () (_ BitVec 32))

(assert (=> b!10863 (= lt!5204 (ite (bvslt lt!5207 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5207))))

(assert (=> b!10863 (= lt!5207 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5205 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10864 () Bool)

(assert (=> b!10864 (= e!5844 false)))

(declare-fun lt!5203 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10864 (= lt!5203 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5206 (bvshl lt!5204 #b00000000000000000000000000010100))))))

(assert (= (and start!2037 res!8967) b!10862))

(assert (= (and b!10862 res!8965) b!10863))

(assert (= (and b!10863 res!8966) b!10864))

(declare-fun m!18691 () Bool)

(assert (=> b!10862 m!18691))

(declare-fun m!18693 () Bool)

(assert (=> b!10864 m!18693))

(assert (=> b!10864 m!18693))

(declare-fun m!18695 () Bool)

(assert (=> b!10864 m!18695))

(assert (=> b!10864 m!18695))

(declare-fun m!18697 () Bool)

(assert (=> b!10864 m!18697))

(push 1)

(assert (not b!10864))

(assert (not b!10862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

