; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!647 () Bool)

(assert start!647)

(declare-fun res!1788 () Bool)

(declare-fun e!949 () Bool)

(assert (=> start!647 (=> (not res!1788) (not e!949))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!647 (= res!1788 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!647 e!949))

(assert (=> start!647 true))

(declare-datatypes ((array!70 0))(
  ( (array!71 (arr!31 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!31 (_ BitVec 32))) )
))
(declare-fun q!70 () array!70)

(declare-fun array_inv!11 (array!70) Bool)

(assert (=> start!647 (array_inv!11 q!70)))

(declare-fun b!2039 () Bool)

(declare-fun res!1789 () Bool)

(assert (=> b!2039 (=> (not res!1789) (not e!949))))

(declare-fun qInv!0 (array!70) Bool)

(assert (=> b!2039 (= res!1789 (qInv!0 q!70))))

(declare-fun b!2040 () Bool)

(assert (=> b!2040 (= e!949 false)))

(assert (= (and start!647 res!1788) b!2039))

(assert (= (and b!2039 res!1789) b!2040))

(declare-fun m!4221 () Bool)

(assert (=> start!647 m!4221))

(declare-fun m!4223 () Bool)

(assert (=> b!2039 m!4223))

(push 1)

(assert (not start!647))

(assert (not b!2039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

