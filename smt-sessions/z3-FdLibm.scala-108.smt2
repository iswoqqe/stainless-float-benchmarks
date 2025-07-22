; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!879 () Bool)

(assert start!879)

(declare-fun b!3664 () Bool)

(declare-fun res!2790 () Bool)

(declare-fun e!1858 () Bool)

(assert (=> b!3664 (=> (not res!2790) (not e!1858))))

(declare-datatypes ((array!238 0))(
  ( (array!239 (arr!105 (Array (_ BitVec 32) (_ BitVec 32))) (size!105 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!238)

(declare-fun iqInv!0 (array!238) Bool)

(assert (=> b!3664 (= res!2790 (iqInv!0 iq!165))))

(declare-fun b!3665 () Bool)

(declare-datatypes ((Unit!298 0))(
  ( (Unit!299) )
))
(declare-datatypes ((tuple4!144 0))(
  ( (tuple4!145 (_1!127 Unit!298) (_2!127 array!238) (_3!115 (_ BitVec 32)) (_4!72 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1859 () tuple4!144)

(declare-fun lt!2503 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!2504 () array!238)

(declare-fun Unit!300 () Unit!298)

(assert (=> b!3665 (= e!1859 (tuple4!145 Unit!300 lt!2504 jz!53 lt!2503))))

(declare-datatypes ((array!240 0))(
  ( (array!241 (arr!106 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!106 (_ BitVec 32))) )
))
(declare-fun q!85 () array!240)

(declare-fun b!3666 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!240 array!238 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!144)

(assert (=> b!3666 (= e!1859 (computeModuloWhile!0 jz!53 q!85 lt!2504 jz!53 lt!2503))))

(declare-fun res!2789 () Bool)

(declare-fun e!1862 () Bool)

(assert (=> start!879 (=> (not res!2789) (not e!1862))))

(assert (=> start!879 (= res!2789 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!879 e!1862))

(assert (=> start!879 true))

(declare-fun array_inv!55 (array!238) Bool)

(assert (=> start!879 (array_inv!55 iq!165)))

(declare-fun array_inv!56 (array!240) Bool)

(assert (=> start!879 (array_inv!56 q!85)))

(declare-fun b!3667 () Bool)

(declare-fun res!2792 () Bool)

(assert (=> b!3667 (=> (not res!2792) (not e!1862))))

(declare-fun qInv!0 (array!240) Bool)

(assert (=> b!3667 (= res!2792 (qInv!0 q!85))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun b!3668 () Bool)

(assert (=> b!3668 (= e!1858 (and (bvsge (select (arr!105 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand i!252 #b10000000000000000000000000000000))) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 i!252) #b10000000000000000000000000000000)))))))

(declare-fun b!3669 () Bool)

(assert (=> b!3669 (= e!1862 e!1858)))

(declare-fun res!2791 () Bool)

(assert (=> b!3669 (=> (not res!2791) (not e!1858))))

(declare-fun lt!2501 () tuple4!144)

(declare-fun lt!2502 () (_ FloatingPoint 11 53))

(assert (=> b!3669 (= res!2791 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2502) (fp.lt lt!2502 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!105 (_2!127 lt!2501)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3669 (= lt!2502 (fp.sub roundNearestTiesToEven (_4!72 lt!2501) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!72 lt!2501) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!72 lt!2501) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!72 lt!2501) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!72 lt!2501) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3669 (= lt!2501 e!1859)))

(declare-fun c!644 () Bool)

(assert (=> b!3669 (= c!644 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3669 (= lt!2503 (select (arr!106 q!85) jz!53))))

(assert (=> b!3669 (= lt!2504 (array!239 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!879 res!2789) b!3667))

(assert (= (and b!3667 res!2792) b!3669))

(assert (= (and b!3669 c!644) b!3666))

(assert (= (and b!3669 (not c!644)) b!3665))

(assert (= (and b!3669 res!2791) b!3664))

(assert (= (and b!3664 res!2790) b!3668))

(declare-fun m!4593 () Bool)

(assert (=> start!879 m!4593))

(declare-fun m!4595 () Bool)

(assert (=> start!879 m!4595))

(declare-fun m!4597 () Bool)

(assert (=> b!3666 m!4597))

(declare-fun m!4599 () Bool)

(assert (=> b!3664 m!4599))

(declare-fun m!4601 () Bool)

(assert (=> b!3669 m!4601))

(declare-fun m!4603 () Bool)

(assert (=> b!3669 m!4603))

(declare-fun m!4605 () Bool)

(assert (=> b!3667 m!4605))

(declare-fun m!4607 () Bool)

(assert (=> b!3668 m!4607))

(check-sat (not b!3667) (not start!879) (not b!3666) (not b!3664))
(check-sat)
