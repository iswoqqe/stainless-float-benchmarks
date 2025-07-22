; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2961 () Bool)

(assert start!2961)

(declare-fun res!12954 () Bool)

(declare-fun e!8961 () Bool)

(assert (=> start!2961 (=> (not res!12954) (not e!8961))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2961 (= res!12954 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2961 e!8961))

(assert (=> start!2961 true))

(declare-datatypes ((array!1240 0))(
  ( (array!1241 (arr!539 (Array (_ BitVec 32) (_ BitVec 32))) (size!539 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1240)

(declare-fun array_inv!487 (array!1240) Bool)

(assert (=> start!2961 (array_inv!487 iq!146)))

(declare-datatypes ((array!1242 0))(
  ( (array!1243 (arr!540 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!540 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1242)

(declare-fun array_inv!488 (array!1242) Bool)

(assert (=> start!2961 (array_inv!488 q!79)))

(declare-fun b!16513 () Bool)

(declare-fun res!12951 () Bool)

(assert (=> b!16513 (=> (not res!12951) (not e!8961))))

(declare-fun iqInv!0 (array!1240) Bool)

(assert (=> b!16513 (= res!12951 (iqInv!0 iq!146))))

(declare-fun b!16514 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16514 (= e!8961 (and (bvsgt j!78 #b00000000000000000000000000000000) (bvslt j!78 #b00000000000000000000000000000000)))))

(declare-fun b!16511 () Bool)

(declare-fun res!12952 () Bool)

(assert (=> b!16511 (=> (not res!12952) (not e!8961))))

(declare-fun qInv!0 (array!1242) Bool)

(assert (=> b!16511 (= res!12952 (qInv!0 q!79))))

(declare-fun b!16512 () Bool)

(declare-fun res!12953 () Bool)

(assert (=> b!16512 (=> (not res!12953) (not e!8961))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16512 (= res!12953 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (= (and start!2961 res!12954) b!16511))

(assert (= (and b!16511 res!12952) b!16512))

(assert (= (and b!16512 res!12953) b!16513))

(assert (= (and b!16513 res!12951) b!16514))

(declare-fun m!26615 () Bool)

(assert (=> start!2961 m!26615))

(declare-fun m!26617 () Bool)

(assert (=> start!2961 m!26617))

(declare-fun m!26619 () Bool)

(assert (=> b!16513 m!26619))

(declare-fun m!26621 () Bool)

(assert (=> b!16511 m!26621))

(push 1)

(assert (not b!16513))

(assert (not start!2961))

(assert (not b!16511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

