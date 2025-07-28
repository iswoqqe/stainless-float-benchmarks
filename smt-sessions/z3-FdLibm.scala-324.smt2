; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1879 () Bool)

(assert start!1879)

(declare-fun res!8185 () Bool)

(declare-fun e!5529 () Bool)

(assert (=> start!1879 (=> (not res!8185) (not e!5529))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1879 (= res!8185 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1879 e!5529))

(assert (=> start!1879 true))

(declare-fun b!9914 () Bool)

(declare-fun e!5527 () Bool)

(assert (=> b!9914 (= e!5529 e!5527)))

(declare-fun res!8187 () Bool)

(assert (=> b!9914 (=> (not res!8187) (not e!5527))))

(declare-fun lt!4908 () (_ BitVec 32))

(assert (=> b!9914 (= res!8187 (and (bvsle #b11111111111111111111111111101001 lt!4908) (bvsle lt!4908 #b00000000000000000000001111101000)))))

(declare-fun lt!4904 () (_ BitVec 32))

(assert (=> b!9914 (= lt!4908 (bvsub (bvashr lt!4904 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9914 (= lt!4904 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!9915 () Bool)

(declare-fun e!5528 () Bool)

(assert (=> b!9915 (= e!5527 e!5528)))

(declare-fun res!8186 () Bool)

(assert (=> b!9915 (=> (not res!8186) (not e!5528))))

(declare-fun lt!4906 () (_ BitVec 32))

(assert (=> b!9915 (= res!8186 (and (bvsle #b00000000000000000000000000011000 lt!4906) (bvsle lt!4906 #b00000000000000000000001111110000) (= (bvsrem lt!4906 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!4907 () (_ BitVec 32))

(assert (=> b!9915 (= lt!4906 (ite (bvslt lt!4907 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!4907))))

(assert (=> b!9915 (= lt!4907 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4908 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!9916 () Bool)

(assert (=> b!9916 (= e!5528 false)))

(declare-fun lt!4905 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9916 (= lt!4905 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!4904 (bvshl lt!4906 #b00000000000000000000000000010100))))))

(assert (= (and start!1879 res!8185) b!9914))

(assert (= (and b!9914 res!8187) b!9915))

(assert (= (and b!9915 res!8186) b!9916))

(declare-fun m!15819 () Bool)

(assert (=> b!9914 m!15819))

(declare-fun m!15821 () Bool)

(assert (=> b!9916 m!15821))

(assert (=> b!9916 m!15821))

(declare-fun m!15823 () Bool)

(assert (=> b!9916 m!15823))

(assert (=> b!9916 m!15823))

(declare-fun m!15825 () Bool)

(assert (=> b!9916 m!15825))

(check-sat (not b!9916) (not b!9914))
(check-sat)
