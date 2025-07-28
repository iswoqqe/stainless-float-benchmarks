; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1839 () Bool)

(assert start!1839)

(declare-fun res!8121 () Bool)

(declare-fun e!5427 () Bool)

(assert (=> start!1839 (=> (not res!8121) (not e!5427))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1839 (= res!8121 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1839 e!5427))

(assert (=> start!1839 true))

(declare-fun b!9778 () Bool)

(assert (=> b!9778 (= e!5427 false)))

(declare-fun lt!4803 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9778 (= lt!4803 (__HI!0 x!143))))

(assert (= (and start!1839 res!8121) b!9778))

(declare-fun m!15747 () Bool)

(assert (=> b!9778 m!15747))

(check-sat (not b!9778))
(check-sat)
