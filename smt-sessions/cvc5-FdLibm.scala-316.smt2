; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1963 () Bool)

(assert start!1963)

(declare-fun res!8856 () Bool)

(declare-fun e!5662 () Bool)

(assert (=> start!1963 (=> (not res!8856) (not e!5662))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1963 (= res!8856 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1963 e!5662))

(assert (=> start!1963 true))

(declare-fun b!10609 () Bool)

(assert (=> b!10609 (= e!5662 false)))

(declare-fun lt!5021 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10609 (= lt!5021 (__HI!0 x!143))))

(assert (= (and start!1963 res!8856) b!10609))

(declare-fun m!18543 () Bool)

(assert (=> b!10609 m!18543))

(push 1)

(assert (not b!10609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

