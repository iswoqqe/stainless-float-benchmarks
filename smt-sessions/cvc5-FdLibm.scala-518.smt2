; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2959 () Bool)

(assert start!2959)

(declare-fun res!12941 () Bool)

(declare-fun e!8952 () Bool)

(assert (=> start!2959 (=> (not res!12941) (not e!8952))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2959 (= res!12941 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2959 e!8952))

(assert (=> start!2959 true))

(declare-datatypes ((array!1238 0))(
  ( (array!1239 (arr!538 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!538 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1238)

(declare-fun array_inv!486 (array!1238) Bool)

(assert (=> start!2959 (array_inv!486 q!79)))

(declare-fun b!16501 () Bool)

(declare-fun res!12942 () Bool)

(assert (=> b!16501 (=> (not res!12942) (not e!8952))))

(declare-fun qInv!0 (array!1238) Bool)

(assert (=> b!16501 (= res!12942 (qInv!0 q!79))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun b!16502 () Bool)

(assert (=> b!16502 (= e!8952 false)))

(assert (= (and start!2959 res!12941) b!16501))

(assert (= (and b!16501 res!12942) b!16502))

(declare-fun m!26611 () Bool)

(assert (=> start!2959 m!26611))

(declare-fun m!26613 () Bool)

(assert (=> b!16501 m!26613))

(push 1)

(assert (not start!2959))

(assert (not b!16501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

