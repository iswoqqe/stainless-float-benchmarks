; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1887 () Bool)

(assert start!1887)

(declare-fun res!7892 () Bool)

(declare-fun e!5539 () Bool)

(assert (=> start!1887 (=> (not res!7892) (not e!5539))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1887 (= res!7892 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1887 e!5539))

(assert (=> start!1887 true))

(declare-fun b!9663 () Bool)

(declare-fun e!5537 () Bool)

(assert (=> b!9663 (= e!5539 e!5537)))

(declare-fun res!7893 () Bool)

(assert (=> b!9663 (=> (not res!7893) (not e!5537))))

(declare-fun lt!4915 () (_ BitVec 32))

(assert (=> b!9663 (= res!7893 (and (bvsle #b11111111111111111111111111101001 lt!4915) (bvsle lt!4915 #b00000000000000000000001111101000)))))

(declare-fun lt!4914 () (_ BitVec 32))

(assert (=> b!9663 (= lt!4915 (bvsub (bvashr lt!4914 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9663 (= lt!4914 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9664 () Bool)

(declare-fun e!5538 () Bool)

(assert (=> b!9664 (= e!5537 e!5538)))

(declare-fun res!7894 () Bool)

(assert (=> b!9664 (=> (not res!7894) (not e!5538))))

(declare-fun lt!4917 () (_ BitVec 32))

(assert (=> b!9664 (= res!7894 (and (bvsle #b00000000000000000000000000011000 lt!4917) (bvsle lt!4917 #b00000000000000000000001111110000) (= (bvsrem lt!4917 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4916 () (_ BitVec 32))

(assert (=> b!9664 (= lt!4917 (ite (bvslt lt!4916 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4916))))

(assert (=> b!9664 (= lt!4916 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4915 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9665 () Bool)

(assert (=> b!9665 (= e!5538 false)))

(declare-fun lt!4913 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9665 (= lt!4913 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4914 (bvshl lt!4917 #b00000000000000000000000000010100))))))

(assert (= (and start!1887 res!7892) b!9663))

(assert (= (and b!9663 res!7893) b!9664))

(assert (= (and b!9664 res!7894) b!9665))

(declare-fun m!14071 () Bool)

(assert (=> b!9663 m!14071))

(declare-fun m!14073 () Bool)

(assert (=> b!9665 m!14073))

(assert (=> b!9665 m!14073))

(declare-fun m!14075 () Bool)

(assert (=> b!9665 m!14075))

(assert (=> b!9665 m!14075))

(declare-fun m!14077 () Bool)

(assert (=> b!9665 m!14077))

(check-sat (not b!9665) (not b!9663))
(check-sat)
