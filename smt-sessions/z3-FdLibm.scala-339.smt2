; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1955 () Bool)

(assert start!1955)

(declare-fun res!7982 () Bool)

(declare-fun e!5700 () Bool)

(assert (=> start!1955 (=> (not res!7982) (not e!5700))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1955 (= res!7982 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1955 e!5700))

(assert (=> start!1955 true))

(declare-fun b!9897 () Bool)

(declare-fun e!5699 () Bool)

(assert (=> b!9897 (= e!5700 e!5699)))

(declare-fun res!7983 () Bool)

(assert (=> b!9897 (=> (not res!7983) (not e!5699))))

(declare-fun lt!5104 () (_ BitVec 32))

(assert (=> b!9897 (= res!7983 (and (bvsle #b11111111111111111111111111101001 lt!5104) (bvsle lt!5104 #b00000000000000000000001111101000)))))

(declare-fun lt!5102 () (_ BitVec 32))

(assert (=> b!9897 (= lt!5104 (bvsub (bvashr lt!5102 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9897 (= lt!5102 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9898 () Bool)

(declare-fun e!5701 () Bool)

(assert (=> b!9898 (= e!5699 e!5701)))

(declare-fun res!7984 () Bool)

(assert (=> b!9898 (=> (not res!7984) (not e!5701))))

(declare-fun lt!5105 () (_ BitVec 32))

(assert (=> b!9898 (= res!7984 (and (bvsle #b00000000000000000000000000011000 lt!5105) (bvsle lt!5105 #b00000000000000000000001111110000) (= (bvsrem lt!5105 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5103 () (_ BitVec 32))

(assert (=> b!9898 (= lt!5105 (ite (bvslt lt!5103 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5103))))

(assert (=> b!9898 (= lt!5103 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5104 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9899 () Bool)

(assert (=> b!9899 (= e!5701 false)))

(declare-fun lt!5106 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9899 (= lt!5106 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5102 (bvshl lt!5105 #b00000000000000000000000000010100))))))

(assert (= (and start!1955 res!7982) b!9897))

(assert (= (and b!9897 res!7983) b!9898))

(assert (= (and b!9898 res!7984) b!9899))

(declare-fun m!14259 () Bool)

(assert (=> b!9897 m!14259))

(declare-fun m!14261 () Bool)

(assert (=> b!9899 m!14261))

(assert (=> b!9899 m!14261))

(declare-fun m!14263 () Bool)

(assert (=> b!9899 m!14263))

(assert (=> b!9899 m!14263))

(declare-fun m!14265 () Bool)

(assert (=> b!9899 m!14265))

(check-sat (not b!9897) (not b!9899))
(check-sat)
