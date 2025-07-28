; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!949 () Bool)

(assert start!949)

(declare-fun b!4312 () Bool)

(declare-fun res!3334 () Bool)

(declare-fun e!2123 () Bool)

(assert (=> b!4312 (=> (not res!3334) (not e!2123))))

(declare-datatypes ((array!278 0))(
  ( (array!279 (arr!121 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!121 (_ BitVec 32))) )
))
(declare-fun q!85 () array!278)

(declare-fun qInv!0 (array!278) Bool)

(assert (=> b!4312 (= res!3334 (qInv!0 q!85))))

(declare-fun res!3335 () Bool)

(assert (=> start!949 (=> (not res!3335) (not e!2123))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!949 (= res!3335 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!949 e!2123))

(assert (=> start!949 true))

(declare-datatypes ((array!280 0))(
  ( (array!281 (arr!122 (Array (_ BitVec 32) (_ BitVec 32))) (size!122 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!280)

(declare-fun array_inv!71 (array!280) Bool)

(assert (=> start!949 (array_inv!71 iq!165)))

(declare-fun array_inv!72 (array!278) Bool)

(assert (=> start!949 (array_inv!72 q!85)))

(declare-fun b!4313 () Bool)

(declare-fun lt!2746 () array!280)

(declare-datatypes ((Unit!341 0))(
  ( (Unit!342) )
))
(declare-datatypes ((tuple4!160 0))(
  ( (tuple4!161 (_1!135 Unit!341) (_2!135 array!280) (_3!123 (_ BitVec 32)) (_4!80 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2124 () tuple4!160)

(declare-fun lt!2747 () (_ FloatingPoint 11 53))

(declare-fun Unit!343 () Unit!341)

(assert (=> b!4313 (= e!2124 (tuple4!161 Unit!343 lt!2746 jz!53 lt!2747))))

(declare-fun b!4314 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!278 array!280 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!160)

(assert (=> b!4314 (= e!2124 (computeModuloWhile!0 jz!53 q!85 lt!2746 jz!53 lt!2747))))

(declare-fun b!4315 () Bool)

(declare-fun e!2125 () Bool)

(assert (=> b!4315 (= e!2123 e!2125)))

(declare-fun res!3331 () Bool)

(assert (=> b!4315 (=> (not res!3331) (not e!2125))))

(declare-fun lt!2745 () tuple4!160)

(declare-fun i!252 () (_ BitVec 32))

(declare-fun lt!2744 () (_ FloatingPoint 11 53))

(assert (=> b!4315 (= res!3331 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2744) (fp.lt lt!2744 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!122 (_2!135 lt!2745)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4315 (= lt!2744 (fp.sub roundNearestTiesToEven (_4!80 lt!2745) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!80 lt!2745) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!80 lt!2745) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!80 lt!2745) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!80 lt!2745) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4315 (= lt!2745 e!2124)))

(declare-fun c!697 () Bool)

(assert (=> b!4315 (= c!697 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4315 (= lt!2747 (select (arr!121 q!85) jz!53))))

(assert (=> b!4315 (= lt!2746 (array!281 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4316 () Bool)

(declare-fun res!3337 () Bool)

(assert (=> b!4316 (=> (not res!3337) (not e!2125))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4316 (= res!3337 (QInt!0 (select (arr!122 iq!165) i!252)))))

(declare-fun b!4317 () Bool)

(declare-fun res!3336 () Bool)

(assert (=> b!4317 (=> (not res!3336) (not e!2125))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4317 (= res!3336 (and (bvsge (select (arr!122 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4318 () Bool)

(declare-fun lt!2750 () (_ BitVec 32))

(declare-fun e!2122 () Bool)

(assert (=> b!4318 (= e!2122 (bvsge (bvsub jz!53 lt!2750) (bvsub jz!53 i!252)))))

(declare-fun lt!2748 () tuple4!160)

(declare-fun e!2120 () tuple4!160)

(assert (=> b!4318 (= lt!2748 e!2120)))

(declare-fun c!698 () Bool)

(assert (=> b!4318 (= c!698 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2743 () (_ FloatingPoint 11 53))

(assert (=> b!4318 (= lt!2743 (select (arr!121 q!85) jz!53))))

(declare-fun lt!2749 () array!280)

(assert (=> b!4318 (= lt!2749 (array!281 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4319 () Bool)

(assert (=> b!4319 (= e!2125 e!2122)))

(declare-fun res!3332 () Bool)

(assert (=> b!4319 (=> (not res!3332) (not e!2122))))

(assert (=> b!4319 (= res!3332 (bvslt lt!2750 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4319 (= lt!2750 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4320 () Bool)

(assert (=> b!4320 (= e!2120 (computeModuloWhile!0 jz!53 q!85 lt!2749 jz!53 lt!2743))))

(declare-fun b!4321 () Bool)

(declare-fun Unit!344 () Unit!341)

(assert (=> b!4321 (= e!2120 (tuple4!161 Unit!344 lt!2749 jz!53 lt!2743))))

(declare-fun b!4322 () Bool)

(declare-fun res!3333 () Bool)

(assert (=> b!4322 (=> (not res!3333) (not e!2125))))

(declare-fun iqInv!0 (array!280) Bool)

(assert (=> b!4322 (= res!3333 (iqInv!0 iq!165))))

(assert (= (and start!949 res!3335) b!4312))

(assert (= (and b!4312 res!3334) b!4315))

(assert (= (and b!4315 c!697) b!4314))

(assert (= (and b!4315 (not c!697)) b!4313))

(assert (= (and b!4315 res!3331) b!4322))

(assert (= (and b!4322 res!3333) b!4317))

(assert (= (and b!4317 res!3336) b!4316))

(assert (= (and b!4316 res!3337) b!4319))

(assert (= (and b!4319 res!3332) b!4318))

(assert (= (and b!4318 c!698) b!4320))

(assert (= (and b!4318 (not c!698)) b!4321))

(declare-fun m!6405 () Bool)

(assert (=> b!4315 m!6405))

(declare-fun m!6407 () Bool)

(assert (=> b!4315 m!6407))

(declare-fun m!6409 () Bool)

(assert (=> b!4314 m!6409))

(declare-fun m!6411 () Bool)

(assert (=> start!949 m!6411))

(declare-fun m!6413 () Bool)

(assert (=> start!949 m!6413))

(declare-fun m!6415 () Bool)

(assert (=> b!4316 m!6415))

(assert (=> b!4316 m!6415))

(declare-fun m!6417 () Bool)

(assert (=> b!4316 m!6417))

(declare-fun m!6419 () Bool)

(assert (=> b!4317 m!6419))

(declare-fun m!6421 () Bool)

(assert (=> b!4312 m!6421))

(assert (=> b!4318 m!6407))

(declare-fun m!6423 () Bool)

(assert (=> b!4320 m!6423))

(declare-fun m!6425 () Bool)

(assert (=> b!4322 m!6425))

(check-sat (not b!4314) (not b!4312) (not b!4322) (not b!4320) (not start!949) (not b!4316))
(check-sat)
