; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1921 () Bool)

(assert start!1921)

(declare-fun res!7939 () Bool)

(declare-fun e!5619 () Bool)

(assert (=> start!1921 (=> (not res!7939) (not e!5619))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1921 (= res!7939 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1921 e!5619))

(assert (=> start!1921 true))

(declare-fun b!9780 () Bool)

(declare-fun e!5618 () Bool)

(assert (=> b!9780 (= e!5619 e!5618)))

(declare-fun res!7938 () Bool)

(assert (=> b!9780 (=> (not res!7938) (not e!5618))))

(declare-fun lt!5005 () (_ BitVec 32))

(assert (=> b!9780 (= res!7938 (and (bvsle #b11111111111111111111111111101001 lt!5005) (bvsle lt!5005 #b00000000000000000000001111101000)))))

(declare-fun lt!5006 () (_ BitVec 32))

(assert (=> b!9780 (= lt!5005 (bvsub (bvashr lt!5006 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9780 (= lt!5006 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9781 () Bool)

(declare-fun e!5620 () Bool)

(assert (=> b!9781 (= e!5618 e!5620)))

(declare-fun res!7937 () Bool)

(assert (=> b!9781 (=> (not res!7937) (not e!5620))))

(declare-fun lt!5007 () (_ BitVec 32))

(assert (=> b!9781 (= res!7937 (and (bvsle #b00000000000000000000000000011000 lt!5007) (bvsle lt!5007 #b00000000000000000000001111110000) (= (bvsrem lt!5007 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5004 () (_ BitVec 32))

(assert (=> b!9781 (= lt!5007 (ite (bvslt lt!5004 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5004))))

(assert (=> b!9781 (= lt!5004 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5005 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9782 () Bool)

(assert (=> b!9782 (= e!5620 false)))

(declare-fun lt!5003 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9782 (= lt!5003 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5006 (bvshl lt!5007 #b00000000000000000000000000010100))))))

(assert (= (and start!1921 res!7939) b!9780))

(assert (= (and b!9780 res!7938) b!9781))

(assert (= (and b!9781 res!7937) b!9782))

(declare-fun m!14159 () Bool)

(assert (=> b!9780 m!14159))

(declare-fun m!14161 () Bool)

(assert (=> b!9782 m!14161))

(assert (=> b!9782 m!14161))

(declare-fun m!14163 () Bool)

(assert (=> b!9782 m!14163))

(assert (=> b!9782 m!14163))

(declare-fun m!14165 () Bool)

(assert (=> b!9782 m!14165))

(check-sat (not b!9782) (not b!9780))
(check-sat)
