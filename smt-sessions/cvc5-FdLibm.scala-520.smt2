; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2963 () Bool)

(assert start!2963)

(declare-fun b!16526 () Bool)

(declare-fun e!8970 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16526 (= e!8970 (and (bvsgt j!78 #b00000000000000000000000000000000) (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100))))))

(declare-fun b!16523 () Bool)

(declare-fun res!12964 () Bool)

(assert (=> b!16523 (=> (not res!12964) (not e!8970))))

(declare-datatypes ((array!1244 0))(
  ( (array!1245 (arr!541 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!541 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1244)

(declare-fun qInv!0 (array!1244) Bool)

(assert (=> b!16523 (= res!12964 (qInv!0 q!79))))

(declare-fun b!16525 () Bool)

(declare-fun res!12963 () Bool)

(assert (=> b!16525 (=> (not res!12963) (not e!8970))))

(declare-datatypes ((array!1246 0))(
  ( (array!1247 (arr!542 (Array (_ BitVec 32) (_ BitVec 32))) (size!542 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1246)

(declare-fun iqInv!0 (array!1246) Bool)

(assert (=> b!16525 (= res!12963 (iqInv!0 iq!146))))

(declare-fun b!16524 () Bool)

(declare-fun res!12965 () Bool)

(assert (=> b!16524 (=> (not res!12965) (not e!8970))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!16524 (= res!12965 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun res!12966 () Bool)

(assert (=> start!2963 (=> (not res!12966) (not e!8970))))

(assert (=> start!2963 (= res!12966 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2963 e!8970))

(assert (=> start!2963 true))

(declare-fun array_inv!489 (array!1246) Bool)

(assert (=> start!2963 (array_inv!489 iq!146)))

(declare-fun array_inv!490 (array!1244) Bool)

(assert (=> start!2963 (array_inv!490 q!79)))

(assert (= (and start!2963 res!12966) b!16523))

(assert (= (and b!16523 res!12964) b!16524))

(assert (= (and b!16524 res!12965) b!16525))

(assert (= (and b!16525 res!12963) b!16526))

(declare-fun m!26623 () Bool)

(assert (=> b!16523 m!26623))

(declare-fun m!26625 () Bool)

(assert (=> b!16525 m!26625))

(declare-fun m!26627 () Bool)

(assert (=> start!2963 m!26627))

(declare-fun m!26629 () Bool)

(assert (=> start!2963 m!26629))

(push 1)

(assert (not b!16525))

(assert (not start!2963))

(assert (not b!16523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

