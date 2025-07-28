; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1829 () Bool)

(assert start!1829)

(declare-fun res!8106 () Bool)

(declare-fun e!5412 () Bool)

(assert (=> start!1829 (=> (not res!8106) (not e!5412))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1829 (= res!8106 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1829 e!5412))

(assert (=> start!1829 true))

(declare-fun b!9763 () Bool)

(declare-fun lt!4788 () (_ BitVec 32))

(assert (=> b!9763 (= e!5412 (and (not (= (bvand lt!4788 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand lt!4788 #b10000000000000000000000000000000) (bvand (bvsub lt!4788 #b00000000000000000000010000010110) #b10000000000000000000000000000000)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9763 (= lt!4788 (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100))))

(assert (= (and start!1829 res!8106) b!9763))

(declare-fun m!15737 () Bool)

(assert (=> b!9763 m!15737))

(check-sat (not b!9763))
(check-sat)
