; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2937 () Bool)

(assert start!2937)

(declare-fun b!16344 () Bool)

(declare-fun res!12786 () Bool)

(declare-fun e!8917 () Bool)

(assert (=> b!16344 (=> (not res!12786) (not e!8917))))

(declare-datatypes ((array!1226 0))(
  ( (array!1227 (arr!533 (Array (_ BitVec 32) (_ BitVec 32))) (size!533 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1226)

(declare-fun iqInv!0 (array!1226) Bool)

(assert (=> b!16344 (= res!12786 (iqInv!0 iq!146))))

(declare-fun b!16346 () Bool)

(declare-fun e!8915 () Bool)

(assert (=> b!16346 (= e!8917 e!8915)))

(declare-fun res!12785 () Bool)

(assert (=> b!16346 (=> (not res!12785) (not e!8915))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun lt!8334 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16346 (= res!12785 (QInt!0 (select (store (arr!533 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8334))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8334)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8334)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8334))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16346 (= lt!8334 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16347 () Bool)

(assert (=> b!16347 (= e!8915 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8334)) (not (fp.leq lt!8334 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000)))))))

(declare-fun b!16348 () Bool)

(declare-fun res!12787 () Bool)

(assert (=> b!16348 (=> (not res!12787) (not e!8917))))

(declare-datatypes ((array!1228 0))(
  ( (array!1229 (arr!534 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!534 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1228)

(declare-fun qInv!0 (array!1228) Bool)

(assert (=> b!16348 (= res!12787 (qInv!0 q!79))))

(declare-fun b!16349 () Bool)

(declare-fun res!12788 () Bool)

(assert (=> b!16349 (=> (not res!12788) (not e!8917))))

(assert (=> b!16349 (= res!12788 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun res!12789 () Bool)

(assert (=> start!2937 (=> (not res!12789) (not e!8917))))

(assert (=> start!2937 (= res!12789 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2937 e!8917))

(assert (=> start!2937 true))

(declare-fun array_inv!481 (array!1226) Bool)

(assert (=> start!2937 (array_inv!481 iq!146)))

(declare-fun array_inv!482 (array!1228) Bool)

(assert (=> start!2937 (array_inv!482 q!79)))

(declare-fun b!16345 () Bool)

(declare-fun res!12784 () Bool)

(assert (=> b!16345 (=> (not res!12784) (not e!8917))))

(assert (=> b!16345 (= res!12784 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (= (and start!2937 res!12789) b!16348))

(assert (= (and b!16348 res!12787) b!16345))

(assert (= (and b!16345 res!12784) b!16344))

(assert (= (and b!16344 res!12786) b!16349))

(assert (= (and b!16349 res!12788) b!16346))

(assert (= (and b!16346 res!12785) b!16347))

(declare-fun m!26331 () Bool)

(assert (=> b!16344 m!26331))

(declare-fun m!26333 () Bool)

(assert (=> b!16346 m!26333))

(declare-fun m!26335 () Bool)

(assert (=> b!16346 m!26335))

(assert (=> b!16346 m!26335))

(declare-fun m!26337 () Bool)

(assert (=> b!16346 m!26337))

(declare-fun m!26339 () Bool)

(assert (=> b!16348 m!26339))

(declare-fun m!26341 () Bool)

(assert (=> start!2937 m!26341))

(declare-fun m!26343 () Bool)

(assert (=> start!2937 m!26343))

(push 1)

(assert (not start!2937))

(assert (not b!16346))

(assert (not b!16344))

(assert (not b!16348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

