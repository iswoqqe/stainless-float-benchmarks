; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2975 () Bool)

(assert start!2975)

(declare-fun b!16595 () Bool)

(declare-fun res!13035 () Bool)

(declare-fun e!9024 () Bool)

(assert (=> b!16595 (=> (not res!13035) (not e!9024))))

(declare-datatypes ((array!1268 0))(
  ( (array!1269 (arr!553 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!553 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1268)

(declare-fun qInv!0 (array!1268) Bool)

(assert (=> b!16595 (= res!13035 (qInv!0 q!79))))

(declare-fun b!16596 () Bool)

(declare-fun res!13038 () Bool)

(assert (=> b!16596 (=> (not res!13038) (not e!9024))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!16596 (= res!13038 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16598 () Bool)

(assert (=> b!16598 (= e!9024 (and (bvsgt j!78 #b00000000000000000000000000000000) (let ((expr!19 (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))) (and (not (fp.isNaN expr!19)) (fp.gt expr!19 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt expr!19 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))))

(declare-fun res!13036 () Bool)

(assert (=> start!2975 (=> (not res!13036) (not e!9024))))

(assert (=> start!2975 (= res!13036 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2975 e!9024))

(assert (=> start!2975 true))

(declare-datatypes ((array!1270 0))(
  ( (array!1271 (arr!554 (Array (_ BitVec 32) (_ BitVec 32))) (size!554 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1270)

(declare-fun array_inv!501 (array!1270) Bool)

(assert (=> start!2975 (array_inv!501 iq!146)))

(declare-fun array_inv!502 (array!1268) Bool)

(assert (=> start!2975 (array_inv!502 q!79)))

(declare-fun b!16597 () Bool)

(declare-fun res!13037 () Bool)

(assert (=> b!16597 (=> (not res!13037) (not e!9024))))

(declare-fun iqInv!0 (array!1270) Bool)

(assert (=> b!16597 (= res!13037 (iqInv!0 iq!146))))

(assert (= (and start!2975 res!13036) b!16595))

(assert (= (and b!16595 res!13035) b!16596))

(assert (= (and b!16596 res!13038) b!16597))

(assert (= (and b!16597 res!13037) b!16598))

(declare-fun m!26671 () Bool)

(assert (=> b!16595 m!26671))

(declare-fun m!26673 () Bool)

(assert (=> start!2975 m!26673))

(declare-fun m!26675 () Bool)

(assert (=> start!2975 m!26675))

(declare-fun m!26677 () Bool)

(assert (=> b!16597 m!26677))

(push 1)

(assert (not start!2975))

(assert (not b!16597))

(assert (not b!16595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

