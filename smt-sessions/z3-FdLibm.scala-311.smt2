; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1803 () Bool)

(assert start!1803)

(declare-fun res!7768 () Bool)

(declare-fun e!5341 () Bool)

(assert (=> start!1803 (=> (not res!7768) (not e!5341))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1803 (= res!7768 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1803 e!5341))

(assert (=> start!1803 true))

(declare-fun b!9395 () Bool)

(declare-fun lt!4716 () (_ BitVec 32))

(assert (=> b!9395 (= e!5341 (and (not (= (bvand lt!4716 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand lt!4716 #b10000000000000000000000000000000) (bvand (bvsub lt!4716 #b00000000000000000000010000010110) #b10000000000000000000000000000000)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9395 (= lt!4716 (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100))))

(assert (= (and start!1803 res!7768) b!9395))

(declare-fun m!13913 () Bool)

(assert (=> b!9395 m!13913))

(check-sat (not b!9395))
(check-sat)
