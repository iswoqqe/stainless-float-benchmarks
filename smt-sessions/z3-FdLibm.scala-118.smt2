; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!953 () Bool)

(assert start!953)

(declare-fun b!4375 () Bool)

(declare-fun e!2167 () Bool)

(declare-fun e!2170 () Bool)

(assert (=> b!4375 (= e!2167 e!2170)))

(declare-fun res!3383 () Bool)

(assert (=> b!4375 (=> (not res!3383) (not e!2170))))

(declare-fun lt!2785 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4375 (= res!3383 (bvslt lt!2785 (bvsub jz!53 #b00000000000000000000000000000001)))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4375 (= lt!2785 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-datatypes ((array!286 0))(
  ( (array!287 (arr!125 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!125 (_ BitVec 32))) )
))
(declare-fun q!85 () array!286)

(declare-datatypes ((array!288 0))(
  ( (array!289 (arr!126 (Array (_ BitVec 32) (_ BitVec 32))) (size!126 (_ BitVec 32))) )
))
(declare-fun lt!2789 () array!288)

(declare-fun b!4376 () Bool)

(declare-datatypes ((Unit!348 0))(
  ( (Unit!349) )
))
(declare-datatypes ((tuple4!166 0))(
  ( (tuple4!167 (_1!138 Unit!348) (_2!138 array!288) (_3!126 (_ BitVec 32)) (_4!83 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2164 () tuple4!166)

(declare-fun lt!2783 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!286 array!288 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!166)

(assert (=> b!4376 (= e!2164 (computeModuloWhile!0 jz!53 q!85 lt!2789 jz!53 lt!2783))))

(declare-fun b!4377 () Bool)

(declare-fun res!3387 () Bool)

(declare-fun e!2166 () Bool)

(assert (=> b!4377 (=> (not res!3387) (not e!2166))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun iq!165 () array!288)

(assert (=> b!4377 (= res!3387 (and (bvsge (select (arr!126 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4378 () Bool)

(declare-fun res!3388 () Bool)

(declare-fun e!2168 () Bool)

(assert (=> b!4378 (=> (not res!3388) (not e!2168))))

(declare-fun qInv!0 (array!286) Bool)

(assert (=> b!4378 (= res!3388 (qInv!0 q!85))))

(declare-fun b!4379 () Bool)

(declare-fun res!3382 () Bool)

(assert (=> b!4379 (=> (not res!3382) (not e!2166))))

(declare-fun iqInv!0 (array!288) Bool)

(assert (=> b!4379 (= res!3382 (iqInv!0 iq!165))))

(declare-fun b!4380 () Bool)

(declare-fun Unit!350 () Unit!348)

(assert (=> b!4380 (= e!2164 (tuple4!167 Unit!350 lt!2789 jz!53 lt!2783))))

(declare-fun b!4381 () Bool)

(declare-fun e!2163 () Bool)

(assert (=> b!4381 (= e!2163 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!3380 () Bool)

(assert (=> start!953 (=> (not res!3380) (not e!2168))))

(assert (=> start!953 (= res!3380 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!953 e!2168))

(assert (=> start!953 true))

(declare-fun array_inv!75 (array!288) Bool)

(assert (=> start!953 (array_inv!75 iq!165)))

(declare-fun array_inv!76 (array!286) Bool)

(assert (=> start!953 (array_inv!76 q!85)))

(declare-fun b!4382 () Bool)

(assert (=> b!4382 (= e!2170 e!2163)))

(declare-fun res!3384 () Bool)

(assert (=> b!4382 (=> (not res!3384) (not e!2163))))

(declare-datatypes ((tuple4!168 0))(
  ( (tuple4!169 (_1!139 Unit!348) (_2!139 (_ BitVec 32)) (_3!127 array!288) (_4!84 (_ BitVec 32))) )
))
(declare-fun lt!2784 () tuple4!168)

(assert (=> b!4382 (= res!3384 (and (bvsle #b00000000000000000000000000000000 (_2!139 lt!2784)) (bvsle (_2!139 lt!2784) (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun lt!2786 () (_ BitVec 32))

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!286 (_ BitVec 32) array!288 (_ BitVec 32)) tuple4!168)

(assert (=> b!4382 (= lt!2784 (computeModuloWhile!1 jz!53 q!85 lt!2785 (array!289 (store (arr!126 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2786 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2786) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2786))) (size!126 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2786 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))

(declare-fun b!4383 () Bool)

(declare-fun res!3386 () Bool)

(assert (=> b!4383 (=> (not res!3386) (not e!2163))))

(assert (=> b!4383 (= res!3386 (iqInv!0 (_3!127 lt!2784)))))

(declare-fun b!4384 () Bool)

(assert (=> b!4384 (= e!2166 e!2167)))

(declare-fun res!3385 () Bool)

(assert (=> b!4384 (=> (not res!3385) (not e!2167))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4384 (= res!3385 (QInt!0 lt!2786))))

(assert (=> b!4384 (= lt!2786 (select (arr!126 iq!165) i!252))))

(declare-fun b!4385 () Bool)

(assert (=> b!4385 (= e!2168 e!2166)))

(declare-fun res!3381 () Bool)

(assert (=> b!4385 (=> (not res!3381) (not e!2166))))

(declare-fun lt!2787 () (_ FloatingPoint 11 53))

(declare-fun lt!2788 () tuple4!166)

(assert (=> b!4385 (= res!3381 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2787) (fp.lt lt!2787 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!126 (_2!138 lt!2788)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4385 (= lt!2787 (fp.sub roundNearestTiesToEven (_4!83 lt!2788) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!83 lt!2788) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!83 lt!2788) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!83 lt!2788) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!83 lt!2788) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4385 (= lt!2788 e!2164)))

(declare-fun c!704 () Bool)

(assert (=> b!4385 (= c!704 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4385 (= lt!2783 (select (arr!125 q!85) jz!53))))

(assert (=> b!4385 (= lt!2789 (array!289 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!953 res!3380) b!4378))

(assert (= (and b!4378 res!3388) b!4385))

(assert (= (and b!4385 c!704) b!4376))

(assert (= (and b!4385 (not c!704)) b!4380))

(assert (= (and b!4385 res!3381) b!4379))

(assert (= (and b!4379 res!3382) b!4377))

(assert (= (and b!4377 res!3387) b!4384))

(assert (= (and b!4384 res!3385) b!4375))

(assert (= (and b!4375 res!3383) b!4382))

(assert (= (and b!4382 res!3384) b!4383))

(assert (= (and b!4383 res!3386) b!4381))

(declare-fun m!6451 () Bool)

(assert (=> b!4377 m!6451))

(declare-fun m!6453 () Bool)

(assert (=> b!4383 m!6453))

(declare-fun m!6455 () Bool)

(assert (=> b!4379 m!6455))

(declare-fun m!6457 () Bool)

(assert (=> b!4378 m!6457))

(declare-fun m!6459 () Bool)

(assert (=> start!953 m!6459))

(declare-fun m!6461 () Bool)

(assert (=> start!953 m!6461))

(declare-fun m!6463 () Bool)

(assert (=> b!4384 m!6463))

(declare-fun m!6465 () Bool)

(assert (=> b!4384 m!6465))

(declare-fun m!6467 () Bool)

(assert (=> b!4376 m!6467))

(declare-fun m!6469 () Bool)

(assert (=> b!4382 m!6469))

(declare-fun m!6471 () Bool)

(assert (=> b!4382 m!6471))

(declare-fun m!6473 () Bool)

(assert (=> b!4385 m!6473))

(declare-fun m!6475 () Bool)

(assert (=> b!4385 m!6475))

(check-sat (not b!4383) (not b!4384) (not b!4378) (not b!4376) (not b!4379) (not b!4382) (not start!953))
(check-sat)
