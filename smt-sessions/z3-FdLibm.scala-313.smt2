; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1833 () Bool)

(assert start!1833)

(declare-fun res!8112 () Bool)

(declare-fun e!5418 () Bool)

(assert (=> start!1833 (=> (not res!8112) (not e!5418))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1833 (= res!8112 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1833 e!5418))

(assert (=> start!1833 true))

(declare-fun b!9769 () Bool)

(assert (=> b!9769 (= e!5418 false)))

(declare-fun lt!4794 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9769 (= lt!4794 (__HI!0 x!143))))

(assert (= (and start!1833 res!8112) b!9769))

(declare-fun m!15741 () Bool)

(assert (=> b!9769 m!15741))

(check-sat (not b!9769))
(check-sat)
