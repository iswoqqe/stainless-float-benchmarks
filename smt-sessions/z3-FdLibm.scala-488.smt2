; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2543 () Bool)

(assert start!2543)

(declare-fun b!13651 () Bool)

(declare-fun res!10500 () Bool)

(declare-fun e!7862 () Bool)

(assert (=> b!13651 (=> (not res!10500) (not e!7862))))

(declare-datatypes ((array!1081 0))(
  ( (array!1082 (arr!479 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!479 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1081)

(declare-fun qInv!0 (array!1081) Bool)

(assert (=> b!13651 (= res!10500 (qInv!0 q!31))))

(declare-fun b!13652 () Bool)

(declare-fun res!10497 () Bool)

(declare-fun e!7864 () Bool)

(assert (=> b!13652 (=> (not res!10497) (not e!7864))))

(declare-datatypes ((array!1083 0))(
  ( (array!1084 (arr!480 (Array (_ BitVec 32) (_ BitVec 32))) (size!480 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1083)

(declare-fun iqInv!0 (array!1083) Bool)

(assert (=> b!13652 (= res!10497 (iqInv!0 iq!76))))

(declare-fun lt!7386 () (_ FloatingPoint 11 53))

(declare-fun lt!7387 () array!1083)

(declare-fun jz!20 () (_ BitVec 32))

(declare-datatypes ((Unit!1511 0))(
  ( (Unit!1512) )
))
(declare-datatypes ((tuple4!360 0))(
  ( (tuple4!361 (_1!374 Unit!1511) (_2!374 array!1083) (_3!311 (_ BitVec 32)) (_4!180 (_ FloatingPoint 11 53))) )
))
(declare-fun e!7861 () tuple4!360)

(declare-fun b!13653 () Bool)

(declare-fun Unit!1513 () Unit!1511)

(assert (=> b!13653 (= e!7861 (tuple4!361 Unit!1513 lt!7387 jz!20 lt!7386))))

(declare-fun b!13654 () Bool)

(assert (=> b!13654 (= e!7862 e!7864)))

(declare-fun res!10498 () Bool)

(assert (=> b!13654 (=> (not res!10498) (not e!7864))))

(declare-fun lt!7385 () (_ FloatingPoint 11 53))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7388 () tuple4!360)

(assert (=> b!13654 (= res!10498 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7385) (fp.lt lt!7385 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!480 (_2!374 lt!7388)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13654 (= lt!7385 (fp.sub roundNearestTiesToEven (_4!180 lt!7388) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!180 lt!7388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!180 lt!7388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!180 lt!7388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!180 lt!7388) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!13654 (= lt!7388 e!7861)))

(declare-fun c!1788 () Bool)

(assert (=> b!13654 (= c!1788 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!13654 (= lt!7386 (select (arr!479 q!31) jz!20))))

(assert (=> b!13654 (= lt!7387 (array!1084 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!13655 () Bool)

(assert (=> b!13655 (= e!7864 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!10499 () Bool)

(assert (=> start!2543 (=> (not res!10499) (not e!7862))))

(assert (=> start!2543 (= res!10499 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2543 e!7862))

(assert (=> start!2543 true))

(declare-fun array_inv!427 (array!1081) Bool)

(assert (=> start!2543 (array_inv!427 q!31)))

(declare-fun array_inv!428 (array!1083) Bool)

(assert (=> start!2543 (array_inv!428 iq!76)))

(declare-fun b!13656 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1081 array!1083 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!360)

(assert (=> b!13656 (= e!7861 (computeModuloWhile!0 jz!20 q!31 lt!7387 jz!20 lt!7386))))

(assert (= (and start!2543 res!10499) b!13651))

(assert (= (and b!13651 res!10500) b!13654))

(assert (= (and b!13654 c!1788) b!13656))

(assert (= (and b!13654 (not c!1788)) b!13653))

(assert (= (and b!13654 res!10498) b!13652))

(assert (= (and b!13652 res!10497) b!13655))

(declare-fun m!19397 () Bool)

(assert (=> b!13654 m!19397))

(declare-fun m!19399 () Bool)

(assert (=> b!13654 m!19399))

(declare-fun m!19401 () Bool)

(assert (=> start!2543 m!19401))

(declare-fun m!19403 () Bool)

(assert (=> start!2543 m!19403))

(declare-fun m!19405 () Bool)

(assert (=> b!13656 m!19405))

(declare-fun m!19407 () Bool)

(assert (=> b!13652 m!19407))

(declare-fun m!19409 () Bool)

(assert (=> b!13651 m!19409))

(check-sat (not b!13656) (not b!13651) (not b!13652) (not start!2543))
(check-sat)
