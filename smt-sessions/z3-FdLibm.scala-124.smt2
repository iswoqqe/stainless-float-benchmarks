; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!999 () Bool)

(assert start!999)

(declare-fun b!4352 () Bool)

(declare-fun e!2310 () Bool)

(declare-fun e!2311 () Bool)

(assert (=> b!4352 (= e!2310 e!2311)))

(declare-fun res!3297 () Bool)

(assert (=> b!4352 (=> (not res!3297) (not e!2311))))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!2959 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((Unit!360 0))(
  ( (Unit!361) )
))
(declare-datatypes ((array!316 0))(
  ( (array!317 (arr!137 (Array (_ BitVec 32) (_ BitVec 32))) (size!137 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!188 0))(
  ( (tuple4!189 (_1!149 Unit!360) (_2!149 array!316) (_3!137 (_ BitVec 32)) (_4!94 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2956 () tuple4!188)

(assert (=> b!4352 (= res!3297 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2959) (fp.lt lt!2959 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!137 (_2!149 lt!2956)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4352 (= lt!2959 (fp.sub roundNearestTiesToEven (_4!94 lt!2956) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!94 lt!2956) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!94 lt!2956) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!94 lt!2956) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!94 lt!2956) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2305 () tuple4!188)

(assert (=> b!4352 (= lt!2956 e!2305)))

(declare-fun c!734 () Bool)

(assert (=> b!4352 (= c!734 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2960 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!318 0))(
  ( (array!319 (arr!138 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!138 (_ BitVec 32))) )
))
(declare-fun q!85 () array!318)

(assert (=> b!4352 (= lt!2960 (select (arr!138 q!85) jz!53))))

(declare-fun lt!2957 () array!316)

(assert (=> b!4352 (= lt!2957 (array!317 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4353 () Bool)

(declare-fun res!3304 () Bool)

(assert (=> b!4353 (=> (not res!3304) (not e!2310))))

(declare-fun qInv!0 (array!318) Bool)

(assert (=> b!4353 (= res!3304 (qInv!0 q!85))))

(declare-fun b!4354 () Bool)

(declare-fun e!2308 () Bool)

(declare-fun e!2306 () Bool)

(assert (=> b!4354 (= e!2308 e!2306)))

(declare-fun res!3300 () Bool)

(assert (=> b!4354 (=> (not res!3300) (not e!2306))))

(declare-fun lt!2958 () (_ BitVec 32))

(assert (=> b!4354 (= res!3300 (and (bvsge lt!2958 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!2958) (bvsle lt!2958 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4354 (= lt!2958 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4355 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!318 array!316 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!188)

(assert (=> b!4355 (= e!2305 (computeModuloWhile!0 jz!53 q!85 lt!2957 jz!53 lt!2960))))

(declare-fun b!4356 () Bool)

(declare-fun Unit!362 () Unit!360)

(assert (=> b!4356 (= e!2305 (tuple4!189 Unit!362 lt!2957 jz!53 lt!2960))))

(declare-fun b!4357 () Bool)

(assert (=> b!4357 (= e!2306 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4358 () Bool)

(assert (=> b!4358 (= e!2311 e!2308)))

(declare-fun res!3301 () Bool)

(assert (=> b!4358 (=> (not res!3301) (not e!2308))))

(declare-fun lt!2955 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4358 (= res!3301 (QInt!0 lt!2955))))

(declare-fun iq!165 () array!316)

(assert (=> b!4358 (= lt!2955 (select (arr!137 iq!165) i!252))))

(declare-fun b!4359 () Bool)

(declare-fun res!3302 () Bool)

(assert (=> b!4359 (=> (not res!3302) (not e!2306))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun iqInv!0 (array!316) Bool)

(assert (=> b!4359 (= res!3302 (iqInv!0 (array!317 (store (arr!137 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2955 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2955) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2955))) (size!137 iq!165))))))

(declare-fun b!4360 () Bool)

(declare-fun res!3299 () Bool)

(assert (=> b!4360 (=> (not res!3299) (not e!2311))))

(assert (=> b!4360 (= res!3299 (iqInv!0 iq!165))))

(declare-fun res!3298 () Bool)

(assert (=> start!999 (=> (not res!3298) (not e!2310))))

(assert (=> start!999 (= res!3298 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!999 e!2310))

(assert (=> start!999 true))

(declare-fun array_inv!87 (array!316) Bool)

(assert (=> start!999 (array_inv!87 iq!165)))

(declare-fun array_inv!88 (array!318) Bool)

(assert (=> start!999 (array_inv!88 q!85)))

(declare-fun b!4361 () Bool)

(declare-fun res!3303 () Bool)

(assert (=> b!4361 (=> (not res!3303) (not e!2311))))

(assert (=> b!4361 (= res!3303 (and (bvsge (select (arr!137 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!999 res!3298) b!4353))

(assert (= (and b!4353 res!3304) b!4352))

(assert (= (and b!4352 c!734) b!4355))

(assert (= (and b!4352 (not c!734)) b!4356))

(assert (= (and b!4352 res!3297) b!4360))

(assert (= (and b!4360 res!3299) b!4361))

(assert (= (and b!4361 res!3303) b!4358))

(assert (= (and b!4358 res!3301) b!4354))

(assert (= (and b!4354 res!3300) b!4359))

(assert (= (and b!4359 res!3302) b!4357))

(declare-fun m!5089 () Bool)

(assert (=> b!4358 m!5089))

(declare-fun m!5091 () Bool)

(assert (=> b!4358 m!5091))

(declare-fun m!5093 () Bool)

(assert (=> b!4353 m!5093))

(declare-fun m!5095 () Bool)

(assert (=> b!4359 m!5095))

(declare-fun m!5097 () Bool)

(assert (=> b!4359 m!5097))

(declare-fun m!5099 () Bool)

(assert (=> b!4361 m!5099))

(declare-fun m!5101 () Bool)

(assert (=> b!4352 m!5101))

(declare-fun m!5103 () Bool)

(assert (=> b!4352 m!5103))

(declare-fun m!5105 () Bool)

(assert (=> start!999 m!5105))

(declare-fun m!5107 () Bool)

(assert (=> start!999 m!5107))

(declare-fun m!5109 () Bool)

(assert (=> b!4360 m!5109))

(declare-fun m!5111 () Bool)

(assert (=> b!4355 m!5111))

(check-sat (not b!4360) (not b!4353) (not b!4358) (not b!4359) (not b!4355) (not start!999))
(check-sat)
