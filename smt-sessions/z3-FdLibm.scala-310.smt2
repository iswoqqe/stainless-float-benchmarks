; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1801 () Bool)

(assert start!1801)

(declare-fun res!7765 () Bool)

(declare-fun e!5338 () Bool)

(assert (=> start!1801 (=> (not res!7765) (not e!5338))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1801 (= res!7765 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1801 e!5338))

(assert (=> start!1801 true))

(declare-fun b!9392 () Bool)

(assert (=> b!9392 (= e!5338 false)))

(declare-fun lt!4713 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9392 (= lt!4713 (__HI!0 x!143))))

(assert (= (and start!1801 res!7765) b!9392))

(declare-fun m!13911 () Bool)

(assert (=> b!9392 m!13911))

(check-sat (not b!9392))
(check-sat)
