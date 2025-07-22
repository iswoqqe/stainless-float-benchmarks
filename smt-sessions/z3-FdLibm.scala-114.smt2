; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!937 () Bool)

(assert start!937)

(declare-fun res!2960 () Bool)

(declare-fun e!2017 () Bool)

(assert (=> start!937 (=> (not res!2960) (not e!2017))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!937 (= res!2960 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!937 e!2017))

(assert (=> start!937 true))

(declare-datatypes ((array!270 0))(
  ( (array!271 (arr!117 (Array (_ BitVec 32) (_ BitVec 32))) (size!117 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!270)

(declare-fun array_inv!67 (array!270) Bool)

(assert (=> start!937 (array_inv!67 iq!165)))

(declare-datatypes ((array!272 0))(
  ( (array!273 (arr!118 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!118 (_ BitVec 32))) )
))
(declare-fun q!85 () array!272)

(declare-fun array_inv!68 (array!272) Bool)

(assert (=> start!937 (array_inv!68 q!85)))

(declare-fun b!3890 () Bool)

(declare-fun res!2958 () Bool)

(assert (=> b!3890 (=> (not res!2958) (not e!2017))))

(declare-fun qInv!0 (array!272) Bool)

(assert (=> b!3890 (= res!2958 (qInv!0 q!85))))

(declare-fun b!3891 () Bool)

(declare-fun lt!2641 () (_ FloatingPoint 11 53))

(declare-fun lt!2640 () array!270)

(declare-datatypes ((Unit!320 0))(
  ( (Unit!321) )
))
(declare-datatypes ((tuple4!156 0))(
  ( (tuple4!157 (_1!133 Unit!320) (_2!133 array!270) (_3!121 (_ BitVec 32)) (_4!78 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2016 () tuple4!156)

(declare-fun Unit!322 () Unit!320)

(assert (=> b!3891 (= e!2016 (tuple4!157 Unit!322 lt!2640 jz!53 lt!2641))))

(declare-fun b!3892 () Bool)

(declare-fun e!2015 () Bool)

(assert (=> b!3892 (= e!2017 e!2015)))

(declare-fun res!2956 () Bool)

(assert (=> b!3892 (=> (not res!2956) (not e!2015))))

(declare-fun lt!2642 () (_ FloatingPoint 11 53))

(declare-fun lt!2639 () tuple4!156)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3892 (= res!2956 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2642) (fp.lt lt!2642 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!117 (_2!133 lt!2639)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3892 (= lt!2642 (fp.sub roundNearestTiesToEven (_4!78 lt!2639) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!78 lt!2639) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!78 lt!2639) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!78 lt!2639) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!78 lt!2639) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3892 (= lt!2639 e!2016)))

(declare-fun c!674 () Bool)

(assert (=> b!3892 (= c!674 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3892 (= lt!2641 (select (arr!118 q!85) jz!53))))

(assert (=> b!3892 (= lt!2640 (array!271 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3893 () Bool)

(declare-fun res!2957 () Bool)

(assert (=> b!3893 (=> (not res!2957) (not e!2015))))

(declare-fun iqInv!0 (array!270) Bool)

(assert (=> b!3893 (= res!2957 (iqInv!0 iq!165))))

(declare-fun b!3894 () Bool)

(declare-fun res!2955 () Bool)

(assert (=> b!3894 (=> (not res!2955) (not e!2015))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!3894 (= res!2955 (and (bvsge (select (arr!117 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!3895 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!272 array!270 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!156)

(assert (=> b!3895 (= e!2016 (computeModuloWhile!0 jz!53 q!85 lt!2640 jz!53 lt!2641))))

(declare-fun b!3896 () Bool)

(assert (=> b!3896 (= e!2015 (and (= (bvand i!252 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!252 #b10000000000000000000000000000000) (bvand (bvadd i!252 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!3897 () Bool)

(declare-fun res!2959 () Bool)

(assert (=> b!3897 (=> (not res!2959) (not e!2015))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3897 (= res!2959 (QInt!0 (select (arr!117 iq!165) i!252)))))

(assert (= (and start!937 res!2960) b!3890))

(assert (= (and b!3890 res!2958) b!3892))

(assert (= (and b!3892 c!674) b!3895))

(assert (= (and b!3892 (not c!674)) b!3891))

(assert (= (and b!3892 res!2956) b!3893))

(assert (= (and b!3893 res!2957) b!3894))

(assert (= (and b!3894 res!2955) b!3897))

(assert (= (and b!3897 res!2959) b!3896))

(declare-fun m!4757 () Bool)

(assert (=> b!3895 m!4757))

(declare-fun m!4759 () Bool)

(assert (=> b!3897 m!4759))

(assert (=> b!3897 m!4759))

(declare-fun m!4761 () Bool)

(assert (=> b!3897 m!4761))

(declare-fun m!4763 () Bool)

(assert (=> b!3894 m!4763))

(declare-fun m!4765 () Bool)

(assert (=> start!937 m!4765))

(declare-fun m!4767 () Bool)

(assert (=> start!937 m!4767))

(declare-fun m!4769 () Bool)

(assert (=> b!3890 m!4769))

(declare-fun m!4771 () Bool)

(assert (=> b!3892 m!4771))

(declare-fun m!4773 () Bool)

(assert (=> b!3892 m!4773))

(declare-fun m!4775 () Bool)

(assert (=> b!3893 m!4775))

(check-sat (not start!937) (not b!3893) (not b!3890) (not b!3897) (not b!3895))
(check-sat)
