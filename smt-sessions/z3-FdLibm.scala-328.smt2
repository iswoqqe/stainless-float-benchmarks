; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1885 () Bool)

(assert start!1885)

(declare-fun res!7883 () Bool)

(declare-fun e!5530 () Bool)

(assert (=> start!1885 (=> (not res!7883) (not e!5530))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1885 (= res!7883 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1885 e!5530))

(assert (=> start!1885 true))

(declare-fun b!9654 () Bool)

(declare-fun e!5529 () Bool)

(assert (=> b!9654 (= e!5530 e!5529)))

(declare-fun res!7885 () Bool)

(assert (=> b!9654 (=> (not res!7885) (not e!5529))))

(declare-fun lt!4898 () (_ BitVec 32))

(assert (=> b!9654 (= res!7885 (and (bvsle #b11111111111111111111111111101001 lt!4898) (bvsle lt!4898 #b00000000000000000000001111101000)))))

(declare-fun lt!4902 () (_ BitVec 32))

(assert (=> b!9654 (= lt!4898 (bvsub (bvashr lt!4902 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9654 (= lt!4902 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9655 () Bool)

(declare-fun e!5528 () Bool)

(assert (=> b!9655 (= e!5529 e!5528)))

(declare-fun res!7884 () Bool)

(assert (=> b!9655 (=> (not res!7884) (not e!5528))))

(declare-fun lt!4900 () (_ BitVec 32))

(assert (=> b!9655 (= res!7884 (and (bvsle #b00000000000000000000000000011000 lt!4900) (bvsle lt!4900 #b00000000000000000000001111110000) (= (bvsrem lt!4900 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4899 () (_ BitVec 32))

(assert (=> b!9655 (= lt!4900 (ite (bvslt lt!4899 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4899))))

(assert (=> b!9655 (= lt!4899 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4898 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9656 () Bool)

(assert (=> b!9656 (= e!5528 false)))

(declare-fun lt!4901 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9656 (= lt!4901 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4902 (bvshl lt!4900 #b00000000000000000000000000010100))))))

(assert (= (and start!1885 res!7883) b!9654))

(assert (= (and b!9654 res!7885) b!9655))

(assert (= (and b!9655 res!7884) b!9656))

(declare-fun m!14063 () Bool)

(assert (=> b!9654 m!14063))

(declare-fun m!14065 () Bool)

(assert (=> b!9656 m!14065))

(assert (=> b!9656 m!14065))

(declare-fun m!14067 () Bool)

(assert (=> b!9656 m!14067))

(assert (=> b!9656 m!14067))

(declare-fun m!14069 () Bool)

(assert (=> b!9656 m!14069))

(check-sat (not b!9654) (not b!9656))
(check-sat)
