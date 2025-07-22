; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1957 () Bool)

(assert start!1957)

(declare-fun res!8847 () Bool)

(declare-fun e!5653 () Bool)

(assert (=> start!1957 (=> (not res!8847) (not e!5653))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1957 (= res!8847 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1957 e!5653))

(assert (=> start!1957 true))

(declare-fun b!10600 () Bool)

(assert (=> b!10600 (= e!5653 false)))

(declare-fun lt!5012 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10600 (= lt!5012 (__HI!0 x!143))))

(assert (= (and start!1957 res!8847) b!10600))

(declare-fun m!18537 () Bool)

(assert (=> b!10600 m!18537))

(push 1)

(assert (not b!10600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

