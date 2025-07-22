; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1807 () Bool)

(assert start!1807)

(declare-fun res!7774 () Bool)

(declare-fun e!5347 () Bool)

(assert (=> start!1807 (=> (not res!7774) (not e!5347))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1807 (= res!7774 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1807 e!5347))

(assert (=> start!1807 true))

(declare-fun b!9401 () Bool)

(assert (=> b!9401 (= e!5347 false)))

(declare-fun lt!4722 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9401 (= lt!4722 (__HI!0 x!143))))

(assert (= (and start!1807 res!7774) b!9401))

(declare-fun m!13917 () Bool)

(assert (=> b!9401 m!13917))

(check-sat (not b!9401))
(check-sat)
