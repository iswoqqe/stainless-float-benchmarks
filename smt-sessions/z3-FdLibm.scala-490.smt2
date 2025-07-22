; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2557 () Bool)

(assert start!2557)

(declare-fun b!13711 () Bool)

(declare-fun res!10541 () Bool)

(declare-fun e!7908 () Bool)

(assert (=> b!13711 (=> (not res!10541) (not e!7908))))

(declare-datatypes ((array!1091 0))(
  ( (array!1092 (arr!483 (Array (_ BitVec 32) (_ BitVec 32))) (size!483 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1091)

(declare-fun iqInv!0 (array!1091) Bool)

(assert (=> b!13711 (= res!10541 (iqInv!0 iq!76))))

(declare-fun res!10540 () Bool)

(declare-fun e!7909 () Bool)

(assert (=> start!2557 (=> (not res!10540) (not e!7909))))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> start!2557 (= res!10540 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2557 e!7909))

(assert (=> start!2557 true))

(declare-datatypes ((array!1093 0))(
  ( (array!1094 (arr!484 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!484 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1093)

(declare-fun array_inv!431 (array!1093) Bool)

(assert (=> start!2557 (array_inv!431 q!31)))

(declare-fun array_inv!432 (array!1091) Bool)

(assert (=> start!2557 (array_inv!432 iq!76)))

(declare-fun b!13712 () Bool)

(declare-fun res!10542 () Bool)

(assert (=> b!13712 (=> (not res!10542) (not e!7909))))

(declare-fun qInv!0 (array!1093) Bool)

(assert (=> b!13712 (= res!10542 (qInv!0 q!31))))

(declare-fun b!13713 () Bool)

(assert (=> b!13713 (= e!7909 e!7908)))

(declare-fun res!10539 () Bool)

(assert (=> b!13713 (=> (not res!10539) (not e!7908))))

(declare-fun lt!7430 () (_ FloatingPoint 11 53))

(declare-fun i!142 () (_ BitVec 32))

(declare-datatypes ((Unit!1518 0))(
  ( (Unit!1519) )
))
(declare-datatypes ((tuple4!364 0))(
  ( (tuple4!365 (_1!376 Unit!1518) (_2!376 array!1091) (_3!313 (_ BitVec 32)) (_4!182 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7428 () tuple4!364)

(assert (=> b!13713 (= res!10539 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7430) (fp.lt lt!7430 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!483 (_2!376 lt!7428)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13713 (= lt!7430 (fp.sub roundNearestTiesToEven (_4!182 lt!7428) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!182 lt!7428) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!182 lt!7428) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!182 lt!7428) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!182 lt!7428) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!7905 () tuple4!364)

(assert (=> b!13713 (= lt!7428 e!7905)))

(declare-fun c!1797 () Bool)

(assert (=> b!13713 (= c!1797 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7427 () (_ FloatingPoint 11 53))

(assert (=> b!13713 (= lt!7427 (select (arr!484 q!31) jz!20))))

(declare-fun lt!7429 () array!1091)

(assert (=> b!13713 (= lt!7429 (array!1092 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!13714 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1093 array!1091 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!364)

(assert (=> b!13714 (= e!7905 (computeModuloWhile!0 jz!20 q!31 lt!7429 jz!20 lt!7427))))

(declare-fun b!13715 () Bool)

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!13715 (= e!7908 (and (bvsge (select (arr!483 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!13716 () Bool)

(declare-fun Unit!1520 () Unit!1518)

(assert (=> b!13716 (= e!7905 (tuple4!365 Unit!1520 lt!7429 jz!20 lt!7427))))

(assert (= (and start!2557 res!10540) b!13712))

(assert (= (and b!13712 res!10542) b!13713))

(assert (= (and b!13713 c!1797) b!13714))

(assert (= (and b!13713 (not c!1797)) b!13716))

(assert (= (and b!13713 res!10539) b!13711))

(assert (= (and b!13711 res!10541) b!13715))

(declare-fun m!19439 () Bool)

(assert (=> start!2557 m!19439))

(declare-fun m!19441 () Bool)

(assert (=> start!2557 m!19441))

(declare-fun m!19443 () Bool)

(assert (=> b!13711 m!19443))

(declare-fun m!19445 () Bool)

(assert (=> b!13715 m!19445))

(declare-fun m!19447 () Bool)

(assert (=> b!13713 m!19447))

(declare-fun m!19449 () Bool)

(assert (=> b!13713 m!19449))

(declare-fun m!19451 () Bool)

(assert (=> b!13712 m!19451))

(declare-fun m!19453 () Bool)

(assert (=> b!13714 m!19453))

(check-sat (not b!13711) (not start!2557) (not b!13714) (not b!13712))
(check-sat)
