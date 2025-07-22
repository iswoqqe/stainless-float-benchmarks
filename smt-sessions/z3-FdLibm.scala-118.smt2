; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!945 () Bool)

(assert start!945)

(declare-fun b!4007 () Bool)

(declare-fun res!3045 () Bool)

(declare-fun e!2096 () Bool)

(assert (=> b!4007 (=> (not res!3045) (not e!2096))))

(declare-datatypes ((array!286 0))(
  ( (array!287 (arr!125 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!125 (_ BitVec 32))) )
))
(declare-fun q!85 () array!286)

(declare-fun qInv!0 (array!286) Bool)

(assert (=> b!4007 (= res!3045 (qInv!0 q!85))))

(declare-fun b!4008 () Bool)

(declare-datatypes ((Unit!333 0))(
  ( (Unit!334) )
))
(declare-datatypes ((array!288 0))(
  ( (array!289 (arr!126 (Array (_ BitVec 32) (_ BitVec 32))) (size!126 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!166 0))(
  ( (tuple4!167 (_1!138 Unit!333) (_2!138 array!288) (_3!126 (_ BitVec 32)) (_4!83 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2092 () tuple4!166)

(declare-fun lt!2712 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!2716 () array!288)

(declare-fun Unit!335 () Unit!333)

(assert (=> b!4008 (= e!2092 (tuple4!167 Unit!335 lt!2716 jz!53 lt!2712))))

(declare-fun b!4009 () Bool)

(declare-fun e!2098 () Bool)

(declare-fun e!2099 () Bool)

(assert (=> b!4009 (= e!2098 e!2099)))

(declare-fun res!3042 () Bool)

(assert (=> b!4009 (=> (not res!3042) (not e!2099))))

(declare-fun lt!2714 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4009 (= res!3042 (QInt!0 lt!2714))))

(declare-fun iq!165 () array!288)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4009 (= lt!2714 (select (arr!126 iq!165) i!252))))

(declare-fun b!4010 () Bool)

(declare-fun e!2097 () Bool)

(declare-fun e!2095 () Bool)

(assert (=> b!4010 (= e!2097 e!2095)))

(declare-fun res!3048 () Bool)

(assert (=> b!4010 (=> (not res!3048) (not e!2095))))

(declare-datatypes ((tuple4!168 0))(
  ( (tuple4!169 (_1!139 Unit!333) (_2!139 (_ BitVec 32)) (_3!127 array!288) (_4!84 (_ BitVec 32))) )
))
(declare-fun lt!2715 () tuple4!168)

(assert (=> b!4010 (= res!3048 (and (bvsle #b00000000000000000000000000000000 (_2!139 lt!2715)) (bvsle (_2!139 lt!2715) (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun lt!2717 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!286 (_ BitVec 32) array!288 (_ BitVec 32)) tuple4!168)

(assert (=> b!4010 (= lt!2715 (computeModuloWhile!1 jz!53 q!85 lt!2717 (array!289 (store (arr!126 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2714 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2714) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2714))) (size!126 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2714 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))

(declare-fun b!4011 () Bool)

(assert (=> b!4011 (= e!2096 e!2098)))

(declare-fun res!3046 () Bool)

(assert (=> b!4011 (=> (not res!3046) (not e!2098))))

(declare-fun lt!2711 () (_ FloatingPoint 11 53))

(declare-fun lt!2713 () tuple4!166)

(assert (=> b!4011 (= res!3046 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2711) (fp.lt lt!2711 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!126 (_2!138 lt!2713)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4011 (= lt!2711 (fp.sub roundNearestTiesToEven (_4!83 lt!2713) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!83 lt!2713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!83 lt!2713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!83 lt!2713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!83 lt!2713) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4011 (= lt!2713 e!2092)))

(declare-fun c!689 () Bool)

(assert (=> b!4011 (= c!689 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4011 (= lt!2712 (select (arr!125 q!85) jz!53))))

(assert (=> b!4011 (= lt!2716 (array!289 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4012 () Bool)

(assert (=> b!4012 (= e!2099 e!2097)))

(declare-fun res!3044 () Bool)

(assert (=> b!4012 (=> (not res!3044) (not e!2097))))

(assert (=> b!4012 (= res!3044 (bvslt lt!2717 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4012 (= lt!2717 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4013 () Bool)

(assert (=> b!4013 (= e!2095 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4014 () Bool)

(declare-fun res!3050 () Bool)

(assert (=> b!4014 (=> (not res!3050) (not e!2095))))

(declare-fun iqInv!0 (array!288) Bool)

(assert (=> b!4014 (= res!3050 (iqInv!0 (_3!127 lt!2715)))))

(declare-fun b!4015 () Bool)

(declare-fun res!3047 () Bool)

(assert (=> b!4015 (=> (not res!3047) (not e!2098))))

(assert (=> b!4015 (= res!3047 (iqInv!0 iq!165))))

(declare-fun b!4017 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!286 array!288 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!166)

(assert (=> b!4017 (= e!2092 (computeModuloWhile!0 jz!53 q!85 lt!2716 jz!53 lt!2712))))

(declare-fun res!3043 () Bool)

(assert (=> start!945 (=> (not res!3043) (not e!2096))))

(assert (=> start!945 (= res!3043 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!945 e!2096))

(assert (=> start!945 true))

(declare-fun array_inv!75 (array!288) Bool)

(assert (=> start!945 (array_inv!75 iq!165)))

(declare-fun array_inv!76 (array!286) Bool)

(assert (=> start!945 (array_inv!76 q!85)))

(declare-fun b!4016 () Bool)

(declare-fun res!3049 () Bool)

(assert (=> b!4016 (=> (not res!3049) (not e!2098))))

(assert (=> b!4016 (= res!3049 (and (bvsge (select (arr!126 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!945 res!3043) b!4007))

(assert (= (and b!4007 res!3045) b!4011))

(assert (= (and b!4011 c!689) b!4017))

(assert (= (and b!4011 (not c!689)) b!4008))

(assert (= (and b!4011 res!3046) b!4015))

(assert (= (and b!4015 res!3047) b!4016))

(assert (= (and b!4016 res!3049) b!4009))

(assert (= (and b!4009 res!3042) b!4012))

(assert (= (and b!4012 res!3044) b!4010))

(assert (= (and b!4010 res!3048) b!4014))

(assert (= (and b!4014 res!3050) b!4013))

(declare-fun m!4843 () Bool)

(assert (=> b!4007 m!4843))

(declare-fun m!4845 () Bool)

(assert (=> b!4017 m!4845))

(declare-fun m!4847 () Bool)

(assert (=> b!4011 m!4847))

(declare-fun m!4849 () Bool)

(assert (=> b!4011 m!4849))

(declare-fun m!4851 () Bool)

(assert (=> b!4016 m!4851))

(declare-fun m!4853 () Bool)

(assert (=> b!4014 m!4853))

(declare-fun m!4855 () Bool)

(assert (=> b!4009 m!4855))

(declare-fun m!4857 () Bool)

(assert (=> b!4009 m!4857))

(declare-fun m!4859 () Bool)

(assert (=> b!4015 m!4859))

(declare-fun m!4861 () Bool)

(assert (=> start!945 m!4861))

(declare-fun m!4863 () Bool)

(assert (=> start!945 m!4863))

(declare-fun m!4865 () Bool)

(assert (=> b!4010 m!4865))

(declare-fun m!4867 () Bool)

(assert (=> b!4010 m!4867))

(check-sat (not b!4017) (not b!4014) (not b!4010) (not start!945) (not b!4009) (not b!4007) (not b!4015))
(check-sat)
