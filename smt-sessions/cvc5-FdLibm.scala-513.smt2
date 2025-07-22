; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2923 () Bool)

(assert start!2923)

(declare-fun b!16303 () Bool)

(declare-fun e!8887 () Bool)

(declare-fun e!8888 () Bool)

(assert (=> b!16303 (= e!8887 e!8888)))

(declare-fun res!12746 () Bool)

(assert (=> b!16303 (=> (not res!12746) (not e!8888))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-datatypes ((array!1216 0))(
  ( (array!1217 (arr!529 (Array (_ BitVec 32) (_ BitVec 32))) (size!529 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1216)

(declare-fun jz!49 () (_ BitVec 32))

(declare-fun lt!8331 () (_ FloatingPoint 11 53))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16303 (= res!12746 (QInt!0 (select (store (arr!529 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8331))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8331)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8331)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8331))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16303 (= lt!8331 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16304 () Bool)

(declare-fun res!12749 () Bool)

(assert (=> b!16304 (=> (not res!12749) (not e!8887))))

(declare-datatypes ((array!1218 0))(
  ( (array!1219 (arr!530 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!530 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1218)

(declare-fun qInv!0 (array!1218) Bool)

(assert (=> b!16304 (= res!12749 (qInv!0 q!79))))

(declare-fun b!16305 () Bool)

(declare-fun res!12750 () Bool)

(assert (=> b!16305 (=> (not res!12750) (not e!8887))))

(assert (=> b!16305 (= res!12750 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun b!16306 () Bool)

(declare-fun res!12748 () Bool)

(assert (=> b!16306 (=> (not res!12748) (not e!8888))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16306 (= res!12748 (P!3 (select (arr!530 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16307 () Bool)

(declare-fun res!12743 () Bool)

(assert (=> b!16307 (=> (not res!12743) (not e!8888))))

(assert (=> b!16307 (= res!12743 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8331) (fp.leq lt!8331 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16308 () Bool)

(declare-fun lt!8330 () (_ BitVec 32))

(assert (=> b!16308 (= e!8888 (and (bvsgt lt!8330 #b00000000000000000000000000000000) (bvsle lt!8330 #b00000000000000000000000000000000)))))

(assert (=> b!16308 (= lt!8330 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!16309 () Bool)

(declare-fun res!12747 () Bool)

(assert (=> b!16309 (=> (not res!12747) (not e!8887))))

(declare-fun iqInv!0 (array!1216) Bool)

(assert (=> b!16309 (= res!12747 (iqInv!0 iq!146))))

(declare-fun res!12745 () Bool)

(assert (=> start!2923 (=> (not res!12745) (not e!8887))))

(assert (=> start!2923 (= res!12745 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2923 e!8887))

(assert (=> start!2923 true))

(declare-fun array_inv!477 (array!1216) Bool)

(assert (=> start!2923 (array_inv!477 iq!146)))

(declare-fun array_inv!478 (array!1218) Bool)

(assert (=> start!2923 (array_inv!478 q!79)))

(declare-fun b!16310 () Bool)

(declare-fun res!12744 () Bool)

(assert (=> b!16310 (=> (not res!12744) (not e!8887))))

(assert (=> b!16310 (= res!12744 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (= (and start!2923 res!12745) b!16304))

(assert (= (and b!16304 res!12749) b!16310))

(assert (= (and b!16310 res!12744) b!16309))

(assert (= (and b!16309 res!12747) b!16305))

(assert (= (and b!16305 res!12750) b!16303))

(assert (= (and b!16303 res!12746) b!16307))

(assert (= (and b!16307 res!12743) b!16306))

(assert (= (and b!16306 res!12748) b!16308))

(declare-fun m!26295 () Bool)

(assert (=> b!16303 m!26295))

(declare-fun m!26297 () Bool)

(assert (=> b!16303 m!26297))

(assert (=> b!16303 m!26297))

(declare-fun m!26299 () Bool)

(assert (=> b!16303 m!26299))

(declare-fun m!26301 () Bool)

(assert (=> b!16304 m!26301))

(declare-fun m!26303 () Bool)

(assert (=> b!16309 m!26303))

(declare-fun m!26305 () Bool)

(assert (=> start!2923 m!26305))

(declare-fun m!26307 () Bool)

(assert (=> start!2923 m!26307))

(declare-fun m!26309 () Bool)

(assert (=> b!16306 m!26309))

(assert (=> b!16306 m!26309))

(declare-fun m!26311 () Bool)

(assert (=> b!16306 m!26311))

(push 1)

(assert (not b!16304))

(assert (not b!16306))

(assert (not start!2923))

(assert (not b!16309))

(assert (not b!16303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

