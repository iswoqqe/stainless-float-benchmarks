; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3035 () Bool)

(assert start!3035)

(declare-fun b!16836 () Bool)

(declare-fun e!9177 () Bool)

(declare-fun e!9178 () Bool)

(assert (=> b!16836 (= e!9177 e!9178)))

(declare-fun res!13280 () Bool)

(assert (=> b!16836 (=> (not res!13280) (not e!9178))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun lt!8379 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1320 0))(
  ( (array!1321 (arr!575 (Array (_ BitVec 32) (_ BitVec 32))) (size!575 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1320)

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16836 (= res!13280 (QInt!0 (select (store (arr!575 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16836 (= lt!8379 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16837 () Bool)

(declare-fun res!13282 () Bool)

(assert (=> b!16837 (=> (not res!13282) (not e!9177))))

(assert (=> b!16837 (= res!13282 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16838 () Bool)

(declare-fun res!13283 () Bool)

(assert (=> b!16838 (=> (not res!13283) (not e!9178))))

(assert (=> b!16838 (= res!13283 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8379) (fp.leq lt!8379 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16839 () Bool)

(declare-fun res!13284 () Bool)

(assert (=> b!16839 (=> (not res!13284) (not e!9177))))

(assert (=> b!16839 (= res!13284 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun res!13277 () Bool)

(assert (=> start!3035 (=> (not res!13277) (not e!9177))))

(assert (=> start!3035 (= res!13277 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3035 e!9177))

(assert (=> start!3035 true))

(declare-fun array_inv!523 (array!1320) Bool)

(assert (=> start!3035 (array_inv!523 iq!146)))

(declare-datatypes ((array!1322 0))(
  ( (array!1323 (arr!576 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!576 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1322)

(declare-fun array_inv!524 (array!1322) Bool)

(assert (=> start!3035 (array_inv!524 q!79)))

(declare-fun b!16840 () Bool)

(declare-fun e!9174 () Bool)

(declare-datatypes ((Unit!1667 0))(
  ( (Unit!1668) )
))
(declare-datatypes ((tuple4!422 0))(
  ( (tuple4!423 (_1!410 Unit!1667) (_2!410 array!1320) (_3!342 (_ BitVec 32)) (_4!211 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8378 () tuple4!422)

(assert (=> b!16840 (= e!9174 false)))

(declare-fun lt!8377 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1322 array!1320 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!422)

(assert (=> b!16840 (= lt!8378 (computeModuloWhile!0 jz!49 q!79 (array!1321 (store (arr!575 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8379))))))) (size!575 iq!146)) lt!8377 (fp.add roundNearestTiesToEven (select (arr!576 q!79) (bvsub j!78 #b00000000000000000000000000000001)) lt!8379)))))

(declare-fun b!16841 () Bool)

(declare-fun res!13278 () Bool)

(assert (=> b!16841 (=> (not res!13278) (not e!9177))))

(declare-fun iqInv!0 (array!1320) Bool)

(assert (=> b!16841 (= res!13278 (iqInv!0 iq!146))))

(declare-fun b!16842 () Bool)

(declare-fun res!13281 () Bool)

(assert (=> b!16842 (=> (not res!13281) (not e!9178))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16842 (= res!13281 (P!3 (select (arr!576 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16843 () Bool)

(declare-fun res!13279 () Bool)

(assert (=> b!16843 (=> (not res!13279) (not e!9177))))

(declare-fun qInv!0 (array!1322) Bool)

(assert (=> b!16843 (= res!13279 (qInv!0 q!79))))

(declare-fun b!16844 () Bool)

(assert (=> b!16844 (= e!9178 e!9174)))

(declare-fun res!13276 () Bool)

(assert (=> b!16844 (=> (not res!13276) (not e!9174))))

(assert (=> b!16844 (= res!13276 (bvsgt lt!8377 #b00000000000000000000000000000000))))

(assert (=> b!16844 (= lt!8377 (bvsub j!78 #b00000000000000000000000000000001))))

(assert (= (and start!3035 res!13277) b!16843))

(assert (= (and b!16843 res!13279) b!16837))

(assert (= (and b!16837 res!13282) b!16841))

(assert (= (and b!16841 res!13278) b!16839))

(assert (= (and b!16839 res!13284) b!16836))

(assert (= (and b!16836 res!13280) b!16838))

(assert (= (and b!16838 res!13283) b!16842))

(assert (= (and b!16842 res!13281) b!16844))

(assert (= (and b!16844 res!13276) b!16840))

(declare-fun m!26839 () Bool)

(assert (=> b!16842 m!26839))

(assert (=> b!16842 m!26839))

(declare-fun m!26841 () Bool)

(assert (=> b!16842 m!26841))

(declare-fun m!26843 () Bool)

(assert (=> start!3035 m!26843))

(declare-fun m!26845 () Bool)

(assert (=> start!3035 m!26845))

(declare-fun m!26847 () Bool)

(assert (=> b!16836 m!26847))

(declare-fun m!26849 () Bool)

(assert (=> b!16836 m!26849))

(assert (=> b!16836 m!26849))

(declare-fun m!26851 () Bool)

(assert (=> b!16836 m!26851))

(assert (=> b!16840 m!26847))

(assert (=> b!16840 m!26839))

(declare-fun m!26853 () Bool)

(assert (=> b!16840 m!26853))

(declare-fun m!26855 () Bool)

(assert (=> b!16843 m!26855))

(declare-fun m!26857 () Bool)

(assert (=> b!16841 m!26857))

(push 1)

(assert (not start!3035))

(assert (not b!16841))

(assert (not b!16836))

(assert (not b!16842))

(assert (not b!16843))

(assert (not b!16840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

