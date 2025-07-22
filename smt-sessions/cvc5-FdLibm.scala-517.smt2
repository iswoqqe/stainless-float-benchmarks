; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2957 () Bool)

(assert start!2957)

(declare-fun res!12935 () Bool)

(declare-fun e!8946 () Bool)

(assert (=> start!2957 (=> (not res!12935) (not e!8946))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2957 (= res!12935 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2957 e!8946))

(assert (=> start!2957 true))

(declare-datatypes ((array!1236 0))(
  ( (array!1237 (arr!537 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!537 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1236)

(declare-fun array_inv!485 (array!1236) Bool)

(assert (=> start!2957 (array_inv!485 q!79)))

(declare-fun b!16495 () Bool)

(declare-fun res!12936 () Bool)

(assert (=> b!16495 (=> (not res!12936) (not e!8946))))

(declare-fun qInv!0 (array!1236) Bool)

(assert (=> b!16495 (= res!12936 (qInv!0 q!79))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun b!16496 () Bool)

(assert (=> b!16496 (= e!8946 false)))

(assert (= (and start!2957 res!12935) b!16495))

(assert (= (and b!16495 res!12936) b!16496))

(declare-fun m!26607 () Bool)

(assert (=> start!2957 m!26607))

(declare-fun m!26609 () Bool)

(assert (=> b!16495 m!26609))

(push 1)

(assert (not start!2957))

(assert (not b!16495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

