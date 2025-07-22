; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1813 () Bool)

(assert start!1813)

(declare-fun res!7783 () Bool)

(declare-fun e!5356 () Bool)

(assert (=> start!1813 (=> (not res!7783) (not e!5356))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1813 (= res!7783 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1813 e!5356))

(assert (=> start!1813 true))

(declare-fun b!9410 () Bool)

(assert (=> b!9410 (= e!5356 false)))

(declare-fun lt!4731 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9410 (= lt!4731 (__HI!0 x!143))))

(assert (= (and start!1813 res!7783) b!9410))

(declare-fun m!13923 () Bool)

(assert (=> b!9410 m!13923))

(check-sat (not b!9410))
(check-sat)
