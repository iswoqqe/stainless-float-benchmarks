; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1913 () Bool)

(assert start!1913)

(declare-fun res!8231 () Bool)

(declare-fun e!5609 () Bool)

(assert (=> start!1913 (=> (not res!8231) (not e!5609))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1913 (= res!8231 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1913 e!5609))

(assert (=> start!1913 true))

(declare-fun b!10031 () Bool)

(declare-fun e!5610 () Bool)

(assert (=> b!10031 (= e!5609 e!5610)))

(declare-fun res!8230 () Bool)

(assert (=> b!10031 (=> (not res!8230) (not e!5610))))

(declare-fun lt!4987 () (_ BitVec 32))

(assert (=> b!10031 (= res!8230 (and (bvsle #b11111111111111111111111111101001 lt!4987) (bvsle lt!4987 #b00000000000000000000001111101000)))))

(declare-fun lt!4989 () (_ BitVec 32))

(assert (=> b!10031 (= lt!4987 (bvsub (bvashr lt!4989 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10031 (= lt!4989 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10032 () Bool)

(declare-fun e!5608 () Bool)

(assert (=> b!10032 (= e!5610 e!5608)))

(declare-fun res!8232 () Bool)

(assert (=> b!10032 (=> (not res!8232) (not e!5608))))

(declare-fun lt!4988 () (_ BitVec 32))

(assert (=> b!10032 (= res!8232 (and (bvsle #b00000000000000000000000000011000 lt!4988) (bvsle lt!4988 #b00000000000000000000001111110000) (= (bvsrem lt!4988 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4986 () (_ BitVec 32))

(assert (=> b!10032 (= lt!4988 (ite (bvslt lt!4986 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4986))))

(assert (=> b!10032 (= lt!4986 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4987 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10033 () Bool)

(assert (=> b!10033 (= e!5608 false)))

(declare-fun lt!4985 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10033 (= lt!4985 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4989 (bvshl lt!4988 #b00000000000000000000000000010100))))))

(assert (= (and start!1913 res!8231) b!10031))

(assert (= (and b!10031 res!8230) b!10032))

(assert (= (and b!10032 res!8232) b!10033))

(declare-fun m!15895 () Bool)

(assert (=> b!10031 m!15895))

(declare-fun m!15897 () Bool)

(assert (=> b!10033 m!15897))

(assert (=> b!10033 m!15897))

(declare-fun m!15899 () Bool)

(assert (=> b!10033 m!15899))

(assert (=> b!10033 m!15899))

(declare-fun m!15901 () Bool)

(assert (=> b!10033 m!15901))

(check-sat (not b!10031) (not b!10033))
(check-sat)
