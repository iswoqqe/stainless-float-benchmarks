; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2967 () Bool)

(assert start!2967)

(declare-fun res!12990 () Bool)

(declare-fun e!8987 () Bool)

(assert (=> start!2967 (=> (not res!12990) (not e!8987))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2967 (= res!12990 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2967 e!8987))

(assert (=> start!2967 true))

(declare-datatypes ((array!1252 0))(
  ( (array!1253 (arr!545 (Array (_ BitVec 32) (_ BitVec 32))) (size!545 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1252)

(declare-fun array_inv!493 (array!1252) Bool)

(assert (=> start!2967 (array_inv!493 iq!146)))

(declare-datatypes ((array!1254 0))(
  ( (array!1255 (arr!546 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!546 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1254)

(declare-fun array_inv!494 (array!1254) Bool)

(assert (=> start!2967 (array_inv!494 q!79)))

(declare-fun b!16550 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16550 (= e!8987 (and (bvsgt j!78 #b00000000000000000000000000000000) (let ((expr!18 (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100))) (and (not (fp.isNaN expr!18)) (fp.gt expr!18 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt expr!18 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))))

(declare-fun b!16548 () Bool)

(declare-fun res!12987 () Bool)

(assert (=> b!16548 (=> (not res!12987) (not e!8987))))

(assert (=> b!16548 (= res!12987 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16549 () Bool)

(declare-fun res!12989 () Bool)

(assert (=> b!16549 (=> (not res!12989) (not e!8987))))

(declare-fun iqInv!0 (array!1252) Bool)

(assert (=> b!16549 (= res!12989 (iqInv!0 iq!146))))

(declare-fun b!16547 () Bool)

(declare-fun res!12988 () Bool)

(assert (=> b!16547 (=> (not res!12988) (not e!8987))))

(declare-fun qInv!0 (array!1254) Bool)

(assert (=> b!16547 (= res!12988 (qInv!0 q!79))))

(assert (= (and start!2967 res!12990) b!16547))

(assert (= (and b!16547 res!12988) b!16548))

(assert (= (and b!16548 res!12987) b!16549))

(assert (= (and b!16549 res!12989) b!16550))

(declare-fun m!26639 () Bool)

(assert (=> start!2967 m!26639))

(declare-fun m!26641 () Bool)

(assert (=> start!2967 m!26641))

(declare-fun m!26643 () Bool)

(assert (=> b!16549 m!26643))

(declare-fun m!26645 () Bool)

(assert (=> b!16547 m!26645))

(push 1)

(assert (not b!16549))

(assert (not start!2967))

(assert (not b!16547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

