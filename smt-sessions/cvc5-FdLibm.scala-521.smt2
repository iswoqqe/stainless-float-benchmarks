; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2965 () Bool)

(assert start!2965)

(declare-fun res!12975 () Bool)

(declare-fun e!8979 () Bool)

(assert (=> start!2965 (=> (not res!12975) (not e!8979))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2965 (= res!12975 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2965 e!8979))

(assert (=> start!2965 true))

(declare-datatypes ((array!1248 0))(
  ( (array!1249 (arr!543 (Array (_ BitVec 32) (_ BitVec 32))) (size!543 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1248)

(declare-fun array_inv!491 (array!1248) Bool)

(assert (=> start!2965 (array_inv!491 iq!146)))

(declare-datatypes ((array!1250 0))(
  ( (array!1251 (arr!544 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!544 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1250)

(declare-fun array_inv!492 (array!1250) Bool)

(assert (=> start!2965 (array_inv!492 q!79)))

(declare-fun b!16536 () Bool)

(declare-fun res!12977 () Bool)

(assert (=> b!16536 (=> (not res!12977) (not e!8979))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16536 (= res!12977 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16535 () Bool)

(declare-fun res!12976 () Bool)

(assert (=> b!16535 (=> (not res!12976) (not e!8979))))

(declare-fun qInv!0 (array!1250) Bool)

(assert (=> b!16535 (= res!12976 (qInv!0 q!79))))

(declare-fun b!16537 () Bool)

(declare-fun res!12978 () Bool)

(assert (=> b!16537 (=> (not res!12978) (not e!8979))))

(declare-fun iqInv!0 (array!1248) Bool)

(assert (=> b!16537 (= res!12978 (iqInv!0 iq!146))))

(declare-fun b!16538 () Bool)

(assert (=> b!16538 (= e!8979 (and (bvsgt j!78 #b00000000000000000000000000000000) (let ((expr!18 (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100))) (and (not (fp.isNaN expr!18)) (not (fp.gt expr!18 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))))

(assert (= (and start!2965 res!12975) b!16535))

(assert (= (and b!16535 res!12976) b!16536))

(assert (= (and b!16536 res!12977) b!16537))

(assert (= (and b!16537 res!12978) b!16538))

(declare-fun m!26631 () Bool)

(assert (=> start!2965 m!26631))

(declare-fun m!26633 () Bool)

(assert (=> start!2965 m!26633))

(declare-fun m!26635 () Bool)

(assert (=> b!16535 m!26635))

(declare-fun m!26637 () Bool)

(assert (=> b!16537 m!26637))

(push 1)

(assert (not b!16535))

(assert (not b!16537))

(assert (not start!2965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

