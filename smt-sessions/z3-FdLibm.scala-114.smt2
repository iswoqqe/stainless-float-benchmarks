; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!945 () Bool)

(assert start!945)

(declare-fun b!4258 () Bool)

(declare-fun e!2087 () Bool)

(declare-fun e!2089 () Bool)

(assert (=> b!4258 (= e!2087 e!2089)))

(declare-fun res!3298 () Bool)

(assert (=> b!4258 (=> (not res!3298) (not e!2089))))

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((Unit!335 0))(
  ( (Unit!336) )
))
(declare-datatypes ((array!270 0))(
  ( (array!271 (arr!117 (Array (_ BitVec 32) (_ BitVec 32))) (size!117 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!156 0))(
  ( (tuple4!157 (_1!133 Unit!335) (_2!133 array!270) (_3!121 (_ BitVec 32)) (_4!78 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2714 () tuple4!156)

(declare-fun lt!2711 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4258 (= res!3298 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2711) (fp.lt lt!2711 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!117 (_2!133 lt!2714)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4258 (= lt!2711 (fp.sub roundNearestTiesToEven (_4!78 lt!2714) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!78 lt!2714) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!78 lt!2714) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!78 lt!2714) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!78 lt!2714) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2088 () tuple4!156)

(assert (=> b!4258 (= lt!2714 e!2088)))

(declare-fun c!689 () Bool)

(assert (=> b!4258 (= c!689 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2713 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!272 0))(
  ( (array!273 (arr!118 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!118 (_ BitVec 32))) )
))
(declare-fun q!85 () array!272)

(assert (=> b!4258 (= lt!2713 (select (arr!118 q!85) jz!53))))

(declare-fun lt!2712 () array!270)

(assert (=> b!4258 (= lt!2712 (array!271 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4259 () Bool)

(declare-fun res!3296 () Bool)

(assert (=> b!4259 (=> (not res!3296) (not e!2089))))

(declare-fun iq!165 () array!270)

(declare-fun iqInv!0 (array!270) Bool)

(assert (=> b!4259 (= res!3296 (iqInv!0 iq!165))))

(declare-fun b!4260 () Bool)

(declare-fun res!3294 () Bool)

(assert (=> b!4260 (=> (not res!3294) (not e!2089))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4260 (= res!3294 (QInt!0 (select (arr!117 iq!165) i!252)))))

(declare-fun b!4261 () Bool)

(declare-fun res!3297 () Bool)

(assert (=> b!4261 (=> (not res!3297) (not e!2089))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4261 (= res!3297 (and (bvsge (select (arr!117 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4262 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!272 array!270 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!156)

(assert (=> b!4262 (= e!2088 (computeModuloWhile!0 jz!53 q!85 lt!2712 jz!53 lt!2713))))

(declare-fun b!4263 () Bool)

(declare-fun res!3293 () Bool)

(assert (=> b!4263 (=> (not res!3293) (not e!2087))))

(declare-fun qInv!0 (array!272) Bool)

(assert (=> b!4263 (= res!3293 (qInv!0 q!85))))

(declare-fun b!4265 () Bool)

(declare-fun Unit!337 () Unit!335)

(assert (=> b!4265 (= e!2088 (tuple4!157 Unit!337 lt!2712 jz!53 lt!2713))))

(declare-fun res!3295 () Bool)

(assert (=> start!945 (=> (not res!3295) (not e!2087))))

(assert (=> start!945 (= res!3295 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!945 e!2087))

(assert (=> start!945 true))

(declare-fun array_inv!67 (array!270) Bool)

(assert (=> start!945 (array_inv!67 iq!165)))

(declare-fun array_inv!68 (array!272) Bool)

(assert (=> start!945 (array_inv!68 q!85)))

(declare-fun b!4264 () Bool)

(assert (=> b!4264 (= e!2089 (and (= (bvand i!252 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!252 #b10000000000000000000000000000000) (bvand (bvadd i!252 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!945 res!3295) b!4263))

(assert (= (and b!4263 res!3293) b!4258))

(assert (= (and b!4258 c!689) b!4262))

(assert (= (and b!4258 (not c!689)) b!4265))

(assert (= (and b!4258 res!3298) b!4259))

(assert (= (and b!4259 res!3296) b!4261))

(assert (= (and b!4261 res!3297) b!4260))

(assert (= (and b!4260 res!3294) b!4264))

(declare-fun m!6365 () Bool)

(assert (=> b!4263 m!6365))

(declare-fun m!6367 () Bool)

(assert (=> b!4259 m!6367))

(declare-fun m!6369 () Bool)

(assert (=> b!4262 m!6369))

(declare-fun m!6371 () Bool)

(assert (=> b!4261 m!6371))

(declare-fun m!6373 () Bool)

(assert (=> b!4260 m!6373))

(assert (=> b!4260 m!6373))

(declare-fun m!6375 () Bool)

(assert (=> b!4260 m!6375))

(declare-fun m!6377 () Bool)

(assert (=> start!945 m!6377))

(declare-fun m!6379 () Bool)

(assert (=> start!945 m!6379))

(declare-fun m!6381 () Bool)

(assert (=> b!4258 m!6381))

(declare-fun m!6383 () Bool)

(assert (=> b!4258 m!6383))

(check-sat (not b!4259) (not b!4263) (not b!4260) (not b!4262) (not start!945))
(check-sat)
