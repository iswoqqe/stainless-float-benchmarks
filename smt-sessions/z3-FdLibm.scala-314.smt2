; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1809 () Bool)

(assert start!1809)

(declare-fun res!7777 () Bool)

(declare-fun e!5350 () Bool)

(assert (=> start!1809 (=> (not res!7777) (not e!5350))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1809 (= res!7777 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1809 e!5350))

(assert (=> start!1809 true))

(declare-fun b!9404 () Bool)

(assert (=> b!9404 (= e!5350 false)))

(declare-fun lt!4725 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9404 (= lt!4725 (__HI!0 x!143))))

(assert (= (and start!1809 res!7777) b!9404))

(declare-fun m!13919 () Bool)

(assert (=> b!9404 m!13919))

(check-sat (not b!9404))
(check-sat)
