; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2559 () Bool)

(assert start!2559)

(declare-fun b!13729 () Bool)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun e!7921 () Bool)

(declare-datatypes ((array!1095 0))(
  ( (array!1096 (arr!485 (Array (_ BitVec 32) (_ BitVec 32))) (size!485 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1095)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!13729 (= e!7921 (and (bvsge (select (arr!485 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand i!142 #b10000000000000000000000000000000))) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 i!142) #b10000000000000000000000000000000)))))))

(declare-datatypes ((Unit!1521 0))(
  ( (Unit!1522) )
))
(declare-datatypes ((tuple4!366 0))(
  ( (tuple4!367 (_1!377 Unit!1521) (_2!377 array!1095) (_3!314 (_ BitVec 32)) (_4!183 (_ FloatingPoint 11 53))) )
))
(declare-fun e!7922 () tuple4!366)

(declare-datatypes ((array!1097 0))(
  ( (array!1098 (arr!486 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!486 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1097)

(declare-fun lt!7440 () array!1095)

(declare-fun lt!7442 () (_ FloatingPoint 11 53))

(declare-fun b!13730 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1097 array!1095 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!366)

(assert (=> b!13730 (= e!7922 (computeModuloWhile!0 jz!20 q!31 lt!7440 jz!20 lt!7442))))

(declare-fun b!13731 () Bool)

(declare-fun Unit!1523 () Unit!1521)

(assert (=> b!13731 (= e!7922 (tuple4!367 Unit!1523 lt!7440 jz!20 lt!7442))))

(declare-fun b!13732 () Bool)

(declare-fun e!7920 () Bool)

(assert (=> b!13732 (= e!7920 e!7921)))

(declare-fun res!10553 () Bool)

(assert (=> b!13732 (=> (not res!10553) (not e!7921))))

(declare-fun lt!7441 () (_ FloatingPoint 11 53))

(declare-fun lt!7439 () tuple4!366)

(assert (=> b!13732 (= res!10553 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7441) (fp.lt lt!7441 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!485 (_2!377 lt!7439)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13732 (= lt!7441 (fp.sub roundNearestTiesToEven (_4!183 lt!7439) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!183 lt!7439) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!183 lt!7439) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!183 lt!7439) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!183 lt!7439) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!13732 (= lt!7439 e!7922)))

(declare-fun c!1800 () Bool)

(assert (=> b!13732 (= c!1800 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!13732 (= lt!7442 (select (arr!486 q!31) jz!20))))

(assert (=> b!13732 (= lt!7440 (array!1096 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!13733 () Bool)

(declare-fun res!10552 () Bool)

(assert (=> b!13733 (=> (not res!10552) (not e!7921))))

(declare-fun iqInv!0 (array!1095) Bool)

(assert (=> b!13733 (= res!10552 (iqInv!0 iq!76))))

(declare-fun b!13734 () Bool)

(declare-fun res!10551 () Bool)

(assert (=> b!13734 (=> (not res!10551) (not e!7920))))

(declare-fun qInv!0 (array!1097) Bool)

(assert (=> b!13734 (= res!10551 (qInv!0 q!31))))

(declare-fun res!10554 () Bool)

(assert (=> start!2559 (=> (not res!10554) (not e!7920))))

(assert (=> start!2559 (= res!10554 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2559 e!7920))

(assert (=> start!2559 true))

(declare-fun array_inv!433 (array!1097) Bool)

(assert (=> start!2559 (array_inv!433 q!31)))

(declare-fun array_inv!434 (array!1095) Bool)

(assert (=> start!2559 (array_inv!434 iq!76)))

(assert (= (and start!2559 res!10554) b!13734))

(assert (= (and b!13734 res!10551) b!13732))

(assert (= (and b!13732 c!1800) b!13730))

(assert (= (and b!13732 (not c!1800)) b!13731))

(assert (= (and b!13732 res!10553) b!13733))

(assert (= (and b!13733 res!10552) b!13729))

(declare-fun m!19455 () Bool)

(assert (=> b!13729 m!19455))

(declare-fun m!19457 () Bool)

(assert (=> b!13732 m!19457))

(declare-fun m!19459 () Bool)

(assert (=> b!13732 m!19459))

(declare-fun m!19461 () Bool)

(assert (=> b!13730 m!19461))

(declare-fun m!19463 () Bool)

(assert (=> start!2559 m!19463))

(declare-fun m!19465 () Bool)

(assert (=> start!2559 m!19465))

(declare-fun m!19467 () Bool)

(assert (=> b!13734 m!19467))

(declare-fun m!19469 () Bool)

(assert (=> b!13733 m!19469))

(check-sat (not start!2559) (not b!13730) (not b!13734) (not b!13733))
(check-sat)
