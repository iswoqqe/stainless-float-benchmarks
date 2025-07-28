; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3033 () Bool)

(assert start!3033)

(declare-fun b!16809 () Bool)

(declare-fun e!9162 () Bool)

(declare-datatypes ((Unit!1665 0))(
  ( (Unit!1666) )
))
(declare-datatypes ((array!1316 0))(
  ( (array!1317 (arr!573 (Array (_ BitVec 32) (_ BitVec 32))) (size!573 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!420 0))(
  ( (tuple4!421 (_1!409 Unit!1665) (_2!409 array!1316) (_3!341 (_ BitVec 32)) (_4!210 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8369 () tuple4!420)

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!16809 (= e!9162 false)))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun lt!8368 () (_ BitVec 32))

(declare-fun lt!8370 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun iq!146 () array!1316)

(declare-datatypes ((array!1318 0))(
  ( (array!1319 (arr!574 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!574 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1318)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1318 array!1316 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!420)

(assert (=> b!16809 (= lt!8369 (computeModuloWhile!0 jz!49 q!79 (array!1317 (store (arr!573 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370))))))) (size!573 iq!146)) lt!8368 (fp.add roundNearestTiesToEven (select (arr!574 q!79) (bvsub j!78 #b00000000000000000000000000000001)) lt!8370)))))

(declare-fun b!16810 () Bool)

(declare-fun res!13250 () Bool)

(declare-fun e!9163 () Bool)

(assert (=> b!16810 (=> (not res!13250) (not e!9163))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16810 (= res!13250 (P!3 (select (arr!574 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16811 () Bool)

(declare-fun res!13254 () Bool)

(declare-fun e!9159 () Bool)

(assert (=> b!16811 (=> (not res!13254) (not e!9159))))

(declare-fun iqInv!0 (array!1316) Bool)

(assert (=> b!16811 (= res!13254 (iqInv!0 iq!146))))

(declare-fun b!16812 () Bool)

(declare-fun res!13249 () Bool)

(assert (=> b!16812 (=> (not res!13249) (not e!9159))))

(assert (=> b!16812 (= res!13249 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun res!13256 () Bool)

(assert (=> start!3033 (=> (not res!13256) (not e!9159))))

(assert (=> start!3033 (= res!13256 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3033 e!9159))

(assert (=> start!3033 true))

(declare-fun array_inv!521 (array!1316) Bool)

(assert (=> start!3033 (array_inv!521 iq!146)))

(declare-fun array_inv!522 (array!1318) Bool)

(assert (=> start!3033 (array_inv!522 q!79)))

(declare-fun b!16813 () Bool)

(declare-fun res!13257 () Bool)

(assert (=> b!16813 (=> (not res!13257) (not e!9163))))

(assert (=> b!16813 (= res!13257 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8370) (fp.leq lt!8370 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16814 () Bool)

(assert (=> b!16814 (= e!9159 e!9163)))

(declare-fun res!13253 () Bool)

(assert (=> b!16814 (=> (not res!13253) (not e!9163))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16814 (= res!13253 (QInt!0 (select (store (arr!573 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8370))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16814 (= lt!8370 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16815 () Bool)

(declare-fun res!13251 () Bool)

(assert (=> b!16815 (=> (not res!13251) (not e!9159))))

(assert (=> b!16815 (= res!13251 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16816 () Bool)

(declare-fun res!13252 () Bool)

(assert (=> b!16816 (=> (not res!13252) (not e!9159))))

(declare-fun qInv!0 (array!1318) Bool)

(assert (=> b!16816 (= res!13252 (qInv!0 q!79))))

(declare-fun b!16817 () Bool)

(assert (=> b!16817 (= e!9163 e!9162)))

(declare-fun res!13255 () Bool)

(assert (=> b!16817 (=> (not res!13255) (not e!9162))))

(assert (=> b!16817 (= res!13255 (bvsgt lt!8368 #b00000000000000000000000000000000))))

(assert (=> b!16817 (= lt!8368 (bvsub j!78 #b00000000000000000000000000000001))))

(assert (= (and start!3033 res!13256) b!16816))

(assert (= (and b!16816 res!13252) b!16815))

(assert (= (and b!16815 res!13251) b!16811))

(assert (= (and b!16811 res!13254) b!16812))

(assert (= (and b!16812 res!13249) b!16814))

(assert (= (and b!16814 res!13253) b!16813))

(assert (= (and b!16813 res!13257) b!16810))

(assert (= (and b!16810 res!13250) b!16817))

(assert (= (and b!16817 res!13255) b!16809))

(declare-fun m!26819 () Bool)

(assert (=> b!16809 m!26819))

(declare-fun m!26821 () Bool)

(assert (=> b!16809 m!26821))

(declare-fun m!26823 () Bool)

(assert (=> b!16809 m!26823))

(declare-fun m!26825 () Bool)

(assert (=> b!16811 m!26825))

(assert (=> b!16814 m!26819))

(declare-fun m!26827 () Bool)

(assert (=> b!16814 m!26827))

(assert (=> b!16814 m!26827))

(declare-fun m!26829 () Bool)

(assert (=> b!16814 m!26829))

(assert (=> b!16810 m!26821))

(assert (=> b!16810 m!26821))

(declare-fun m!26831 () Bool)

(assert (=> b!16810 m!26831))

(declare-fun m!26833 () Bool)

(assert (=> start!3033 m!26833))

(declare-fun m!26835 () Bool)

(assert (=> start!3033 m!26835))

(declare-fun m!26837 () Bool)

(assert (=> b!16816 m!26837))

(push 1)

(assert (not b!16811))

(assert (not start!3033))

(assert (not b!16810))

(assert (not b!16816))

(assert (not b!16814))

(assert (not b!16809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

