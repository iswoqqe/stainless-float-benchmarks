; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2971 () Bool)

(assert start!2971)

(declare-fun b!16574 () Bool)

(declare-fun e!9006 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16574 (= e!9006 (and (bvsgt j!78 #b00000000000000000000000000000000) (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))))))

(declare-fun b!16571 () Bool)

(declare-fun res!13013 () Bool)

(assert (=> b!16571 (=> (not res!13013) (not e!9006))))

(declare-datatypes ((array!1260 0))(
  ( (array!1261 (arr!549 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!549 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1260)

(declare-fun qInv!0 (array!1260) Bool)

(assert (=> b!16571 (= res!13013 (qInv!0 q!79))))

(declare-fun b!16573 () Bool)

(declare-fun res!13014 () Bool)

(assert (=> b!16573 (=> (not res!13014) (not e!9006))))

(declare-datatypes ((array!1262 0))(
  ( (array!1263 (arr!550 (Array (_ BitVec 32) (_ BitVec 32))) (size!550 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1262)

(declare-fun iqInv!0 (array!1262) Bool)

(assert (=> b!16573 (= res!13014 (iqInv!0 iq!146))))

(declare-fun res!13012 () Bool)

(assert (=> start!2971 (=> (not res!13012) (not e!9006))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2971 (= res!13012 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2971 e!9006))

(assert (=> start!2971 true))

(declare-fun array_inv!497 (array!1262) Bool)

(assert (=> start!2971 (array_inv!497 iq!146)))

(declare-fun array_inv!498 (array!1260) Bool)

(assert (=> start!2971 (array_inv!498 q!79)))

(declare-fun b!16572 () Bool)

(declare-fun res!13011 () Bool)

(assert (=> b!16572 (=> (not res!13011) (not e!9006))))

(assert (=> b!16572 (= res!13011 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (= (and start!2971 res!13012) b!16571))

(assert (= (and b!16571 res!13013) b!16572))

(assert (= (and b!16572 res!13011) b!16573))

(assert (= (and b!16573 res!13014) b!16574))

(declare-fun m!26655 () Bool)

(assert (=> b!16571 m!26655))

(declare-fun m!26657 () Bool)

(assert (=> b!16573 m!26657))

(declare-fun m!26659 () Bool)

(assert (=> start!2971 m!26659))

(declare-fun m!26661 () Bool)

(assert (=> start!2971 m!26661))

(push 1)

(assert (not b!16571))

(assert (not b!16573))

(assert (not start!2971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

