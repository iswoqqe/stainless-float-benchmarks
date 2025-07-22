; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2561 () Bool)

(assert start!2561)

(declare-fun lt!7454 () (_ FloatingPoint 11 53))

(declare-fun b!13747 () Bool)

(declare-datatypes ((Unit!1524 0))(
  ( (Unit!1525) )
))
(declare-datatypes ((array!1099 0))(
  ( (array!1100 (arr!487 (Array (_ BitVec 32) (_ BitVec 32))) (size!487 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!368 0))(
  ( (tuple4!369 (_1!378 Unit!1524) (_2!378 array!1099) (_3!315 (_ BitVec 32)) (_4!184 (_ FloatingPoint 11 53))) )
))
(declare-fun e!7935 () tuple4!368)

(declare-fun lt!7452 () array!1099)

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun Unit!1526 () Unit!1524)

(assert (=> b!13747 (= e!7935 (tuple4!369 Unit!1526 lt!7452 jz!20 lt!7454))))

(declare-fun b!13748 () Bool)

(declare-fun res!10566 () Bool)

(declare-fun e!7938 () Bool)

(assert (=> b!13748 (=> (not res!10566) (not e!7938))))

(declare-fun iq!76 () array!1099)

(declare-fun iqInv!0 (array!1099) Bool)

(assert (=> b!13748 (= res!10566 (iqInv!0 iq!76))))

(declare-fun b!13750 () Bool)

(declare-fun res!10565 () Bool)

(declare-fun e!7936 () Bool)

(assert (=> b!13750 (=> (not res!10565) (not e!7936))))

(declare-datatypes ((array!1101 0))(
  ( (array!1102 (arr!488 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!488 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1101)

(declare-fun qInv!0 (array!1101) Bool)

(assert (=> b!13750 (= res!10565 (qInv!0 q!31))))

(declare-fun b!13751 () Bool)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!13751 (= e!7938 (and (bvsge (select (arr!487 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001)) (bvslt (bvsub jz!20 i!142) #b00000000000000000000000000000000)))))

(declare-fun b!13752 () Bool)

(assert (=> b!13752 (= e!7936 e!7938)))

(declare-fun res!10564 () Bool)

(assert (=> b!13752 (=> (not res!10564) (not e!7938))))

(declare-fun lt!7451 () tuple4!368)

(declare-fun lt!7453 () (_ FloatingPoint 11 53))

(assert (=> b!13752 (= res!10564 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7453) (fp.lt lt!7453 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!487 (_2!378 lt!7451)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13752 (= lt!7453 (fp.sub roundNearestTiesToEven (_4!184 lt!7451) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!184 lt!7451) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!184 lt!7451) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!184 lt!7451) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!184 lt!7451) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!13752 (= lt!7451 e!7935)))

(declare-fun c!1803 () Bool)

(assert (=> b!13752 (= c!1803 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!13752 (= lt!7454 (select (arr!488 q!31) jz!20))))

(assert (=> b!13752 (= lt!7452 (array!1100 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!13749 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1101 array!1099 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!368)

(assert (=> b!13749 (= e!7935 (computeModuloWhile!0 jz!20 q!31 lt!7452 jz!20 lt!7454))))

(declare-fun res!10563 () Bool)

(assert (=> start!2561 (=> (not res!10563) (not e!7936))))

(assert (=> start!2561 (= res!10563 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2561 e!7936))

(assert (=> start!2561 true))

(declare-fun array_inv!435 (array!1101) Bool)

(assert (=> start!2561 (array_inv!435 q!31)))

(declare-fun array_inv!436 (array!1099) Bool)

(assert (=> start!2561 (array_inv!436 iq!76)))

(assert (= (and start!2561 res!10563) b!13750))

(assert (= (and b!13750 res!10565) b!13752))

(assert (= (and b!13752 c!1803) b!13749))

(assert (= (and b!13752 (not c!1803)) b!13747))

(assert (= (and b!13752 res!10564) b!13748))

(assert (= (and b!13748 res!10566) b!13751))

(declare-fun m!19471 () Bool)

(assert (=> b!13751 m!19471))

(declare-fun m!19473 () Bool)

(assert (=> start!2561 m!19473))

(declare-fun m!19475 () Bool)

(assert (=> start!2561 m!19475))

(declare-fun m!19477 () Bool)

(assert (=> b!13752 m!19477))

(declare-fun m!19479 () Bool)

(assert (=> b!13752 m!19479))

(declare-fun m!19481 () Bool)

(assert (=> b!13750 m!19481))

(declare-fun m!19483 () Bool)

(assert (=> b!13749 m!19483))

(declare-fun m!19485 () Bool)

(assert (=> b!13748 m!19485))

(check-sat (not b!13749) (not b!13748) (not start!2561) (not b!13750))
(check-sat)
