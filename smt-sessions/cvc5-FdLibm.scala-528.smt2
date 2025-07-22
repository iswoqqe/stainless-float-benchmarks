; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2987 () Bool)

(assert start!2987)

(declare-fun res!13067 () Bool)

(declare-fun e!9047 () Bool)

(assert (=> start!2987 (=> (not res!13067) (not e!9047))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2987 (= res!13067 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2987 e!9047))

(assert (=> start!2987 true))

(declare-datatypes ((array!1278 0))(
  ( (array!1279 (arr!557 (Array (_ BitVec 32) (_ BitVec 32))) (size!557 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1278)

(declare-fun array_inv!505 (array!1278) Bool)

(assert (=> start!2987 (array_inv!505 iq!146)))

(declare-datatypes ((array!1280 0))(
  ( (array!1281 (arr!558 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!558 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1280)

(declare-fun array_inv!506 (array!1280) Bool)

(assert (=> start!2987 (array_inv!506 q!79)))

(declare-fun b!16625 () Bool)

(declare-fun res!13065 () Bool)

(assert (=> b!16625 (=> (not res!13065) (not e!9047))))

(declare-fun qInv!0 (array!1280) Bool)

(assert (=> b!16625 (= res!13065 (qInv!0 q!79))))

(declare-fun b!16628 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16628 (= e!9047 (and (bvsgt j!78 #b00000000000000000000000000000000) (not (= (bvand jz!49 #b10000000000000000000000000000000) (bvand j!78 #b10000000000000000000000000000000))) (not (= (bvand jz!49 #b10000000000000000000000000000000) (bvand (bvsub jz!49 j!78) #b10000000000000000000000000000000)))))))

(declare-fun b!16626 () Bool)

(declare-fun res!13068 () Bool)

(assert (=> b!16626 (=> (not res!13068) (not e!9047))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16626 (= res!13068 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16627 () Bool)

(declare-fun res!13066 () Bool)

(assert (=> b!16627 (=> (not res!13066) (not e!9047))))

(declare-fun iqInv!0 (array!1278) Bool)

(assert (=> b!16627 (= res!13066 (iqInv!0 iq!146))))

(assert (= (and start!2987 res!13067) b!16625))

(assert (= (and b!16625 res!13065) b!16626))

(assert (= (and b!16626 res!13068) b!16627))

(assert (= (and b!16627 res!13066) b!16628))

(declare-fun m!26691 () Bool)

(assert (=> start!2987 m!26691))

(declare-fun m!26693 () Bool)

(assert (=> start!2987 m!26693))

(declare-fun m!26695 () Bool)

(assert (=> b!16625 m!26695))

(declare-fun m!26697 () Bool)

(assert (=> b!16627 m!26697))

(push 1)

(assert (not start!2987))

(assert (not b!16627))

(assert (not b!16625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

