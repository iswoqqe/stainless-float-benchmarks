; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!971 () Bool)

(assert start!971)

(declare-fun b!4496 () Bool)

(declare-fun e!2244 () Bool)

(declare-fun e!2246 () Bool)

(assert (=> b!4496 (= e!2244 e!2246)))

(declare-fun res!3476 () Bool)

(assert (=> b!4496 (=> (not res!3476) (not e!2246))))

(declare-datatypes ((Unit!357 0))(
  ( (Unit!358) )
))
(declare-datatypes ((array!296 0))(
  ( (array!297 (arr!129 (Array (_ BitVec 32) (_ BitVec 32))) (size!129 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!174 0))(
  ( (tuple4!175 (_1!142 Unit!357) (_2!142 (_ BitVec 32)) (_3!130 array!296) (_4!87 (_ BitVec 32))) )
))
(declare-fun lt!2873 () tuple4!174)

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4496 (= res!3476 (and (bvsle #b00000000000000000000000000000000 (_2!142 lt!2873)) (bvsle (_2!142 lt!2873) (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun lt!2870 () (_ BitVec 32))

(declare-fun lt!2871 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-datatypes ((array!298 0))(
  ( (array!299 (arr!130 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!130 (_ BitVec 32))) )
))
(declare-fun q!85 () array!298)

(declare-fun iq!165 () array!296)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!298 (_ BitVec 32) array!296 (_ BitVec 32)) tuple4!174)

(assert (=> b!4496 (= lt!2873 (computeModuloWhile!1 jz!53 q!85 lt!2871 (array!297 (store (arr!129 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2870 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2870) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2870))) (size!129 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2870 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))

(declare-fun res!3475 () Bool)

(declare-fun e!2242 () Bool)

(assert (=> start!971 (=> (not res!3475) (not e!2242))))

(assert (=> start!971 (= res!3475 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!971 e!2242))

(assert (=> start!971 true))

(declare-fun array_inv!79 (array!296) Bool)

(assert (=> start!971 (array_inv!79 iq!165)))

(declare-fun array_inv!80 (array!298) Bool)

(assert (=> start!971 (array_inv!80 q!85)))

(declare-fun lt!2872 () (_ FloatingPoint 11 53))

(declare-datatypes ((tuple4!176 0))(
  ( (tuple4!177 (_1!143 Unit!357) (_2!143 array!296) (_3!131 (_ BitVec 32)) (_4!88 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2239 () tuple4!176)

(declare-fun lt!2876 () array!296)

(declare-fun b!4497 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!298 array!296 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!176)

(assert (=> b!4497 (= e!2239 (computeModuloWhile!0 jz!53 q!85 lt!2876 jz!53 lt!2872))))

(declare-fun b!4498 () Bool)

(declare-fun res!3479 () Bool)

(declare-fun e!2245 () Bool)

(assert (=> b!4498 (=> (not res!3479) (not e!2245))))

(assert (=> b!4498 (= res!3479 (and (bvsge (select (arr!129 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4499 () Bool)

(declare-fun res!3471 () Bool)

(assert (=> b!4499 (=> (not res!3471) (not e!2246))))

(declare-fun iqInv!0 (array!296) Bool)

(assert (=> b!4499 (= res!3471 (iqInv!0 (_3!130 lt!2873)))))

(declare-fun b!4500 () Bool)

(declare-fun res!3472 () Bool)

(assert (=> b!4500 (=> (not res!3472) (not e!2242))))

(declare-fun qInv!0 (array!298) Bool)

(assert (=> b!4500 (= res!3472 (qInv!0 q!85))))

(declare-fun b!4501 () Bool)

(declare-fun e!2240 () Bool)

(assert (=> b!4501 (= e!2245 e!2240)))

(declare-fun res!3477 () Bool)

(assert (=> b!4501 (=> (not res!3477) (not e!2240))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4501 (= res!3477 (QInt!0 lt!2870))))

(assert (=> b!4501 (= lt!2870 (select (arr!129 iq!165) i!252))))

(declare-fun b!4502 () Bool)

(declare-fun Unit!359 () Unit!357)

(assert (=> b!4502 (= e!2239 (tuple4!177 Unit!359 lt!2876 jz!53 lt!2872))))

(declare-fun b!4503 () Bool)

(assert (=> b!4503 (= e!2242 e!2245)))

(declare-fun res!3474 () Bool)

(assert (=> b!4503 (=> (not res!3474) (not e!2245))))

(declare-fun lt!2875 () tuple4!176)

(declare-fun lt!2874 () (_ FloatingPoint 11 53))

(assert (=> b!4503 (= res!3474 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2874) (fp.lt lt!2874 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!129 (_2!143 lt!2875)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4503 (= lt!2874 (fp.sub roundNearestTiesToEven (_4!88 lt!2875) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!88 lt!2875) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!88 lt!2875) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!88 lt!2875) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!88 lt!2875) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4503 (= lt!2875 e!2239)))

(declare-fun c!719 () Bool)

(assert (=> b!4503 (= c!719 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4503 (= lt!2872 (select (arr!130 q!85) jz!53))))

(assert (=> b!4503 (= lt!2876 (array!297 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4504 () Bool)

(assert (=> b!4504 (= e!2240 e!2244)))

(declare-fun res!3478 () Bool)

(assert (=> b!4504 (=> (not res!3478) (not e!2244))))

(assert (=> b!4504 (= res!3478 (bvslt lt!2871 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4504 (= lt!2871 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4505 () Bool)

(assert (=> b!4505 (= e!2246 (and (bvsge (select (arr!129 (_3!130 lt!2873)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= (_4!87 lt!2873) #b00000000000000000000000000000000) (= (_4!87 lt!2873) #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4506 () Bool)

(declare-fun res!3473 () Bool)

(assert (=> b!4506 (=> (not res!3473) (not e!2245))))

(assert (=> b!4506 (= res!3473 (iqInv!0 iq!165))))

(assert (= (and start!971 res!3475) b!4500))

(assert (= (and b!4500 res!3472) b!4503))

(assert (= (and b!4503 c!719) b!4497))

(assert (= (and b!4503 (not c!719)) b!4502))

(assert (= (and b!4503 res!3474) b!4506))

(assert (= (and b!4506 res!3473) b!4498))

(assert (= (and b!4498 res!3479) b!4501))

(assert (= (and b!4501 res!3477) b!4504))

(assert (= (and b!4504 res!3478) b!4496))

(assert (= (and b!4496 res!3476) b!4499))

(assert (= (and b!4499 res!3471) b!4505))

(declare-fun m!6535 () Bool)

(assert (=> b!4501 m!6535))

(declare-fun m!6537 () Bool)

(assert (=> b!4501 m!6537))

(declare-fun m!6539 () Bool)

(assert (=> start!971 m!6539))

(declare-fun m!6541 () Bool)

(assert (=> start!971 m!6541))

(declare-fun m!6543 () Bool)

(assert (=> b!4499 m!6543))

(declare-fun m!6545 () Bool)

(assert (=> b!4496 m!6545))

(declare-fun m!6547 () Bool)

(assert (=> b!4496 m!6547))

(declare-fun m!6549 () Bool)

(assert (=> b!4498 m!6549))

(declare-fun m!6551 () Bool)

(assert (=> b!4505 m!6551))

(declare-fun m!6553 () Bool)

(assert (=> b!4500 m!6553))

(declare-fun m!6555 () Bool)

(assert (=> b!4497 m!6555))

(declare-fun m!6557 () Bool)

(assert (=> b!4506 m!6557))

(declare-fun m!6559 () Bool)

(assert (=> b!4503 m!6559))

(declare-fun m!6561 () Bool)

(assert (=> b!4503 m!6561))

(check-sat (not b!4499) (not b!4501) (not b!4497) (not b!4496) (not b!4500) (not b!4506) (not start!971))
(check-sat)
