; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1083 () Bool)

(assert start!1083)

(declare-fun res!4150 () Bool)

(declare-fun e!2591 () Bool)

(assert (=> start!1083 (=> (not res!4150) (not e!2591))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!357 0))(
  ( (array!358 (arr!153 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!153 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!357)

(assert (=> start!1083 (= res!4150 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!153 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1083 e!2591))

(assert (=> start!1083 true))

(declare-fun array_inv!103 (array!357) Bool)

(assert (=> start!1083 (array_inv!103 qq!69)))

(declare-fun b!5289 () Bool)

(declare-fun res!4151 () Bool)

(assert (=> b!5289 (=> (not res!4151) (not e!2591))))

(declare-fun qqInv!0 (array!357) Bool)

(assert (=> b!5289 (= res!4151 (qqInv!0 qq!69))))

(declare-fun b!5290 () Bool)

(assert (=> b!5290 (= e!2591 false)))

(assert (= (and start!1083 res!4150) b!5289))

(assert (= (and b!5289 res!4151) b!5290))

(declare-fun m!8613 () Bool)

(assert (=> start!1083 m!8613))

(declare-fun m!8615 () Bool)

(assert (=> b!5289 m!8615))

(push 1)

(assert (not start!1083))

(assert (not b!5289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

