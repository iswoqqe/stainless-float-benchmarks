; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!863 () Bool)

(assert start!863)

(declare-fun b!3586 () Bool)

(declare-fun e!1801 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!3586 (= e!1801 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!3587 () Bool)

(declare-fun e!1799 () Bool)

(assert (=> b!3587 (= e!1799 e!1801)))

(declare-fun res!2738 () Bool)

(assert (=> b!3587 (=> (not res!2738) (not e!1801))))

(declare-datatypes ((Unit!288 0))(
  ( (Unit!289) )
))
(declare-datatypes ((array!224 0))(
  ( (array!225 (arr!99 (Array (_ BitVec 32) (_ BitVec 32))) (size!99 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!138 0))(
  ( (tuple4!139 (_1!124 Unit!288) (_2!124 array!224) (_3!112 (_ BitVec 32)) (_4!69 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2450 () tuple4!138)

(declare-fun lt!2448 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3587 (= res!2738 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2448) (fp.lt lt!2448 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!99 (_2!124 lt!2450)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3587 (= lt!2448 (fp.sub roundNearestTiesToEven (_4!69 lt!2450) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!69 lt!2450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!69 lt!2450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!69 lt!2450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!69 lt!2450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1800 () tuple4!138)

(assert (=> b!3587 (= lt!2450 e!1800)))

(declare-fun c!632 () Bool)

(assert (=> b!3587 (= c!632 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2447 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!226 0))(
  ( (array!227 (arr!100 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!100 (_ BitVec 32))) )
))
(declare-fun q!85 () array!226)

(assert (=> b!3587 (= lt!2447 (select (arr!100 q!85) jz!53))))

(declare-fun lt!2449 () array!224)

(assert (=> b!3587 (= lt!2449 (array!225 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!2736 () Bool)

(assert (=> start!863 (=> (not res!2736) (not e!1799))))

(assert (=> start!863 (= res!2736 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!863 e!1799))

(assert (=> start!863 true))

(declare-fun array_inv!49 (array!226) Bool)

(assert (=> start!863 (array_inv!49 q!85)))

(declare-fun iq!165 () array!224)

(declare-fun array_inv!50 (array!224) Bool)

(assert (=> start!863 (array_inv!50 iq!165)))

(declare-fun b!3588 () Bool)

(declare-fun res!2737 () Bool)

(assert (=> b!3588 (=> (not res!2737) (not e!1801))))

(declare-fun iqInv!0 (array!224) Bool)

(assert (=> b!3588 (= res!2737 (iqInv!0 iq!165))))

(declare-fun b!3589 () Bool)

(declare-fun Unit!290 () Unit!288)

(assert (=> b!3589 (= e!1800 (tuple4!139 Unit!290 lt!2449 jz!53 lt!2447))))

(declare-fun b!3590 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!226 array!224 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!138)

(assert (=> b!3590 (= e!1800 (computeModuloWhile!0 jz!53 q!85 lt!2449 jz!53 lt!2447))))

(declare-fun b!3591 () Bool)

(declare-fun res!2735 () Bool)

(assert (=> b!3591 (=> (not res!2735) (not e!1799))))

(declare-fun qInv!0 (array!226) Bool)

(assert (=> b!3591 (= res!2735 (qInv!0 q!85))))

(assert (= (and start!863 res!2736) b!3591))

(assert (= (and b!3591 res!2735) b!3587))

(assert (= (and b!3587 c!632) b!3590))

(assert (= (and b!3587 (not c!632)) b!3589))

(assert (= (and b!3587 res!2738) b!3588))

(assert (= (and b!3588 res!2737) b!3586))

(declare-fun m!4535 () Bool)

(assert (=> start!863 m!4535))

(declare-fun m!4537 () Bool)

(assert (=> start!863 m!4537))

(declare-fun m!4539 () Bool)

(assert (=> b!3590 m!4539))

(declare-fun m!4541 () Bool)

(assert (=> b!3588 m!4541))

(declare-fun m!4543 () Bool)

(assert (=> b!3591 m!4543))

(declare-fun m!4545 () Bool)

(assert (=> b!3587 m!4545))

(declare-fun m!4547 () Bool)

(assert (=> b!3587 m!4547))

(check-sat (not b!3590) (not start!863) (not b!3588) (not b!3591))
(check-sat)
