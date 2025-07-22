; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2865 () Bool)

(assert start!2865)

(declare-datatypes ((array!1186 0))(
  ( (array!1187 (arr!517 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!517 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1186)

(declare-datatypes ((Unit!1646 0))(
  ( (Unit!1647) )
))
(declare-datatypes ((array!1188 0))(
  ( (array!1189 (arr!518 (Array (_ BitVec 32) (_ BitVec 32))) (size!518 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!410 0))(
  ( (tuple4!411 (_1!404 Unit!1646) (_2!404 array!1188) (_3!336 (_ BitVec 32)) (_4!205 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8708 () tuple4!410)

(declare-fun b!15753 () Bool)

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun lt!8197 () array!1188)

(declare-fun lt!8195 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1186 array!1188 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!410)

(assert (=> b!15753 (= e!8708 (computeModuloWhile!0 jz!20 q!31 lt!8197 jz!20 lt!8195))))

(declare-fun b!15754 () Bool)

(declare-fun res!12236 () Bool)

(declare-fun e!8709 () Bool)

(assert (=> b!15754 (=> (not res!12236) (not e!8709))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!8196 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun iq!76 () array!1188)

(declare-fun iqInv!0 (array!1188) Bool)

(assert (=> b!15754 (= res!12236 (iqInv!0 (array!1189 (store (arr!518 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8196 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8196) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8196))) (size!518 iq!76))))))

(declare-fun b!15755 () Bool)

(declare-fun res!12239 () Bool)

(declare-fun e!8711 () Bool)

(assert (=> b!15755 (=> (not res!12239) (not e!8711))))

(assert (=> b!15755 (= res!12239 (and (bvsge (select (arr!518 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15756 () Bool)

(declare-fun e!8712 () Bool)

(assert (=> b!15756 (= e!8712 e!8711)))

(declare-fun res!12241 () Bool)

(assert (=> b!15756 (=> (not res!12241) (not e!8711))))

(declare-fun lt!8194 () (_ FloatingPoint 11 53))

(declare-fun lt!8198 () tuple4!410)

(assert (=> b!15756 (= res!12241 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8194) (fp.lt lt!8194 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!518 (_2!404 lt!8198)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15756 (= lt!8194 (fp.sub roundNearestTiesToEven (_4!205 lt!8198) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!205 lt!8198) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!205 lt!8198) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!205 lt!8198) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!205 lt!8198) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15756 (= lt!8198 e!8708)))

(declare-fun c!1970 () Bool)

(assert (=> b!15756 (= c!1970 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!15756 (= lt!8195 (select (arr!517 q!31) jz!20))))

(assert (=> b!15756 (= lt!8197 (array!1189 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!12235 () Bool)

(assert (=> start!2865 (=> (not res!12235) (not e!8712))))

(assert (=> start!2865 (= res!12235 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2865 e!8712))

(assert (=> start!2865 true))

(declare-fun array_inv!465 (array!1186) Bool)

(assert (=> start!2865 (array_inv!465 q!31)))

(declare-fun array_inv!466 (array!1188) Bool)

(assert (=> start!2865 (array_inv!466 iq!76)))

(declare-fun b!15757 () Bool)

(declare-fun res!12237 () Bool)

(assert (=> b!15757 (=> (not res!12237) (not e!8712))))

(declare-fun qInv!0 (array!1186) Bool)

(assert (=> b!15757 (= res!12237 (qInv!0 q!31))))

(declare-fun b!15758 () Bool)

(declare-fun Unit!1648 () Unit!1646)

(assert (=> b!15758 (= e!8708 (tuple4!411 Unit!1648 lt!8197 jz!20 lt!8195))))

(declare-fun b!15759 () Bool)

(declare-fun res!12242 () Bool)

(assert (=> b!15759 (=> (not res!12242) (not e!8711))))

(assert (=> b!15759 (= res!12242 (iqInv!0 iq!76))))

(declare-fun b!15760 () Bool)

(declare-fun e!8713 () Bool)

(assert (=> b!15760 (= e!8711 e!8713)))

(declare-fun res!12238 () Bool)

(assert (=> b!15760 (=> (not res!12238) (not e!8713))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15760 (= res!12238 (QInt!0 lt!8196))))

(assert (=> b!15760 (= lt!8196 (select (arr!518 iq!76) i!142))))

(declare-fun b!15761 () Bool)

(assert (=> b!15761 (= e!8713 e!8709)))

(declare-fun res!12240 () Bool)

(assert (=> b!15761 (=> (not res!12240) (not e!8709))))

(declare-fun lt!8193 () (_ BitVec 32))

(assert (=> b!15761 (= res!12240 (and (bvsge lt!8193 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!8193) (bvsle lt!8193 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15761 (= lt!8193 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!15762 () Bool)

(assert (=> b!15762 (= e!8709 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2865 res!12235) b!15757))

(assert (= (and b!15757 res!12237) b!15756))

(assert (= (and b!15756 c!1970) b!15753))

(assert (= (and b!15756 (not c!1970)) b!15758))

(assert (= (and b!15756 res!12241) b!15759))

(assert (= (and b!15759 res!12242) b!15755))

(assert (= (and b!15755 res!12239) b!15760))

(assert (= (and b!15760 res!12238) b!15761))

(assert (= (and b!15761 res!12240) b!15754))

(assert (= (and b!15754 res!12236) b!15762))

(declare-fun m!25129 () Bool)

(assert (=> b!15756 m!25129))

(declare-fun m!25131 () Bool)

(assert (=> b!15756 m!25131))

(declare-fun m!25133 () Bool)

(assert (=> b!15753 m!25133))

(declare-fun m!25135 () Bool)

(assert (=> b!15754 m!25135))

(declare-fun m!25137 () Bool)

(assert (=> b!15754 m!25137))

(declare-fun m!25139 () Bool)

(assert (=> b!15757 m!25139))

(declare-fun m!25141 () Bool)

(assert (=> start!2865 m!25141))

(declare-fun m!25143 () Bool)

(assert (=> start!2865 m!25143))

(declare-fun m!25145 () Bool)

(assert (=> b!15759 m!25145))

(declare-fun m!25147 () Bool)

(assert (=> b!15755 m!25147))

(declare-fun m!25149 () Bool)

(assert (=> b!15760 m!25149))

(declare-fun m!25151 () Bool)

(assert (=> b!15760 m!25151))

(push 1)

(assert (not b!15753))

(assert (not b!15760))

(assert (not b!15754))

(assert (not b!15759))

(assert (not b!15757))

(assert (not start!2865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

