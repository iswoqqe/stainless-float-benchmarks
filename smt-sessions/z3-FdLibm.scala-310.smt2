; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1827 () Bool)

(assert start!1827)

(declare-fun res!8103 () Bool)

(declare-fun e!5409 () Bool)

(assert (=> start!1827 (=> (not res!8103) (not e!5409))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1827 (= res!8103 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1827 e!5409))

(assert (=> start!1827 true))

(declare-fun b!9760 () Bool)

(assert (=> b!9760 (= e!5409 false)))

(declare-fun lt!4785 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9760 (= lt!4785 (__HI!0 x!143))))

(assert (= (and start!1827 res!8103) b!9760))

(declare-fun m!15735 () Bool)

(assert (=> b!9760 m!15735))

(check-sat (not b!9760))
(check-sat)
