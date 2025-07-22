; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1953 () Bool)

(assert start!1953)

(declare-fun res!7975 () Bool)

(declare-fun e!5691 () Bool)

(assert (=> start!1953 (=> (not res!7975) (not e!5691))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1953 (= res!7975 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1953 e!5691))

(assert (=> start!1953 true))

(declare-fun b!9888 () Bool)

(declare-fun e!5692 () Bool)

(assert (=> b!9888 (= e!5691 e!5692)))

(declare-fun res!7973 () Bool)

(assert (=> b!9888 (=> (not res!7973) (not e!5692))))

(declare-fun lt!5088 () (_ BitVec 32))

(assert (=> b!9888 (= res!7973 (and (bvsle #b11111111111111111111111111101001 lt!5088) (bvsle lt!5088 #b00000000000000000000001111101000)))))

(declare-fun lt!5087 () (_ BitVec 32))

(assert (=> b!9888 (= lt!5088 (bvsub (bvashr lt!5087 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9888 (= lt!5087 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9889 () Bool)

(declare-fun e!5690 () Bool)

(assert (=> b!9889 (= e!5692 e!5690)))

(declare-fun res!7974 () Bool)

(assert (=> b!9889 (=> (not res!7974) (not e!5690))))

(declare-fun lt!5091 () (_ BitVec 32))

(assert (=> b!9889 (= res!7974 (and (bvsle #b00000000000000000000000000011000 lt!5091) (bvsle lt!5091 #b00000000000000000000001111110000) (= (bvsrem lt!5091 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5090 () (_ BitVec 32))

(assert (=> b!9889 (= lt!5091 (ite (bvslt lt!5090 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5090))))

(assert (=> b!9889 (= lt!5090 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5088 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9890 () Bool)

(assert (=> b!9890 (= e!5690 false)))

(declare-fun lt!5089 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9890 (= lt!5089 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5087 (bvshl lt!5091 #b00000000000000000000000000010100))))))

(assert (= (and start!1953 res!7975) b!9888))

(assert (= (and b!9888 res!7973) b!9889))

(assert (= (and b!9889 res!7974) b!9890))

(declare-fun m!14251 () Bool)

(assert (=> b!9888 m!14251))

(declare-fun m!14253 () Bool)

(assert (=> b!9890 m!14253))

(assert (=> b!9890 m!14253))

(declare-fun m!14255 () Bool)

(assert (=> b!9890 m!14255))

(assert (=> b!9890 m!14255))

(declare-fun m!14257 () Bool)

(assert (=> b!9890 m!14257))

(check-sat (not b!9888) (not b!9890))
(check-sat)
