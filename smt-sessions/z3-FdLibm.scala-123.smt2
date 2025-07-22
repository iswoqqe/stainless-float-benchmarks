; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!997 () Bool)

(assert start!997)

(declare-fun b!4324 () Bool)

(declare-fun res!3275 () Bool)

(declare-fun e!2289 () Bool)

(assert (=> b!4324 (=> (not res!3275) (not e!2289))))

(declare-datatypes ((array!312 0))(
  ( (array!313 (arr!135 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!135 (_ BitVec 32))) )
))
(declare-fun q!85 () array!312)

(declare-fun qInv!0 (array!312) Bool)

(assert (=> b!4324 (= res!3275 (qInv!0 q!85))))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun b!4325 () Bool)

(declare-fun lt!2938 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!357 0))(
  ( (Unit!358) )
))
(declare-datatypes ((array!314 0))(
  ( (array!315 (arr!136 (Array (_ BitVec 32) (_ BitVec 32))) (size!136 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!186 0))(
  ( (tuple4!187 (_1!148 Unit!357) (_2!148 array!314) (_3!136 (_ BitVec 32)) (_4!93 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2290 () tuple4!186)

(declare-fun lt!2940 () array!314)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!312 array!314 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!186)

(assert (=> b!4325 (= e!2290 (computeModuloWhile!0 jz!53 q!85 lt!2940 jz!53 lt!2938))))

(declare-fun b!4326 () Bool)

(declare-fun res!3279 () Bool)

(declare-fun e!2287 () Bool)

(assert (=> b!4326 (=> (not res!3279) (not e!2287))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun iq!165 () array!314)

(assert (=> b!4326 (= res!3279 (and (bvsge (select (arr!136 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun res!3277 () Bool)

(assert (=> start!997 (=> (not res!3277) (not e!2289))))

(assert (=> start!997 (= res!3277 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!997 e!2289))

(assert (=> start!997 true))

(declare-fun array_inv!85 (array!314) Bool)

(assert (=> start!997 (array_inv!85 iq!165)))

(declare-fun array_inv!86 (array!312) Bool)

(assert (=> start!997 (array_inv!86 q!85)))

(declare-fun b!4327 () Bool)

(assert (=> b!4327 (= e!2289 e!2287)))

(declare-fun res!3276 () Bool)

(assert (=> b!4327 (=> (not res!3276) (not e!2287))))

(declare-fun lt!2939 () (_ FloatingPoint 11 53))

(declare-fun lt!2941 () tuple4!186)

(assert (=> b!4327 (= res!3276 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2939) (fp.lt lt!2939 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!136 (_2!148 lt!2941)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4327 (= lt!2939 (fp.sub roundNearestTiesToEven (_4!93 lt!2941) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!93 lt!2941) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!93 lt!2941) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!93 lt!2941) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!93 lt!2941) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4327 (= lt!2941 e!2290)))

(declare-fun c!731 () Bool)

(assert (=> b!4327 (= c!731 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4327 (= lt!2938 (select (arr!135 q!85) jz!53))))

(assert (=> b!4327 (= lt!2940 (array!315 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4328 () Bool)

(declare-fun lt!2942 () (_ BitVec 32))

(assert (=> b!4328 (= e!2287 (and (bvsge lt!2942 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!2942) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!4328 (= lt!2942 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4329 () Bool)

(declare-fun Unit!359 () Unit!357)

(assert (=> b!4329 (= e!2290 (tuple4!187 Unit!359 lt!2940 jz!53 lt!2938))))

(declare-fun b!4330 () Bool)

(declare-fun res!3278 () Bool)

(assert (=> b!4330 (=> (not res!3278) (not e!2287))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4330 (= res!3278 (QInt!0 (select (arr!136 iq!165) i!252)))))

(declare-fun b!4331 () Bool)

(declare-fun res!3280 () Bool)

(assert (=> b!4331 (=> (not res!3280) (not e!2287))))

(declare-fun iqInv!0 (array!314) Bool)

(assert (=> b!4331 (= res!3280 (iqInv!0 iq!165))))

(assert (= (and start!997 res!3277) b!4324))

(assert (= (and b!4324 res!3275) b!4327))

(assert (= (and b!4327 c!731) b!4325))

(assert (= (and b!4327 (not c!731)) b!4329))

(assert (= (and b!4327 res!3276) b!4331))

(assert (= (and b!4331 res!3280) b!4326))

(assert (= (and b!4326 res!3279) b!4330))

(assert (= (and b!4330 res!3278) b!4328))

(declare-fun m!5069 () Bool)

(assert (=> start!997 m!5069))

(declare-fun m!5071 () Bool)

(assert (=> start!997 m!5071))

(declare-fun m!5073 () Bool)

(assert (=> b!4325 m!5073))

(declare-fun m!5075 () Bool)

(assert (=> b!4326 m!5075))

(declare-fun m!5077 () Bool)

(assert (=> b!4330 m!5077))

(assert (=> b!4330 m!5077))

(declare-fun m!5079 () Bool)

(assert (=> b!4330 m!5079))

(declare-fun m!5081 () Bool)

(assert (=> b!4331 m!5081))

(declare-fun m!5083 () Bool)

(assert (=> b!4324 m!5083))

(declare-fun m!5085 () Bool)

(assert (=> b!4327 m!5085))

(declare-fun m!5087 () Bool)

(assert (=> b!4327 m!5087))

(check-sat (not b!4325) (not b!4324) (not start!997) (not b!4330) (not b!4331))
(check-sat)
