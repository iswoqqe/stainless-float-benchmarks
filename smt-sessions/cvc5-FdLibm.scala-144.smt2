; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1101 () Bool)

(assert start!1101)

(declare-fun res!4204 () Bool)

(declare-fun e!2645 () Bool)

(assert (=> start!1101 (=> (not res!4204) (not e!2645))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!375 0))(
  ( (array!376 (arr!162 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!162 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!375)

(assert (=> start!1101 (= res!4204 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!162 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1101 e!2645))

(assert (=> start!1101 true))

(declare-fun array_inv!112 (array!375) Bool)

(assert (=> start!1101 (array_inv!112 qq!69)))

(declare-fun b!5343 () Bool)

(declare-fun res!4205 () Bool)

(assert (=> b!5343 (=> (not res!4205) (not e!2645))))

(declare-fun qqInv!0 (array!375) Bool)

(assert (=> b!5343 (= res!4205 (qqInv!0 qq!69))))

(declare-fun b!5344 () Bool)

(assert (=> b!5344 (= e!2645 false)))

(assert (= (and start!1101 res!4204) b!5343))

(assert (= (and b!5343 res!4205) b!5344))

(declare-fun m!8673 () Bool)

(assert (=> start!1101 m!8673))

(declare-fun m!8675 () Bool)

(assert (=> b!5343 m!8675))

(declare-fun m!8677 () Bool)

(assert (=> b!5344 m!8677))

(declare-fun m!8679 () Bool)

(assert (=> b!5344 m!8679))

(declare-fun m!8681 () Bool)

(assert (=> b!5344 m!8681))

(push 1)

(assert (not b!5343))

(assert (not start!1101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

