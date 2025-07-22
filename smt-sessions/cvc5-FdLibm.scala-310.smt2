; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1951 () Bool)

(assert start!1951)

(declare-fun res!8838 () Bool)

(declare-fun e!5644 () Bool)

(assert (=> start!1951 (=> (not res!8838) (not e!5644))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1951 (= res!8838 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1951 e!5644))

(assert (=> start!1951 true))

(declare-fun b!10591 () Bool)

(assert (=> b!10591 (= e!5644 false)))

(declare-fun lt!5003 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10591 (= lt!5003 (__HI!0 x!143))))

(assert (= (and start!1951 res!8838) b!10591))

(declare-fun m!18531 () Bool)

(assert (=> b!10591 m!18531))

(push 1)

(assert (not b!10591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

