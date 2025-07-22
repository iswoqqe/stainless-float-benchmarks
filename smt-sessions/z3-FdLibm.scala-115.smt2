; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!939 () Bool)

(assert start!939)

(declare-fun res!2976 () Bool)

(declare-fun e!2029 () Bool)

(assert (=> start!939 (=> (not res!2976) (not e!2029))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!939 (= res!2976 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!939 e!2029))

(assert (=> start!939 true))

(declare-datatypes ((array!274 0))(
  ( (array!275 (arr!119 (Array (_ BitVec 32) (_ BitVec 32))) (size!119 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!274)

(declare-fun array_inv!69 (array!274) Bool)

(assert (=> start!939 (array_inv!69 iq!165)))

(declare-datatypes ((array!276 0))(
  ( (array!277 (arr!120 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!120 (_ BitVec 32))) )
))
(declare-fun q!85 () array!276)

(declare-fun array_inv!70 (array!276) Bool)

(assert (=> start!939 (array_inv!70 q!85)))

(declare-fun b!3914 () Bool)

(declare-fun res!2975 () Bool)

(declare-fun e!2033 () Bool)

(assert (=> b!3914 (=> (not res!2975) (not e!2033))))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3914 (= res!2975 (QInt!0 (select (arr!119 iq!165) i!252)))))

(declare-fun b!3915 () Bool)

(declare-fun res!2977 () Bool)

(assert (=> b!3915 (=> (not res!2977) (not e!2033))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!3915 (= res!2977 (and (bvsge (select (arr!119 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!3916 () Bool)

(assert (=> b!3916 (= e!2033 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!3917 () Bool)

(declare-fun res!2974 () Bool)

(assert (=> b!3917 (=> (not res!2974) (not e!2029))))

(declare-fun qInv!0 (array!276) Bool)

(assert (=> b!3917 (= res!2974 (qInv!0 q!85))))

(declare-fun lt!2653 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!323 0))(
  ( (Unit!324) )
))
(declare-datatypes ((tuple4!158 0))(
  ( (tuple4!159 (_1!134 Unit!323) (_2!134 array!274) (_3!122 (_ BitVec 32)) (_4!79 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2031 () tuple4!158)

(declare-fun lt!2654 () array!274)

(declare-fun b!3918 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!276 array!274 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!158)

(assert (=> b!3918 (= e!2031 (computeModuloWhile!0 jz!53 q!85 lt!2654 jz!53 lt!2653))))

(declare-fun b!3919 () Bool)

(declare-fun res!2973 () Bool)

(assert (=> b!3919 (=> (not res!2973) (not e!2033))))

(declare-fun iqInv!0 (array!274) Bool)

(assert (=> b!3919 (= res!2973 (iqInv!0 iq!165))))

(declare-fun b!3920 () Bool)

(declare-fun Unit!325 () Unit!323)

(assert (=> b!3920 (= e!2031 (tuple4!159 Unit!325 lt!2654 jz!53 lt!2653))))

(declare-fun b!3921 () Bool)

(assert (=> b!3921 (= e!2029 e!2033)))

(declare-fun res!2978 () Bool)

(assert (=> b!3921 (=> (not res!2978) (not e!2033))))

(declare-fun lt!2652 () (_ FloatingPoint 11 53))

(declare-fun lt!2651 () tuple4!158)

(assert (=> b!3921 (= res!2978 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2652) (fp.lt lt!2652 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!119 (_2!134 lt!2651)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3921 (= lt!2652 (fp.sub roundNearestTiesToEven (_4!79 lt!2651) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!79 lt!2651) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!79 lt!2651) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!79 lt!2651) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!79 lt!2651) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3921 (= lt!2651 e!2031)))

(declare-fun c!677 () Bool)

(assert (=> b!3921 (= c!677 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3921 (= lt!2653 (select (arr!120 q!85) jz!53))))

(assert (=> b!3921 (= lt!2654 (array!275 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!939 res!2976) b!3917))

(assert (= (and b!3917 res!2974) b!3921))

(assert (= (and b!3921 c!677) b!3918))

(assert (= (and b!3921 (not c!677)) b!3920))

(assert (= (and b!3921 res!2978) b!3919))

(assert (= (and b!3919 res!2973) b!3915))

(assert (= (and b!3915 res!2977) b!3914))

(assert (= (and b!3914 res!2975) b!3916))

(declare-fun m!4777 () Bool)

(assert (=> b!3919 m!4777))

(declare-fun m!4779 () Bool)

(assert (=> b!3918 m!4779))

(declare-fun m!4781 () Bool)

(assert (=> b!3917 m!4781))

(declare-fun m!4783 () Bool)

(assert (=> b!3914 m!4783))

(assert (=> b!3914 m!4783))

(declare-fun m!4785 () Bool)

(assert (=> b!3914 m!4785))

(declare-fun m!4787 () Bool)

(assert (=> b!3921 m!4787))

(declare-fun m!4789 () Bool)

(assert (=> b!3921 m!4789))

(declare-fun m!4791 () Bool)

(assert (=> start!939 m!4791))

(declare-fun m!4793 () Bool)

(assert (=> start!939 m!4793))

(declare-fun m!4795 () Bool)

(assert (=> b!3915 m!4795))

(check-sat (not b!3919) (not start!939) (not b!3914) (not b!3918) (not b!3917))
(check-sat)
