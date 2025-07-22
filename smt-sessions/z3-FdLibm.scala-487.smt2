; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2541 () Bool)

(assert start!2541)

(declare-fun lt!7373 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1077 0))(
  ( (array!1078 (arr!477 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!477 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1077)

(declare-datatypes ((array!1079 0))(
  ( (array!1080 (arr!478 (Array (_ BitVec 32) (_ BitVec 32))) (size!478 (_ BitVec 32))) )
))
(declare-fun lt!7376 () array!1079)

(declare-fun b!13637 () Bool)

(declare-datatypes ((Unit!1508 0))(
  ( (Unit!1509) )
))
(declare-datatypes ((tuple4!358 0))(
  ( (tuple4!359 (_1!373 Unit!1508) (_2!373 array!1079) (_3!310 (_ BitVec 32)) (_4!179 (_ FloatingPoint 11 53))) )
))
(declare-fun e!7847 () tuple4!358)

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1077 array!1079 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!358)

(assert (=> b!13637 (= e!7847 (computeModuloWhile!0 jz!20 q!31 lt!7376 jz!20 lt!7373))))

(declare-fun res!10487 () Bool)

(declare-fun e!7848 () Bool)

(assert (=> start!2541 (=> (not res!10487) (not e!7848))))

(assert (=> start!2541 (= res!10487 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2541 e!7848))

(assert (=> start!2541 true))

(declare-fun array_inv!426 (array!1077) Bool)

(assert (=> start!2541 (array_inv!426 q!31)))

(declare-fun lt!7375 () (_ FloatingPoint 11 53))

(declare-fun b!13636 () Bool)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7374 () tuple4!358)

(assert (=> b!13636 (= e!7848 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7375) (fp.lt lt!7375 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!478 (_2!373 lt!7374)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!13636 (= lt!7375 (fp.sub roundNearestTiesToEven (_4!179 lt!7374) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!179 lt!7374) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!179 lt!7374) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!179 lt!7374) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!179 lt!7374) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!13636 (= lt!7374 e!7847)))

(declare-fun c!1785 () Bool)

(assert (=> b!13636 (= c!1785 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!13636 (= lt!7373 (select (arr!477 q!31) jz!20))))

(assert (=> b!13636 (= lt!7376 (array!1080 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!13635 () Bool)

(declare-fun res!10488 () Bool)

(assert (=> b!13635 (=> (not res!10488) (not e!7848))))

(declare-fun qInv!0 (array!1077) Bool)

(assert (=> b!13635 (= res!10488 (qInv!0 q!31))))

(declare-fun b!13638 () Bool)

(declare-fun Unit!1510 () Unit!1508)

(assert (=> b!13638 (= e!7847 (tuple4!359 Unit!1510 lt!7376 jz!20 lt!7373))))

(assert (= (and start!2541 res!10487) b!13635))

(assert (= (and b!13635 res!10488) b!13636))

(assert (= (and b!13636 c!1785) b!13637))

(assert (= (and b!13636 (not c!1785)) b!13638))

(declare-fun m!19387 () Bool)

(assert (=> b!13637 m!19387))

(declare-fun m!19389 () Bool)

(assert (=> start!2541 m!19389))

(declare-fun m!19391 () Bool)

(assert (=> b!13636 m!19391))

(declare-fun m!19393 () Bool)

(assert (=> b!13636 m!19393))

(declare-fun m!19395 () Bool)

(assert (=> b!13635 m!19395))

(check-sat (not start!2541) (not b!13635) (not b!13637))
(check-sat)
