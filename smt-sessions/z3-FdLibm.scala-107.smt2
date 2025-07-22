; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!877 () Bool)

(assert start!877)

(declare-fun b!3646 () Bool)

(declare-fun e!1847 () Bool)

(declare-fun e!1846 () Bool)

(assert (=> b!3646 (= e!1847 e!1846)))

(declare-fun res!2777 () Bool)

(assert (=> b!3646 (=> (not res!2777) (not e!1846))))

(declare-fun lt!2491 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((Unit!295 0))(
  ( (Unit!296) )
))
(declare-datatypes ((array!234 0))(
  ( (array!235 (arr!103 (Array (_ BitVec 32) (_ BitVec 32))) (size!103 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!142 0))(
  ( (tuple4!143 (_1!126 Unit!295) (_2!126 array!234) (_3!114 (_ BitVec 32)) (_4!71 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2490 () tuple4!142)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3646 (= res!2777 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2491) (fp.lt lt!2491 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!103 (_2!126 lt!2490)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3646 (= lt!2491 (fp.sub roundNearestTiesToEven (_4!71 lt!2490) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!71 lt!2490) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!71 lt!2490) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!71 lt!2490) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!71 lt!2490) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1843 () tuple4!142)

(assert (=> b!3646 (= lt!2490 e!1843)))

(declare-fun c!641 () Bool)

(assert (=> b!3646 (= c!641 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2489 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!236 0))(
  ( (array!237 (arr!104 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!104 (_ BitVec 32))) )
))
(declare-fun q!85 () array!236)

(assert (=> b!3646 (= lt!2489 (select (arr!104 q!85) jz!53))))

(declare-fun lt!2492 () array!234)

(assert (=> b!3646 (= lt!2492 (array!235 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3647 () Bool)

(declare-fun res!2780 () Bool)

(assert (=> b!3647 (=> (not res!2780) (not e!1846))))

(declare-fun iq!165 () array!234)

(declare-fun iqInv!0 (array!234) Bool)

(assert (=> b!3647 (= res!2780 (iqInv!0 iq!165))))

(declare-fun b!3648 () Bool)

(declare-fun res!2778 () Bool)

(assert (=> b!3648 (=> (not res!2778) (not e!1847))))

(declare-fun qInv!0 (array!236) Bool)

(assert (=> b!3648 (= res!2778 (qInv!0 q!85))))

(declare-fun b!3649 () Bool)

(declare-fun Unit!297 () Unit!295)

(assert (=> b!3649 (= e!1843 (tuple4!143 Unit!297 lt!2492 jz!53 lt!2489))))

(declare-fun res!2779 () Bool)

(assert (=> start!877 (=> (not res!2779) (not e!1847))))

(assert (=> start!877 (= res!2779 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!877 e!1847))

(assert (=> start!877 true))

(declare-fun array_inv!53 (array!234) Bool)

(assert (=> start!877 (array_inv!53 iq!165)))

(declare-fun array_inv!54 (array!236) Bool)

(assert (=> start!877 (array_inv!54 q!85)))

(declare-fun b!3650 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!236 array!234 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!142)

(assert (=> b!3650 (= e!1843 (computeModuloWhile!0 jz!53 q!85 lt!2492 jz!53 lt!2489))))

(declare-fun b!3651 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!3651 (= e!1846 (and (bvsge (select (arr!103 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!877 res!2779) b!3648))

(assert (= (and b!3648 res!2778) b!3646))

(assert (= (and b!3646 c!641) b!3650))

(assert (= (and b!3646 (not c!641)) b!3649))

(assert (= (and b!3646 res!2777) b!3647))

(assert (= (and b!3647 res!2780) b!3651))

(declare-fun m!4577 () Bool)

(assert (=> start!877 m!4577))

(declare-fun m!4579 () Bool)

(assert (=> start!877 m!4579))

(declare-fun m!4581 () Bool)

(assert (=> b!3651 m!4581))

(declare-fun m!4583 () Bool)

(assert (=> b!3650 m!4583))

(declare-fun m!4585 () Bool)

(assert (=> b!3648 m!4585))

(declare-fun m!4587 () Bool)

(assert (=> b!3647 m!4587))

(declare-fun m!4589 () Bool)

(assert (=> b!3646 m!4589))

(declare-fun m!4591 () Bool)

(assert (=> b!3646 m!4591))

(check-sat (not start!877) (not b!3650) (not b!3648) (not b!3647))
(check-sat)
