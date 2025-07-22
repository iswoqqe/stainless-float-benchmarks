; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!941 () Bool)

(assert start!941)

(declare-fun res!2996 () Bool)

(declare-fun e!2050 () Bool)

(assert (=> start!941 (=> (not res!2996) (not e!2050))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!941 (= res!2996 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!941 e!2050))

(assert (=> start!941 true))

(declare-datatypes ((array!278 0))(
  ( (array!279 (arr!121 (Array (_ BitVec 32) (_ BitVec 32))) (size!121 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!278)

(declare-fun array_inv!71 (array!278) Bool)

(assert (=> start!941 (array_inv!71 iq!165)))

(declare-datatypes ((array!280 0))(
  ( (array!281 (arr!122 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!122 (_ BitVec 32))) )
))
(declare-fun q!85 () array!280)

(declare-fun array_inv!72 (array!280) Bool)

(assert (=> start!941 (array_inv!72 q!85)))

(declare-fun e!2048 () Bool)

(declare-fun b!3944 () Bool)

(declare-fun i!252 () (_ BitVec 32))

(declare-fun lt!2673 () (_ BitVec 32))

(assert (=> b!3944 (= e!2048 (bvsge (bvsub jz!53 lt!2673) (bvsub jz!53 i!252)))))

(declare-datatypes ((Unit!326 0))(
  ( (Unit!327) )
))
(declare-datatypes ((tuple4!160 0))(
  ( (tuple4!161 (_1!135 Unit!326) (_2!135 array!278) (_3!123 (_ BitVec 32)) (_4!80 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2676 () tuple4!160)

(declare-fun e!2051 () tuple4!160)

(assert (=> b!3944 (= lt!2676 e!2051)))

(declare-fun c!682 () Bool)

(assert (=> b!3944 (= c!682 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2674 () (_ FloatingPoint 11 53))

(assert (=> b!3944 (= lt!2674 (select (arr!122 q!85) jz!53))))

(declare-fun lt!2672 () array!278)

(assert (=> b!3944 (= lt!2672 (array!279 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3945 () Bool)

(declare-fun res!2999 () Bool)

(declare-fun e!2053 () Bool)

(assert (=> b!3945 (=> (not res!2999) (not e!2053))))

(declare-fun iqInv!0 (array!278) Bool)

(assert (=> b!3945 (= res!2999 (iqInv!0 iq!165))))

(declare-fun b!3946 () Bool)

(declare-fun res!2997 () Bool)

(assert (=> b!3946 (=> (not res!2997) (not e!2053))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!3946 (= res!2997 (and (bvsge (select (arr!121 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!3947 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!280 array!278 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!160)

(assert (=> b!3947 (= e!2051 (computeModuloWhile!0 jz!53 q!85 lt!2672 jz!53 lt!2674))))

(declare-fun b!3948 () Bool)

(declare-fun res!2995 () Bool)

(assert (=> b!3948 (=> (not res!2995) (not e!2053))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3948 (= res!2995 (QInt!0 (select (arr!121 iq!165) i!252)))))

(declare-fun b!3949 () Bool)

(declare-fun res!2993 () Bool)

(assert (=> b!3949 (=> (not res!2993) (not e!2050))))

(declare-fun qInv!0 (array!280) Bool)

(assert (=> b!3949 (= res!2993 (qInv!0 q!85))))

(declare-fun b!3950 () Bool)

(assert (=> b!3950 (= e!2050 e!2053)))

(declare-fun res!2994 () Bool)

(assert (=> b!3950 (=> (not res!2994) (not e!2053))))

(declare-fun lt!2677 () (_ FloatingPoint 11 53))

(declare-fun lt!2678 () tuple4!160)

(assert (=> b!3950 (= res!2994 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2677) (fp.lt lt!2677 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!121 (_2!135 lt!2678)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3950 (= lt!2677 (fp.sub roundNearestTiesToEven (_4!80 lt!2678) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!80 lt!2678) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!80 lt!2678) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!80 lt!2678) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!80 lt!2678) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2049 () tuple4!160)

(assert (=> b!3950 (= lt!2678 e!2049)))

(declare-fun c!683 () Bool)

(assert (=> b!3950 (= c!683 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2671 () (_ FloatingPoint 11 53))

(assert (=> b!3950 (= lt!2671 (select (arr!122 q!85) jz!53))))

(declare-fun lt!2675 () array!278)

(assert (=> b!3950 (= lt!2675 (array!279 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3951 () Bool)

(assert (=> b!3951 (= e!2053 e!2048)))

(declare-fun res!2998 () Bool)

(assert (=> b!3951 (=> (not res!2998) (not e!2048))))

(assert (=> b!3951 (= res!2998 (bvslt lt!2673 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!3951 (= lt!2673 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!3952 () Bool)

(declare-fun Unit!328 () Unit!326)

(assert (=> b!3952 (= e!2051 (tuple4!161 Unit!328 lt!2672 jz!53 lt!2674))))

(declare-fun b!3953 () Bool)

(declare-fun Unit!329 () Unit!326)

(assert (=> b!3953 (= e!2049 (tuple4!161 Unit!329 lt!2675 jz!53 lt!2671))))

(declare-fun b!3954 () Bool)

(assert (=> b!3954 (= e!2049 (computeModuloWhile!0 jz!53 q!85 lt!2675 jz!53 lt!2671))))

(assert (= (and start!941 res!2996) b!3949))

(assert (= (and b!3949 res!2993) b!3950))

(assert (= (and b!3950 c!683) b!3954))

(assert (= (and b!3950 (not c!683)) b!3953))

(assert (= (and b!3950 res!2994) b!3945))

(assert (= (and b!3945 res!2999) b!3946))

(assert (= (and b!3946 res!2997) b!3948))

(assert (= (and b!3948 res!2995) b!3951))

(assert (= (and b!3951 res!2998) b!3944))

(assert (= (and b!3944 c!682) b!3947))

(assert (= (and b!3944 (not c!682)) b!3952))

(declare-fun m!4797 () Bool)

(assert (=> b!3949 m!4797))

(declare-fun m!4799 () Bool)

(assert (=> b!3947 m!4799))

(declare-fun m!4801 () Bool)

(assert (=> b!3954 m!4801))

(declare-fun m!4803 () Bool)

(assert (=> start!941 m!4803))

(declare-fun m!4805 () Bool)

(assert (=> start!941 m!4805))

(declare-fun m!4807 () Bool)

(assert (=> b!3948 m!4807))

(assert (=> b!3948 m!4807))

(declare-fun m!4809 () Bool)

(assert (=> b!3948 m!4809))

(declare-fun m!4811 () Bool)

(assert (=> b!3950 m!4811))

(declare-fun m!4813 () Bool)

(assert (=> b!3950 m!4813))

(declare-fun m!4815 () Bool)

(assert (=> b!3946 m!4815))

(declare-fun m!4817 () Bool)

(assert (=> b!3945 m!4817))

(assert (=> b!3944 m!4813))

(check-sat (not b!3947) (not b!3948) (not start!941) (not b!3945) (not b!3954) (not b!3949))
(check-sat)
