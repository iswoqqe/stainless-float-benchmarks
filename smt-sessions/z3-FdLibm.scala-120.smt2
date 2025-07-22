; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!963 () Bool)

(assert start!963)

(declare-fun res!3134 () Bool)

(declare-fun e!2168 () Bool)

(assert (=> start!963 (=> (not res!3134) (not e!2168))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!963 (= res!3134 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!963 e!2168))

(assert (=> start!963 true))

(declare-datatypes ((array!296 0))(
  ( (array!297 (arr!129 (Array (_ BitVec 32) (_ BitVec 32))) (size!129 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!296)

(declare-fun array_inv!79 (array!296) Bool)

(assert (=> start!963 (array_inv!79 iq!165)))

(declare-datatypes ((array!298 0))(
  ( (array!299 (arr!130 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!130 (_ BitVec 32))) )
))
(declare-fun q!85 () array!298)

(declare-fun array_inv!80 (array!298) Bool)

(assert (=> start!963 (array_inv!80 q!85)))

(declare-fun b!4128 () Bool)

(declare-fun res!3136 () Bool)

(assert (=> b!4128 (=> (not res!3136) (not e!2168))))

(declare-fun qInv!0 (array!298) Bool)

(assert (=> b!4128 (= res!3136 (qInv!0 q!85))))

(declare-fun b!4129 () Bool)

(declare-fun res!3133 () Bool)

(declare-fun e!2173 () Bool)

(assert (=> b!4129 (=> (not res!3133) (not e!2173))))

(declare-fun iqInv!0 (array!296) Bool)

(assert (=> b!4129 (= res!3133 (iqInv!0 iq!165))))

(declare-datatypes ((Unit!342 0))(
  ( (Unit!343) )
))
(declare-datatypes ((tuple4!174 0))(
  ( (tuple4!175 (_1!142 Unit!342) (_2!142 array!296) (_3!130 (_ BitVec 32)) (_4!87 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2172 () tuple4!174)

(declare-fun lt!2798 () array!296)

(declare-fun lt!2801 () (_ FloatingPoint 11 53))

(declare-fun b!4130 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!298 array!296 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!174)

(assert (=> b!4130 (= e!2172 (computeModuloWhile!0 jz!53 q!85 lt!2798 jz!53 lt!2801))))

(declare-fun b!4131 () Bool)

(assert (=> b!4131 (= e!2168 e!2173)))

(declare-fun res!3140 () Bool)

(assert (=> b!4131 (=> (not res!3140) (not e!2173))))

(declare-fun lt!2804 () (_ FloatingPoint 11 53))

(declare-fun lt!2802 () tuple4!174)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4131 (= res!3140 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2804) (fp.lt lt!2804 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!129 (_2!142 lt!2802)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4131 (= lt!2804 (fp.sub roundNearestTiesToEven (_4!87 lt!2802) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!87 lt!2802) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!87 lt!2802) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!87 lt!2802) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!87 lt!2802) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4131 (= lt!2802 e!2172)))

(declare-fun c!704 () Bool)

(assert (=> b!4131 (= c!704 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4131 (= lt!2801 (select (arr!130 q!85) jz!53))))

(assert (=> b!4131 (= lt!2798 (array!297 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4132 () Bool)

(declare-fun e!2169 () Bool)

(assert (=> b!4132 (= e!2173 e!2169)))

(declare-fun res!3138 () Bool)

(assert (=> b!4132 (=> (not res!3138) (not e!2169))))

(declare-fun lt!2799 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4132 (= res!3138 (QInt!0 lt!2799))))

(assert (=> b!4132 (= lt!2799 (select (arr!129 iq!165) i!252))))

(declare-fun b!4133 () Bool)

(declare-fun e!2175 () Bool)

(assert (=> b!4133 (= e!2169 e!2175)))

(declare-fun res!3137 () Bool)

(assert (=> b!4133 (=> (not res!3137) (not e!2175))))

(declare-fun lt!2800 () (_ BitVec 32))

(assert (=> b!4133 (= res!3137 (bvslt lt!2800 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4133 (= lt!2800 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4134 () Bool)

(declare-fun e!2174 () Bool)

(declare-datatypes ((tuple4!176 0))(
  ( (tuple4!177 (_1!143 Unit!342) (_2!143 (_ BitVec 32)) (_3!131 array!296) (_4!88 (_ BitVec 32))) )
))
(declare-fun lt!2803 () tuple4!176)

(assert (=> b!4134 (= e!2174 (and (bvsge (select (arr!129 (_3!131 lt!2803)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= (_4!88 lt!2803) #b00000000000000000000000000000000) (= (_4!88 lt!2803) #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4135 () Bool)

(declare-fun Unit!344 () Unit!342)

(assert (=> b!4135 (= e!2172 (tuple4!175 Unit!344 lt!2798 jz!53 lt!2801))))

(declare-fun b!4136 () Bool)

(declare-fun res!3135 () Bool)

(assert (=> b!4136 (=> (not res!3135) (not e!2174))))

(assert (=> b!4136 (= res!3135 (iqInv!0 (_3!131 lt!2803)))))

(declare-fun b!4137 () Bool)

(assert (=> b!4137 (= e!2175 e!2174)))

(declare-fun res!3139 () Bool)

(assert (=> b!4137 (=> (not res!3139) (not e!2174))))

(assert (=> b!4137 (= res!3139 (and (bvsle #b00000000000000000000000000000000 (_2!143 lt!2803)) (bvsle (_2!143 lt!2803) (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!298 (_ BitVec 32) array!296 (_ BitVec 32)) tuple4!176)

(assert (=> b!4137 (= lt!2803 (computeModuloWhile!1 jz!53 q!85 lt!2800 (array!297 (store (arr!129 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2799 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2799) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2799))) (size!129 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2799 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))

(declare-fun b!4138 () Bool)

(declare-fun res!3141 () Bool)

(assert (=> b!4138 (=> (not res!3141) (not e!2173))))

(assert (=> b!4138 (= res!3141 (and (bvsge (select (arr!129 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!963 res!3134) b!4128))

(assert (= (and b!4128 res!3136) b!4131))

(assert (= (and b!4131 c!704) b!4130))

(assert (= (and b!4131 (not c!704)) b!4135))

(assert (= (and b!4131 res!3140) b!4129))

(assert (= (and b!4129 res!3133) b!4138))

(assert (= (and b!4138 res!3141) b!4132))

(assert (= (and b!4132 res!3138) b!4133))

(assert (= (and b!4133 res!3137) b!4137))

(assert (= (and b!4137 res!3139) b!4136))

(assert (= (and b!4136 res!3135) b!4134))

(declare-fun m!4927 () Bool)

(assert (=> start!963 m!4927))

(declare-fun m!4929 () Bool)

(assert (=> start!963 m!4929))

(declare-fun m!4931 () Bool)

(assert (=> b!4129 m!4931))

(declare-fun m!4933 () Bool)

(assert (=> b!4136 m!4933))

(declare-fun m!4935 () Bool)

(assert (=> b!4128 m!4935))

(declare-fun m!4937 () Bool)

(assert (=> b!4134 m!4937))

(declare-fun m!4939 () Bool)

(assert (=> b!4131 m!4939))

(declare-fun m!4941 () Bool)

(assert (=> b!4131 m!4941))

(declare-fun m!4943 () Bool)

(assert (=> b!4137 m!4943))

(declare-fun m!4945 () Bool)

(assert (=> b!4137 m!4945))

(declare-fun m!4947 () Bool)

(assert (=> b!4138 m!4947))

(declare-fun m!4949 () Bool)

(assert (=> b!4130 m!4949))

(declare-fun m!4951 () Bool)

(assert (=> b!4132 m!4951))

(declare-fun m!4953 () Bool)

(assert (=> b!4132 m!4953))

(check-sat (not b!4132) (not b!4129) (not b!4130) (not b!4128) (not b!4136) (not b!4137) (not start!963))
(check-sat)
