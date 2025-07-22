; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2829 () Bool)

(assert start!2829)

(declare-fun b!15529 () Bool)

(declare-fun e!8575 () Bool)

(declare-datatypes ((Unit!1628 0))(
  ( (Unit!1629) )
))
(declare-datatypes ((array!1166 0))(
  ( (array!1167 (arr!509 (Array (_ BitVec 32) (_ BitVec 32))) (size!509 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!396 0))(
  ( (tuple4!397 (_1!397 Unit!1628) (_2!397 (_ BitVec 32)) (_3!329 array!1166) (_4!198 (_ BitVec 32))) )
))
(declare-fun lt!8039 () tuple4!396)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15529 (= e!8575 (and (bvsge (select (arr!509 (_3!329 lt!8039)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= (_4!198 lt!8039) #b00000000000000000000000000000000) (= (_4!198 lt!8039) #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15530 () Bool)

(declare-fun e!8571 () Bool)

(declare-fun e!8577 () Bool)

(assert (=> b!15530 (= e!8571 e!8577)))

(declare-fun res!12071 () Bool)

(assert (=> b!15530 (=> (not res!12071) (not e!8577))))

(declare-fun lt!8040 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15530 (= res!12071 (QInt!0 lt!8040))))

(declare-fun iq!76 () array!1166)

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!15530 (= lt!8040 (select (arr!509 iq!76) i!142))))

(declare-fun b!15531 () Bool)

(declare-fun res!12079 () Bool)

(assert (=> b!15531 (=> (not res!12079) (not e!8571))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!15531 (= res!12079 (and (bvsge (select (arr!509 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun res!12077 () Bool)

(declare-fun e!8573 () Bool)

(assert (=> start!2829 (=> (not res!12077) (not e!8573))))

(assert (=> start!2829 (= res!12077 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2829 e!8573))

(assert (=> start!2829 true))

(declare-datatypes ((array!1168 0))(
  ( (array!1169 (arr!510 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!510 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1168)

(declare-fun array_inv!457 (array!1168) Bool)

(assert (=> start!2829 (array_inv!457 q!31)))

(declare-fun array_inv!458 (array!1166) Bool)

(assert (=> start!2829 (array_inv!458 iq!76)))

(declare-fun b!15532 () Bool)

(declare-fun e!8572 () Bool)

(assert (=> b!15532 (= e!8572 e!8575)))

(declare-fun res!12074 () Bool)

(assert (=> b!15532 (=> (not res!12074) (not e!8575))))

(assert (=> b!15532 (= res!12074 (and (bvsle #b00000000000000000000000000000000 (_2!397 lt!8039)) (bvsle (_2!397 lt!8039) (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun lt!8037 () (_ BitVec 32))

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!1168 (_ BitVec 32) array!1166 (_ BitVec 32)) tuple4!396)

(assert (=> b!15532 (= lt!8039 (computeModuloWhile!3 jz!20 q!31 lt!8037 (array!1167 (store (arr!509 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8040 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8040) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8040))) (size!509 iq!76)) (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!8040 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33)))))

(declare-fun b!15533 () Bool)

(assert (=> b!15533 (= e!8573 e!8571)))

(declare-fun res!12078 () Bool)

(assert (=> b!15533 (=> (not res!12078) (not e!8571))))

(declare-fun lt!8041 () (_ FloatingPoint 11 53))

(declare-datatypes ((tuple4!398 0))(
  ( (tuple4!399 (_1!398 Unit!1628) (_2!398 array!1166) (_3!330 (_ BitVec 32)) (_4!199 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8036 () tuple4!398)

(assert (=> b!15533 (= res!12078 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8041) (fp.lt lt!8041 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!509 (_2!398 lt!8036)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15533 (= lt!8041 (fp.sub roundNearestTiesToEven (_4!199 lt!8036) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!199 lt!8036) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!199 lt!8036) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!199 lt!8036) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!199 lt!8036) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8574 () tuple4!398)

(assert (=> b!15533 (= lt!8036 e!8574)))

(declare-fun c!1940 () Bool)

(assert (=> b!15533 (= c!1940 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!8042 () (_ FloatingPoint 11 53))

(assert (=> b!15533 (= lt!8042 (select (arr!510 q!31) jz!20))))

(declare-fun lt!8038 () array!1166)

(assert (=> b!15533 (= lt!8038 (array!1167 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15534 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1168 array!1166 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!398)

(assert (=> b!15534 (= e!8574 (computeModuloWhile!0 jz!20 q!31 lt!8038 jz!20 lt!8042))))

(declare-fun b!15535 () Bool)

(assert (=> b!15535 (= e!8577 e!8572)))

(declare-fun res!12075 () Bool)

(assert (=> b!15535 (=> (not res!12075) (not e!8572))))

(assert (=> b!15535 (= res!12075 (bvslt lt!8037 (bvsub jz!20 #b00000000000000000000000000000001)))))

(assert (=> b!15535 (= lt!8037 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!15536 () Bool)

(declare-fun res!12073 () Bool)

(assert (=> b!15536 (=> (not res!12073) (not e!8575))))

(declare-fun iqInv!0 (array!1166) Bool)

(assert (=> b!15536 (= res!12073 (iqInv!0 (_3!329 lt!8039)))))

(declare-fun b!15537 () Bool)

(declare-fun res!12072 () Bool)

(assert (=> b!15537 (=> (not res!12072) (not e!8571))))

(assert (=> b!15537 (= res!12072 (iqInv!0 iq!76))))

(declare-fun b!15538 () Bool)

(declare-fun Unit!1630 () Unit!1628)

(assert (=> b!15538 (= e!8574 (tuple4!399 Unit!1630 lt!8038 jz!20 lt!8042))))

(declare-fun b!15539 () Bool)

(declare-fun res!12076 () Bool)

(assert (=> b!15539 (=> (not res!12076) (not e!8573))))

(declare-fun qInv!0 (array!1168) Bool)

(assert (=> b!15539 (= res!12076 (qInv!0 q!31))))

(assert (= (and start!2829 res!12077) b!15539))

(assert (= (and b!15539 res!12076) b!15533))

(assert (= (and b!15533 c!1940) b!15534))

(assert (= (and b!15533 (not c!1940)) b!15538))

(assert (= (and b!15533 res!12078) b!15537))

(assert (= (and b!15537 res!12072) b!15531))

(assert (= (and b!15531 res!12079) b!15530))

(assert (= (and b!15530 res!12071) b!15535))

(assert (= (and b!15535 res!12075) b!15532))

(assert (= (and b!15532 res!12074) b!15536))

(assert (= (and b!15536 res!12073) b!15529))

(declare-fun m!24967 () Bool)

(assert (=> b!15531 m!24967))

(declare-fun m!24969 () Bool)

(assert (=> b!15530 m!24969))

(declare-fun m!24971 () Bool)

(assert (=> b!15530 m!24971))

(declare-fun m!24973 () Bool)

(assert (=> b!15529 m!24973))

(declare-fun m!24975 () Bool)

(assert (=> b!15532 m!24975))

(declare-fun m!24977 () Bool)

(assert (=> b!15532 m!24977))

(declare-fun m!24979 () Bool)

(assert (=> b!15539 m!24979))

(declare-fun m!24981 () Bool)

(assert (=> b!15534 m!24981))

(declare-fun m!24983 () Bool)

(assert (=> b!15537 m!24983))

(declare-fun m!24985 () Bool)

(assert (=> b!15536 m!24985))

(declare-fun m!24987 () Bool)

(assert (=> start!2829 m!24987))

(declare-fun m!24989 () Bool)

(assert (=> start!2829 m!24989))

(declare-fun m!24991 () Bool)

(assert (=> b!15533 m!24991))

(declare-fun m!24993 () Bool)

(assert (=> b!15533 m!24993))

(push 1)

(assert (not start!2829))

(assert (not b!15534))

(assert (not b!15539))

(assert (not b!15532))

(assert (not b!15536))

(assert (not b!15530))

(assert (not b!15537))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

