; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1959 () Bool)

(assert start!1959)

(declare-fun res!8850 () Bool)

(declare-fun e!5656 () Bool)

(assert (=> start!1959 (=> (not res!8850) (not e!5656))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1959 (= res!8850 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1959 e!5656))

(assert (=> start!1959 true))

(declare-fun b!10603 () Bool)

(assert (=> b!10603 (= e!5656 false)))

(declare-fun lt!5015 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10603 (= lt!5015 (__HI!0 x!143))))

(assert (= (and start!1959 res!8850) b!10603))

(declare-fun m!18539 () Bool)

(assert (=> b!10603 m!18539))

(push 1)

(assert (not b!10603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

