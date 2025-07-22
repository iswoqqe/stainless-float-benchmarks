; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1815 () Bool)

(assert start!1815)

(declare-fun res!7786 () Bool)

(declare-fun e!5359 () Bool)

(assert (=> start!1815 (=> (not res!7786) (not e!5359))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1815 (= res!7786 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1815 e!5359))

(assert (=> start!1815 true))

(declare-fun b!9413 () Bool)

(declare-fun lt!4734 () (_ BitVec 32))

(assert (=> b!9413 (= e!5359 (and (bvsle #b11111111111111111111111111101001 lt!4734) (bvsle lt!4734 #b00000000000000000000001111101000) (let ((tmp!139 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4734 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))) (let ((t!92 (ite (bvslt tmp!139 #b00000000000000000000000000011000) #b00000000000000000000000000011000 tmp!139))) false))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9413 (= lt!4734 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1815 res!7786) b!9413))

(declare-fun m!13925 () Bool)

(assert (=> b!9413 m!13925))

(check-sat (not b!9413))
(check-sat)
