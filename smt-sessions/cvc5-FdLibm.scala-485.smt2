; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2707 () Bool)

(assert start!2707)

(declare-datatypes ((array!1080 0))(
  ( (array!1081 (arr!473 (Array (_ BitVec 32) (_ BitVec 32))) (size!473 (_ BitVec 32))) )
))
(declare-fun lt!7628 () array!1080)

(declare-datatypes ((array!1082 0))(
  ( (array!1083 (arr!474 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!474 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1082)

(declare-fun b!14785 () Bool)

(declare-fun lt!7625 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-datatypes ((Unit!1562 0))(
  ( (Unit!1563) )
))
(declare-datatypes ((tuple4!354 0))(
  ( (tuple4!355 (_1!376 Unit!1562) (_2!376 array!1080) (_3!308 (_ BitVec 32)) (_4!177 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8137 () tuple4!354)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1082 array!1080 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!354)

(assert (=> b!14785 (= e!8137 (computeModuloWhile!0 jz!20 q!31 lt!7628 jz!20 lt!7625))))

(declare-fun b!14787 () Bool)

(declare-fun e!8139 () Bool)

(declare-fun e!8135 () Bool)

(assert (=> b!14787 (= e!8139 e!8135)))

(declare-fun res!11499 () Bool)

(assert (=> b!14787 (=> (not res!11499) (not e!8135))))

(declare-fun lt!7629 () (_ BitVec 32))

(assert (=> b!14787 (= res!11499 (bvslt lt!7629 (bvsub jz!20 #b00000000000000000000000000000001)))))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!14787 (= lt!7629 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun lt!7624 () array!1080)

(declare-fun e!8140 () tuple4!354)

(declare-fun lt!7630 () (_ FloatingPoint 11 53))

(declare-fun b!14788 () Bool)

(assert (=> b!14788 (= e!8140 (computeModuloWhile!0 jz!20 q!31 lt!7624 jz!20 lt!7630))))

(declare-fun b!14789 () Bool)

(declare-fun Unit!1564 () Unit!1562)

(assert (=> b!14789 (= e!8140 (tuple4!355 Unit!1564 lt!7624 jz!20 lt!7630))))

(declare-fun b!14790 () Bool)

(declare-fun e!8134 () Bool)

(assert (=> b!14790 (= e!8134 e!8139)))

(declare-fun res!11503 () Bool)

(assert (=> b!14790 (=> (not res!11503) (not e!8139))))

(declare-fun lt!7627 () (_ FloatingPoint 11 53))

(declare-fun lt!7626 () tuple4!354)

(assert (=> b!14790 (= res!11503 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7627) (fp.lt lt!7627 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!473 (_2!376 lt!7626)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14790 (= lt!7627 (fp.sub roundNearestTiesToEven (_4!177 lt!7626) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!177 lt!7626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!177 lt!7626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!177 lt!7626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!177 lt!7626) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14790 (= lt!7626 e!8137)))

(declare-fun c!1855 () Bool)

(assert (=> b!14790 (= c!1855 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14790 (= lt!7625 (select (arr!474 q!31) jz!20))))

(assert (=> b!14790 (= lt!7628 (array!1081 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14791 () Bool)

(declare-fun Unit!1565 () Unit!1562)

(assert (=> b!14791 (= e!8137 (tuple4!355 Unit!1565 lt!7628 jz!20 lt!7625))))

(declare-fun b!14786 () Bool)

(declare-fun res!11504 () Bool)

(assert (=> b!14786 (=> (not res!11504) (not e!8139))))

(declare-fun iq!76 () array!1080)

(declare-fun iqInv!0 (array!1080) Bool)

(assert (=> b!14786 (= res!11504 (iqInv!0 iq!76))))

(declare-fun res!11500 () Bool)

(assert (=> start!2707 (=> (not res!11500) (not e!8134))))

(assert (=> start!2707 (= res!11500 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2707 e!8134))

(assert (=> start!2707 true))

(declare-fun array_inv!422 (array!1082) Bool)

(assert (=> start!2707 (array_inv!422 q!31)))

(declare-fun array_inv!423 (array!1080) Bool)

(assert (=> start!2707 (array_inv!423 iq!76)))

(declare-fun b!14792 () Bool)

(declare-fun res!11502 () Bool)

(assert (=> b!14792 (=> (not res!11502) (not e!8139))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!14792 (= res!11502 (and (bvsge (select (arr!473 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun lt!7632 () tuple4!354)

(declare-fun lt!7631 () (_ FloatingPoint 11 53))

(declare-fun b!14793 () Bool)

(assert (=> b!14793 (= e!8135 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7631) (fp.lt lt!7631 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!473 (_2!376 lt!7632)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsge lt!7629 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14793 (= lt!7631 (fp.sub roundNearestTiesToEven (_4!177 lt!7632) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!177 lt!7632) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!177 lt!7632) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!177 lt!7632) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!177 lt!7632) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14793 (= lt!7632 e!8140)))

(declare-fun c!1854 () Bool)

(assert (=> b!14793 (= c!1854 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14793 (= lt!7630 (select (arr!474 q!31) jz!20))))

(assert (=> b!14793 (= lt!7624 (array!1081 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14794 () Bool)

(declare-fun res!11501 () Bool)

(assert (=> b!14794 (=> (not res!11501) (not e!8134))))

(declare-fun qInv!0 (array!1082) Bool)

(assert (=> b!14794 (= res!11501 (qInv!0 q!31))))

(declare-fun b!14795 () Bool)

(declare-fun res!11505 () Bool)

(assert (=> b!14795 (=> (not res!11505) (not e!8139))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14795 (= res!11505 (QInt!0 (select (arr!473 iq!76) i!142)))))

(assert (= (and start!2707 res!11500) b!14794))

(assert (= (and b!14794 res!11501) b!14790))

(assert (= (and b!14790 c!1855) b!14785))

(assert (= (and b!14790 (not c!1855)) b!14791))

(assert (= (and b!14790 res!11503) b!14786))

(assert (= (and b!14786 res!11504) b!14792))

(assert (= (and b!14792 res!11502) b!14795))

(assert (= (and b!14795 res!11505) b!14787))

(assert (= (and b!14787 res!11499) b!14793))

(assert (= (and b!14793 c!1854) b!14788))

(assert (= (and b!14793 (not c!1854)) b!14789))

(declare-fun m!24253 () Bool)

(assert (=> b!14786 m!24253))

(declare-fun m!24255 () Bool)

(assert (=> b!14794 m!24255))

(declare-fun m!24257 () Bool)

(assert (=> start!2707 m!24257))

(declare-fun m!24259 () Bool)

(assert (=> start!2707 m!24259))

(declare-fun m!24261 () Bool)

(assert (=> b!14788 m!24261))

(declare-fun m!24263 () Bool)

(assert (=> b!14795 m!24263))

(assert (=> b!14795 m!24263))

(declare-fun m!24265 () Bool)

(assert (=> b!14795 m!24265))

(declare-fun m!24267 () Bool)

(assert (=> b!14793 m!24267))

(declare-fun m!24269 () Bool)

(assert (=> b!14793 m!24269))

(declare-fun m!24271 () Bool)

(assert (=> b!14790 m!24271))

(assert (=> b!14790 m!24269))

(declare-fun m!24273 () Bool)

(assert (=> b!14785 m!24273))

(declare-fun m!24275 () Bool)

(assert (=> b!14792 m!24275))

(push 1)

(assert (not b!14786))

(assert (not start!2707))

(assert (not b!14785))

(assert (not b!14788))

(assert (not b!14794))

(assert (not b!14795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

