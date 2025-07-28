; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1911 () Bool)

(assert start!1911)

(declare-fun res!8223 () Bool)

(declare-fun e!5599 () Bool)

(assert (=> start!1911 (=> (not res!8223) (not e!5599))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1911 (= res!8223 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1911 e!5599))

(assert (=> start!1911 true))

(declare-fun b!10022 () Bool)

(declare-fun e!5600 () Bool)

(assert (=> b!10022 (= e!5599 e!5600)))

(declare-fun res!8221 () Bool)

(assert (=> b!10022 (=> (not res!8221) (not e!5600))))

(declare-fun lt!4971 () (_ BitVec 32))

(assert (=> b!10022 (= res!8221 (and (bvsle #b11111111111111111111111111101001 lt!4971) (bvsle lt!4971 #b00000000000000000000001111101000)))))

(declare-fun lt!4970 () (_ BitVec 32))

(assert (=> b!10022 (= lt!4971 (bvsub (bvashr lt!4970 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10022 (= lt!4970 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10023 () Bool)

(declare-fun e!5601 () Bool)

(assert (=> b!10023 (= e!5600 e!5601)))

(declare-fun res!8222 () Bool)

(assert (=> b!10023 (=> (not res!8222) (not e!5601))))

(declare-fun lt!4974 () (_ BitVec 32))

(assert (=> b!10023 (= res!8222 (and (bvsle #b00000000000000000000000000011000 lt!4974) (bvsle lt!4974 #b00000000000000000000001111110000) (= (bvsrem lt!4974 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4973 () (_ BitVec 32))

(assert (=> b!10023 (= lt!4974 (ite (bvslt lt!4973 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4973))))

(assert (=> b!10023 (= lt!4973 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4971 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10024 () Bool)

(assert (=> b!10024 (= e!5601 false)))

(declare-fun lt!4972 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10024 (= lt!4972 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4970 (bvshl lt!4974 #b00000000000000000000000000010100))))))

(assert (= (and start!1911 res!8223) b!10022))

(assert (= (and b!10022 res!8221) b!10023))

(assert (= (and b!10023 res!8222) b!10024))

(declare-fun m!15887 () Bool)

(assert (=> b!10022 m!15887))

(declare-fun m!15889 () Bool)

(assert (=> b!10024 m!15889))

(assert (=> b!10024 m!15889))

(declare-fun m!15891 () Bool)

(assert (=> b!10024 m!15891))

(assert (=> b!10024 m!15891))

(declare-fun m!15893 () Bool)

(assert (=> b!10024 m!15893))

(check-sat (not b!10022) (not b!10024))
(check-sat)
