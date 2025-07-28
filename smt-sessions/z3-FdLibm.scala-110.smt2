; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!891 () Bool)

(assert start!891)

(declare-fun b!4068 () Bool)

(declare-fun res!3153 () Bool)

(declare-fun e!1963 () Bool)

(assert (=> b!4068 (=> (not res!3153) (not e!1963))))

(declare-datatypes ((array!246 0))(
  ( (array!247 (arr!109 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!109 (_ BitVec 32))) )
))
(declare-fun q!85 () array!246)

(declare-fun qInv!0 (array!246) Bool)

(assert (=> b!4068 (= res!3153 (qInv!0 q!85))))

(declare-fun b!4069 () Bool)

(declare-fun e!1959 () Bool)

(assert (=> b!4069 (= e!1963 e!1959)))

(declare-fun res!3152 () Bool)

(assert (=> b!4069 (=> (not res!3152) (not e!1959))))

(declare-datatypes ((Unit!319 0))(
  ( (Unit!320) )
))
(declare-datatypes ((array!248 0))(
  ( (array!249 (arr!110 (Array (_ BitVec 32) (_ BitVec 32))) (size!110 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!148 0))(
  ( (tuple4!149 (_1!129 Unit!319) (_2!129 array!248) (_3!117 (_ BitVec 32)) (_4!74 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2597 () tuple4!148)

(declare-fun lt!2598 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4069 (= res!3152 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2598) (fp.lt lt!2598 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!110 (_2!129 lt!2597)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4069 (= lt!2598 (fp.sub roundNearestTiesToEven (_4!74 lt!2597) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!74 lt!2597) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!74 lt!2597) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!74 lt!2597) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!74 lt!2597) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1961 () tuple4!148)

(assert (=> b!4069 (= lt!2597 e!1961)))

(declare-fun c!665 () Bool)

(assert (=> b!4069 (= c!665 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2599 () (_ FloatingPoint 11 53))

(assert (=> b!4069 (= lt!2599 (select (arr!109 q!85) jz!53))))

(declare-fun lt!2600 () array!248)

(assert (=> b!4069 (= lt!2600 (array!249 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4070 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!246 array!248 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!148)

(assert (=> b!4070 (= e!1961 (computeModuloWhile!0 jz!53 q!85 lt!2600 jz!53 lt!2599))))

(declare-fun b!4071 () Bool)

(declare-fun Unit!321 () Unit!319)

(assert (=> b!4071 (= e!1961 (tuple4!149 Unit!321 lt!2600 jz!53 lt!2599))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun b!4072 () Bool)

(declare-fun iq!165 () array!248)

(assert (=> b!4072 (= e!1959 (and (bvsge (select (arr!110 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (or (bvslt i!252 #b00000000000000000000000000000000) (bvsge i!252 (size!110 iq!165)))))))

(declare-fun b!4073 () Bool)

(declare-fun res!3151 () Bool)

(assert (=> b!4073 (=> (not res!3151) (not e!1959))))

(declare-fun iqInv!0 (array!248) Bool)

(assert (=> b!4073 (= res!3151 (iqInv!0 iq!165))))

(declare-fun res!3154 () Bool)

(assert (=> start!891 (=> (not res!3154) (not e!1963))))

(assert (=> start!891 (= res!3154 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!891 e!1963))

(assert (=> start!891 true))

(declare-fun array_inv!59 (array!248) Bool)

(assert (=> start!891 (array_inv!59 iq!165)))

(declare-fun array_inv!60 (array!246) Bool)

(assert (=> start!891 (array_inv!60 q!85)))

(assert (= (and start!891 res!3154) b!4068))

(assert (= (and b!4068 res!3153) b!4069))

(assert (= (and b!4069 c!665) b!4070))

(assert (= (and b!4069 (not c!665)) b!4071))

(assert (= (and b!4069 res!3152) b!4073))

(assert (= (and b!4073 res!3151) b!4072))

(declare-fun m!6233 () Bool)

(assert (=> b!4070 m!6233))

(declare-fun m!6235 () Bool)

(assert (=> b!4069 m!6235))

(declare-fun m!6237 () Bool)

(assert (=> b!4069 m!6237))

(declare-fun m!6239 () Bool)

(assert (=> b!4068 m!6239))

(declare-fun m!6241 () Bool)

(assert (=> start!891 m!6241))

(declare-fun m!6243 () Bool)

(assert (=> start!891 m!6243))

(declare-fun m!6245 () Bool)

(assert (=> b!4072 m!6245))

(declare-fun m!6247 () Bool)

(assert (=> b!4073 m!6247))

(check-sat (not b!4068) (not b!4073) (not b!4070) (not start!891))
(check-sat)
(get-model)

(declare-fun d!2393 () Bool)

(declare-fun res!3157 () Bool)

(declare-fun e!1966 () Bool)

(assert (=> d!2393 (=> (not res!3157) (not e!1966))))

(assert (=> d!2393 (= res!3157 (= (size!109 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2393 (= (qInv!0 q!85) e!1966)))

(declare-fun b!4076 () Bool)

(declare-fun lambda!163 () Int)

(declare-fun all20!0 (array!246 Int) Bool)

(assert (=> b!4076 (= e!1966 (all20!0 q!85 lambda!163))))

(assert (= (and d!2393 res!3157) b!4076))

(declare-fun m!6249 () Bool)

(assert (=> b!4076 m!6249))

(assert (=> b!4068 d!2393))

(declare-fun d!2395 () Bool)

(declare-fun res!3160 () Bool)

(declare-fun e!1969 () Bool)

(assert (=> d!2395 (=> (not res!3160) (not e!1969))))

(assert (=> d!2395 (= res!3160 (= (size!110 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2395 (= (iqInv!0 iq!165) e!1969)))

(declare-fun b!4079 () Bool)

(declare-fun lambda!166 () Int)

(declare-fun all20Int!0 (array!248 Int) Bool)

(assert (=> b!4079 (= e!1969 (all20Int!0 iq!165 lambda!166))))

(assert (= (and d!2395 res!3160) b!4079))

(declare-fun m!6251 () Bool)

(assert (=> b!4079 m!6251))

(assert (=> b!4073 d!2395))

(declare-fun b!4092 () Bool)

(declare-fun res!3170 () Bool)

(declare-fun e!1978 () Bool)

(assert (=> b!4092 (=> (not res!3170) (not e!1978))))

(assert (=> b!4092 (= res!3170 (iqInv!0 lt!2600))))

(declare-fun b!4093 () Bool)

(assert (=> b!4093 (= e!1978 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2614 () (_ FloatingPoint 11 53))

(declare-fun e!1977 () tuple4!148)

(declare-fun b!4094 () Bool)

(declare-fun lt!2612 () array!248)

(declare-fun lt!2615 () (_ BitVec 32))

(assert (=> b!4094 (= e!1977 (computeModuloWhile!0 jz!53 q!85 lt!2612 lt!2615 lt!2614))))

(declare-fun b!4095 () Bool)

(declare-fun res!3171 () Bool)

(declare-fun e!1976 () Bool)

(assert (=> b!4095 (=> (not res!3171) (not e!1976))))

(declare-fun lt!2611 () tuple4!148)

(assert (=> b!4095 (= res!3171 (iqInv!0 (_2!129 lt!2611)))))

(declare-fun b!4096 () Bool)

(assert (=> b!4096 (= e!1976 (bvsle (_3!117 lt!2611) #b00000000000000000000000000000000))))

(declare-fun b!4097 () Bool)

(declare-fun Unit!322 () Unit!319)

(assert (=> b!4097 (= e!1977 (tuple4!149 Unit!322 lt!2612 lt!2615 lt!2614))))

(declare-fun d!2397 () Bool)

(assert (=> d!2397 e!1976))

(declare-fun res!3169 () Bool)

(assert (=> d!2397 (=> (not res!3169) (not e!1976))))

(assert (=> d!2397 (= res!3169 (and true true (bvsle #b00000000000000000000000000000000 (_3!117 lt!2611)) (bvsle (_3!117 lt!2611) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!74 lt!2611)) (fp.leq (_4!74 lt!2611) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2397 (= lt!2611 e!1977)))

(declare-fun c!668 () Bool)

(assert (=> d!2397 (= c!668 (bvsgt lt!2615 #b00000000000000000000000000000000))))

(assert (=> d!2397 (= lt!2615 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2613 () (_ FloatingPoint 11 53))

(assert (=> d!2397 (= lt!2614 (fp.add roundNearestTiesToEven (select (arr!109 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2613))))

(assert (=> d!2397 (= lt!2612 (array!249 (store (arr!110 lt!2600) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2599 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2613))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2599 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2613)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2599 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2613)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2599 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2613))))))) (size!110 lt!2600)))))

(assert (=> d!2397 (= lt!2613 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2599)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2599) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2599) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2599)))))))))

(assert (=> d!2397 e!1978))

(declare-fun res!3172 () Bool)

(assert (=> d!2397 (=> (not res!3172) (not e!1978))))

(assert (=> d!2397 (= res!3172 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2599) (fp.leq lt!2599 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2397 (= (computeModuloWhile!0 jz!53 q!85 lt!2600 jz!53 lt!2599) lt!2611)))

(assert (= (and d!2397 res!3172) b!4092))

(assert (= (and b!4092 res!3170) b!4093))

(assert (= (and d!2397 c!668) b!4094))

(assert (= (and d!2397 (not c!668)) b!4097))

(assert (= (and d!2397 res!3169) b!4095))

(assert (= (and b!4095 res!3171) b!4096))

(declare-fun m!6253 () Bool)

(assert (=> b!4092 m!6253))

(declare-fun m!6255 () Bool)

(assert (=> b!4094 m!6255))

(declare-fun m!6257 () Bool)

(assert (=> b!4095 m!6257))

(declare-fun m!6259 () Bool)

(assert (=> d!2397 m!6259))

(declare-fun m!6261 () Bool)

(assert (=> d!2397 m!6261))

(assert (=> b!4070 d!2397))

(declare-fun d!2399 () Bool)

(assert (=> d!2399 (= (array_inv!59 iq!165) (bvsge (size!110 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!891 d!2399))

(declare-fun d!2401 () Bool)

(assert (=> d!2401 (= (array_inv!60 q!85) (bvsge (size!109 q!85) #b00000000000000000000000000000000))))

(assert (=> start!891 d!2401))

(check-sat (not b!4079) (not b!4092) (not b!4095) (not b!4094) (not b!4076))
(check-sat)
