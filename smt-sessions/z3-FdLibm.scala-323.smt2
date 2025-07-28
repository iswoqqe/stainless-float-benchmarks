; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1877 () Bool)

(assert start!1877)

(declare-fun res!8177 () Bool)

(declare-fun e!5518 () Bool)

(assert (=> start!1877 (=> (not res!8177) (not e!5518))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1877 (= res!8177 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1877 e!5518))

(assert (=> start!1877 true))

(declare-fun b!9905 () Bool)

(declare-fun e!5519 () Bool)

(assert (=> b!9905 (= e!5518 e!5519)))

(declare-fun res!8176 () Bool)

(assert (=> b!9905 (=> (not res!8176) (not e!5519))))

(declare-fun lt!4892 () (_ BitVec 32))

(assert (=> b!9905 (= res!8176 (and (bvsle #b11111111111111111111111111101001 lt!4892) (bvsle lt!4892 #b00000000000000000000001111101000)))))

(declare-fun lt!4890 () (_ BitVec 32))

(assert (=> b!9905 (= lt!4892 (bvsub (bvashr lt!4890 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9905 (= lt!4890 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9906 () Bool)

(declare-fun e!5520 () Bool)

(assert (=> b!9906 (= e!5519 e!5520)))

(declare-fun res!8178 () Bool)

(assert (=> b!9906 (=> (not res!8178) (not e!5520))))

(declare-fun lt!4893 () (_ BitVec 32))

(assert (=> b!9906 (= res!8178 (and (bvsle #b00000000000000000000000000011000 lt!4893) (bvsle lt!4893 #b00000000000000000000001111110000) (= (bvsrem lt!4893 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4889 () (_ BitVec 32))

(assert (=> b!9906 (= lt!4893 (ite (bvslt lt!4889 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4889))))

(assert (=> b!9906 (= lt!4889 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4892 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9907 () Bool)

(assert (=> b!9907 (= e!5520 false)))

(declare-fun lt!4891 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9907 (= lt!4891 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4890 (bvshl lt!4893 #b00000000000000000000000000010100))))))

(assert (= (and start!1877 res!8177) b!9905))

(assert (= (and b!9905 res!8176) b!9906))

(assert (= (and b!9906 res!8178) b!9907))

(declare-fun m!15811 () Bool)

(assert (=> b!9905 m!15811))

(declare-fun m!15813 () Bool)

(assert (=> b!9907 m!15813))

(assert (=> b!9907 m!15813))

(declare-fun m!15815 () Bool)

(assert (=> b!9907 m!15815))

(assert (=> b!9907 m!15815))

(declare-fun m!15817 () Bool)

(assert (=> b!9907 m!15817))

(check-sat (not b!9907) (not b!9905))
(check-sat)
