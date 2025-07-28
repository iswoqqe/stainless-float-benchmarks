; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1835 () Bool)

(assert start!1835)

(declare-fun res!8115 () Bool)

(declare-fun e!5421 () Bool)

(assert (=> start!1835 (=> (not res!8115) (not e!5421))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1835 (= res!8115 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1835 e!5421))

(assert (=> start!1835 true))

(declare-fun b!9772 () Bool)

(assert (=> b!9772 (= e!5421 false)))

(declare-fun lt!4797 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9772 (= lt!4797 (__HI!0 x!143))))

(assert (= (and start!1835 res!8115) b!9772))

(declare-fun m!15743 () Bool)

(assert (=> b!9772 m!15743))

(check-sat (not b!9772))
(check-sat)
