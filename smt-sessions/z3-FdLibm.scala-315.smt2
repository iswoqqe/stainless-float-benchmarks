; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1837 () Bool)

(assert start!1837)

(declare-fun res!8118 () Bool)

(declare-fun e!5424 () Bool)

(assert (=> start!1837 (=> (not res!8118) (not e!5424))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1837 (= res!8118 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1837 e!5424))

(assert (=> start!1837 true))

(declare-fun b!9775 () Bool)

(declare-fun lt!4800 () (_ BitVec 32))

(assert (=> b!9775 (= e!5424 (and (bvsle #b11111111111111111111111111101001 lt!4800) (bvsle lt!4800 #b00000000000000000000001111101000) (let ((rhs!26 (bvsdiv (bvadd lt!4800 #b00000000000000000000000000010111) #b00000000000000000000000000011000))) (not (= rhs!26 (bvsdiv (bvmul #b00000000000000000000000000011000 rhs!26) #b00000000000000000000000000011000))))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9775 (= lt!4800 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1837 res!8118) b!9775))

(declare-fun m!15745 () Bool)

(assert (=> b!9775 m!15745))

(check-sat (not b!9775))
(check-sat)
