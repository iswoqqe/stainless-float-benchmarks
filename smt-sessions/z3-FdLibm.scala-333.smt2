; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1919 () Bool)

(assert start!1919)

(declare-fun res!7928 () Bool)

(declare-fun e!5609 () Bool)

(assert (=> start!1919 (=> (not res!7928) (not e!5609))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1919 (= res!7928 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1919 e!5609))

(assert (=> start!1919 true))

(declare-fun b!9771 () Bool)

(declare-fun e!5611 () Bool)

(assert (=> b!9771 (= e!5609 e!5611)))

(declare-fun res!7929 () Bool)

(assert (=> b!9771 (=> (not res!7929) (not e!5611))))

(declare-fun lt!4989 () (_ BitVec 32))

(assert (=> b!9771 (= res!7929 (and (bvsle #b11111111111111111111111111101001 lt!4989) (bvsle lt!4989 #b00000000000000000000001111101000)))))

(declare-fun lt!4990 () (_ BitVec 32))

(assert (=> b!9771 (= lt!4989 (bvsub (bvashr lt!4990 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9771 (= lt!4990 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9772 () Bool)

(declare-fun e!5610 () Bool)

(assert (=> b!9772 (= e!5611 e!5610)))

(declare-fun res!7930 () Bool)

(assert (=> b!9772 (=> (not res!7930) (not e!5610))))

(declare-fun lt!4988 () (_ BitVec 32))

(assert (=> b!9772 (= res!7930 (and (bvsle #b00000000000000000000000000011000 lt!4988) (bvsle lt!4988 #b00000000000000000000001111110000) (= (bvsrem lt!4988 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4991 () (_ BitVec 32))

(assert (=> b!9772 (= lt!4988 (ite (bvslt lt!4991 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4991))))

(assert (=> b!9772 (= lt!4991 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4989 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9773 () Bool)

(assert (=> b!9773 (= e!5610 false)))

(declare-fun lt!4992 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9773 (= lt!4992 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4990 (bvshl lt!4988 #b00000000000000000000000000010100))))))

(assert (= (and start!1919 res!7928) b!9771))

(assert (= (and b!9771 res!7929) b!9772))

(assert (= (and b!9772 res!7930) b!9773))

(declare-fun m!14151 () Bool)

(assert (=> b!9771 m!14151))

(declare-fun m!14153 () Bool)

(assert (=> b!9773 m!14153))

(assert (=> b!9773 m!14153))

(declare-fun m!14155 () Bool)

(assert (=> b!9773 m!14155))

(assert (=> b!9773 m!14155))

(declare-fun m!14157 () Bool)

(assert (=> b!9773 m!14157))

(check-sat (not b!9773) (not b!9771))
(check-sat)
