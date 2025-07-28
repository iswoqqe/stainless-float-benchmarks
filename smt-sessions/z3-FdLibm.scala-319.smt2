; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1845 () Bool)

(assert start!1845)

(declare-fun res!8142 () Bool)

(declare-fun e!5447 () Bool)

(assert (=> start!1845 (=> (not res!8142) (not e!5447))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1845 (= res!8142 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1845 e!5447))

(assert (=> start!1845 true))

(declare-fun b!9797 () Bool)

(declare-fun e!5446 () Bool)

(assert (=> b!9797 (= e!5447 e!5446)))

(declare-fun res!8141 () Bool)

(assert (=> b!9797 (=> (not res!8141) (not e!5446))))

(declare-fun lt!4833 () (_ BitVec 32))

(assert (=> b!9797 (= res!8141 (and (bvsle #b11111111111111111111111111101001 lt!4833) (bvsle lt!4833 #b00000000000000000000001111101000)))))

(declare-fun lt!4834 () (_ BitVec 32))

(assert (=> b!9797 (= lt!4833 (bvsub (bvashr lt!4834 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9797 (= lt!4834 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9798 () Bool)

(declare-fun e!5448 () Bool)

(assert (=> b!9798 (= e!5446 e!5448)))

(declare-fun res!8140 () Bool)

(assert (=> b!9798 (=> (not res!8140) (not e!5448))))

(declare-fun lt!4835 () (_ BitVec 32))

(assert (=> b!9798 (= res!8140 (and (bvsle #b00000000000000000000000000011000 lt!4835) (bvsle lt!4835 #b00000000000000000000001111110000) (= (bvsrem lt!4835 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4832 () (_ BitVec 32))

(assert (=> b!9798 (= lt!4835 (ite (bvslt lt!4832 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4832))))

(assert (=> b!9798 (= lt!4832 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4833 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9799 () Bool)

(declare-fun lt!4831 () (_ BitVec 32))

(assert (=> b!9799 (= e!5448 (and (not (= (bvand lt!4834 #b10000000000000000000000000000000) (bvand lt!4831 #b10000000000000000000000000000000))) (not (= (bvand lt!4834 #b10000000000000000000000000000000) (bvand (bvsub lt!4834 lt!4831) #b10000000000000000000000000000000)))))))

(assert (=> b!9799 (= lt!4831 (bvshl lt!4835 #b00000000000000000000000000010100))))

(declare-fun lt!4836 () (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9799 (= lt!4836 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)))))

(assert (= (and start!1845 res!8142) b!9797))

(assert (= (and b!9797 res!8141) b!9798))

(assert (= (and b!9798 res!8140) b!9799))

(declare-fun m!15757 () Bool)

(assert (=> b!9797 m!15757))

(declare-fun m!15759 () Bool)

(assert (=> b!9799 m!15759))

(assert (=> b!9799 m!15759))

(declare-fun m!15761 () Bool)

(assert (=> b!9799 m!15761))

(check-sat (not b!9797) (not b!9799))
(check-sat)
