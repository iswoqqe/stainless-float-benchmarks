; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2863 () Bool)

(assert start!2863)

(declare-fun b!15725 () Bool)

(declare-fun res!12217 () Bool)

(declare-fun e!8690 () Bool)

(assert (=> b!15725 (=> (not res!12217) (not e!8690))))

(declare-datatypes ((array!1182 0))(
  ( (array!1183 (arr!515 (Array (_ BitVec 32) (_ BitVec 32))) (size!515 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1182)

(declare-fun iqInv!0 (array!1182) Bool)

(assert (=> b!15725 (= res!12217 (iqInv!0 iq!76))))

(declare-datatypes ((Unit!1643 0))(
  ( (Unit!1644) )
))
(declare-datatypes ((tuple4!408 0))(
  ( (tuple4!409 (_1!403 Unit!1643) (_2!403 array!1182) (_3!335 (_ BitVec 32)) (_4!204 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8692 () tuple4!408)

(declare-fun lt!8176 () (_ FloatingPoint 11 53))

(declare-fun b!15726 () Bool)

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun lt!8180 () array!1182)

(declare-fun Unit!1645 () Unit!1643)

(assert (=> b!15726 (= e!8692 (tuple4!409 Unit!1645 lt!8180 jz!20 lt!8176))))

(declare-fun res!12216 () Bool)

(declare-fun e!8689 () Bool)

(assert (=> start!2863 (=> (not res!12216) (not e!8689))))

(assert (=> start!2863 (= res!12216 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2863 e!8689))

(assert (=> start!2863 true))

(declare-datatypes ((array!1184 0))(
  ( (array!1185 (arr!516 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!516 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1184)

(declare-fun array_inv!463 (array!1184) Bool)

(assert (=> start!2863 (array_inv!463 q!31)))

(declare-fun array_inv!464 (array!1182) Bool)

(assert (=> start!2863 (array_inv!464 iq!76)))

(declare-fun b!15727 () Bool)

(declare-fun lt!8179 () (_ BitVec 32))

(assert (=> b!15727 (= e!8690 (and (bvsge lt!8179 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!8179) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!15727 (= lt!8179 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!15728 () Bool)

(assert (=> b!15728 (= e!8689 e!8690)))

(declare-fun res!12213 () Bool)

(assert (=> b!15728 (=> (not res!12213) (not e!8690))))

(declare-fun lt!8178 () tuple4!408)

(declare-fun lt!8177 () (_ FloatingPoint 11 53))

(assert (=> b!15728 (= res!12213 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8177) (fp.lt lt!8177 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!515 (_2!403 lt!8178)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15728 (= lt!8177 (fp.sub roundNearestTiesToEven (_4!204 lt!8178) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!204 lt!8178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!204 lt!8178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!204 lt!8178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!204 lt!8178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15728 (= lt!8178 e!8692)))

(declare-fun c!1967 () Bool)

(assert (=> b!15728 (= c!1967 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!15728 (= lt!8176 (select (arr!516 q!31) jz!20))))

(assert (=> b!15728 (= lt!8180 (array!1183 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15729 () Bool)

(declare-fun res!12218 () Bool)

(assert (=> b!15729 (=> (not res!12218) (not e!8690))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15729 (= res!12218 (QInt!0 (select (arr!515 iq!76) i!142)))))

(declare-fun b!15730 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1184 array!1182 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!408)

(assert (=> b!15730 (= e!8692 (computeModuloWhile!0 jz!20 q!31 lt!8180 jz!20 lt!8176))))

(declare-fun b!15731 () Bool)

(declare-fun res!12214 () Bool)

(assert (=> b!15731 (=> (not res!12214) (not e!8689))))

(declare-fun qInv!0 (array!1184) Bool)

(assert (=> b!15731 (= res!12214 (qInv!0 q!31))))

(declare-fun b!15732 () Bool)

(declare-fun res!12215 () Bool)

(assert (=> b!15732 (=> (not res!12215) (not e!8690))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!15732 (= res!12215 (and (bvsge (select (arr!515 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (= (and start!2863 res!12216) b!15731))

(assert (= (and b!15731 res!12214) b!15728))

(assert (= (and b!15728 c!1967) b!15730))

(assert (= (and b!15728 (not c!1967)) b!15726))

(assert (= (and b!15728 res!12213) b!15725))

(assert (= (and b!15725 res!12217) b!15732))

(assert (= (and b!15732 res!12215) b!15729))

(assert (= (and b!15729 res!12218) b!15727))

(declare-fun m!25109 () Bool)

(assert (=> b!15731 m!25109))

(declare-fun m!25111 () Bool)

(assert (=> b!15732 m!25111))

(declare-fun m!25113 () Bool)

(assert (=> b!15728 m!25113))

(declare-fun m!25115 () Bool)

(assert (=> b!15728 m!25115))

(declare-fun m!25117 () Bool)

(assert (=> start!2863 m!25117))

(declare-fun m!25119 () Bool)

(assert (=> start!2863 m!25119))

(declare-fun m!25121 () Bool)

(assert (=> b!15725 m!25121))

(declare-fun m!25123 () Bool)

(assert (=> b!15729 m!25123))

(assert (=> b!15729 m!25123))

(declare-fun m!25125 () Bool)

(assert (=> b!15729 m!25125))

(declare-fun m!25127 () Bool)

(assert (=> b!15730 m!25127))

(push 1)

(assert (not b!15731))

(assert (not b!15729))

(assert (not b!15725))

(assert (not b!15730))

(assert (not start!2863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

