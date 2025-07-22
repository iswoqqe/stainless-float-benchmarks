; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2973 () Bool)

(assert start!2973)

(declare-fun b!16585 () Bool)

(declare-fun res!13023 () Bool)

(declare-fun e!9016 () Bool)

(assert (=> b!16585 (=> (not res!13023) (not e!9016))))

(declare-datatypes ((array!1264 0))(
  ( (array!1265 (arr!551 (Array (_ BitVec 32) (_ BitVec 32))) (size!551 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1264)

(declare-fun iqInv!0 (array!1264) Bool)

(assert (=> b!16585 (= res!13023 (iqInv!0 iq!146))))

(declare-fun b!16586 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16586 (= e!9016 (and (bvsgt j!78 #b00000000000000000000000000000000) (let ((expr!19 (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))) (and (not (fp.isNaN expr!19)) (not (fp.gt expr!19 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))))

(declare-fun b!16584 () Bool)

(declare-fun res!13026 () Bool)

(assert (=> b!16584 (=> (not res!13026) (not e!9016))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!16584 (= res!13026 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun res!13024 () Bool)

(assert (=> start!2973 (=> (not res!13024) (not e!9016))))

(assert (=> start!2973 (= res!13024 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2973 e!9016))

(assert (=> start!2973 true))

(declare-fun array_inv!499 (array!1264) Bool)

(assert (=> start!2973 (array_inv!499 iq!146)))

(declare-datatypes ((array!1266 0))(
  ( (array!1267 (arr!552 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!552 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1266)

(declare-fun array_inv!500 (array!1266) Bool)

(assert (=> start!2973 (array_inv!500 q!79)))

(declare-fun b!16583 () Bool)

(declare-fun res!13025 () Bool)

(assert (=> b!16583 (=> (not res!13025) (not e!9016))))

(declare-fun qInv!0 (array!1266) Bool)

(assert (=> b!16583 (= res!13025 (qInv!0 q!79))))

(assert (= (and start!2973 res!13024) b!16583))

(assert (= (and b!16583 res!13025) b!16584))

(assert (= (and b!16584 res!13026) b!16585))

(assert (= (and b!16585 res!13023) b!16586))

(declare-fun m!26663 () Bool)

(assert (=> b!16585 m!26663))

(declare-fun m!26665 () Bool)

(assert (=> start!2973 m!26665))

(declare-fun m!26667 () Bool)

(assert (=> start!2973 m!26667))

(declare-fun m!26669 () Bool)

(assert (=> b!16583 m!26669))

(push 1)

(assert (not start!2973))

(assert (not b!16585))

(assert (not b!16583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

