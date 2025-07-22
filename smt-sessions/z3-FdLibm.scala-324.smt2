; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1853 () Bool)

(assert start!1853)

(declare-fun res!7848 () Bool)

(declare-fun e!5457 () Bool)

(assert (=> start!1853 (=> (not res!7848) (not e!5457))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1853 (= res!7848 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1853 e!5457))

(assert (=> start!1853 true))

(declare-fun b!9546 () Bool)

(declare-fun e!5458 () Bool)

(assert (=> b!9546 (= e!5457 e!5458)))

(declare-fun res!7847 () Bool)

(assert (=> b!9546 (=> (not res!7847) (not e!5458))))

(declare-fun lt!4833 () (_ BitVec 32))

(assert (=> b!9546 (= res!7847 (and (bvsle #b11111111111111111111111111101001 lt!4833) (bvsle lt!4833 #b00000000000000000000001111101000)))))

(declare-fun lt!4832 () (_ BitVec 32))

(assert (=> b!9546 (= lt!4833 (bvsub (bvashr lt!4832 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9546 (= lt!4832 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9547 () Bool)

(declare-fun e!5456 () Bool)

(assert (=> b!9547 (= e!5458 e!5456)))

(declare-fun res!7849 () Bool)

(assert (=> b!9547 (=> (not res!7849) (not e!5456))))

(declare-fun lt!4835 () (_ BitVec 32))

(assert (=> b!9547 (= res!7849 (and (bvsle #b00000000000000000000000000011000 lt!4835) (bvsle lt!4835 #b00000000000000000000001111110000) (= (bvsrem lt!4835 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4834 () (_ BitVec 32))

(assert (=> b!9547 (= lt!4835 (ite (bvslt lt!4834 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4834))))

(assert (=> b!9547 (= lt!4834 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4833 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9548 () Bool)

(assert (=> b!9548 (= e!5456 false)))

(declare-fun lt!4836 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9548 (= lt!4836 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4832 (bvshl lt!4835 #b00000000000000000000000000010100))))))

(assert (= (and start!1853 res!7848) b!9546))

(assert (= (and b!9546 res!7847) b!9547))

(assert (= (and b!9547 res!7849) b!9548))

(declare-fun m!13995 () Bool)

(assert (=> b!9546 m!13995))

(declare-fun m!13997 () Bool)

(assert (=> b!9548 m!13997))

(assert (=> b!9548 m!13997))

(declare-fun m!13999 () Bool)

(assert (=> b!9548 m!13999))

(assert (=> b!9548 m!13999))

(declare-fun m!14001 () Bool)

(assert (=> b!9548 m!14001))

(check-sat (not b!9546) (not b!9548))
(check-sat)
