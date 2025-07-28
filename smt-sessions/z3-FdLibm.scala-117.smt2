; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!951 () Bool)

(assert start!951)

(declare-fun b!4343 () Bool)

(declare-fun res!3361 () Bool)

(declare-fun e!2142 () Bool)

(assert (=> b!4343 (=> (not res!3361) (not e!2142))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((array!282 0))(
  ( (array!283 (arr!123 (Array (_ BitVec 32) (_ BitVec 32))) (size!123 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!282)

(assert (=> b!4343 (= res!3361 (and (bvsge (select (arr!123 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4344 () Bool)

(declare-fun res!3360 () Bool)

(declare-fun e!2140 () Bool)

(assert (=> b!4344 (=> (not res!3360) (not e!2140))))

(declare-datatypes ((array!284 0))(
  ( (array!285 (arr!124 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!124 (_ BitVec 32))) )
))
(declare-fun q!85 () array!284)

(declare-fun qInv!0 (array!284) Bool)

(assert (=> b!4344 (= res!3360 (qInv!0 q!85))))

(declare-fun b!4345 () Bool)

(assert (=> b!4345 (= e!2140 e!2142)))

(declare-fun res!3357 () Bool)

(assert (=> b!4345 (=> (not res!3357) (not e!2142))))

(declare-fun lt!2768 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!345 0))(
  ( (Unit!346) )
))
(declare-datatypes ((tuple4!162 0))(
  ( (tuple4!163 (_1!136 Unit!345) (_2!136 array!282) (_3!124 (_ BitVec 32)) (_4!81 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2763 () tuple4!162)

(assert (=> b!4345 (= res!3357 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2768) (fp.lt lt!2768 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!123 (_2!136 lt!2763)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4345 (= lt!2768 (fp.sub roundNearestTiesToEven (_4!81 lt!2763) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!81 lt!2763) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!81 lt!2763) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!81 lt!2763) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!81 lt!2763) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2144 () tuple4!162)

(assert (=> b!4345 (= lt!2763 e!2144)))

(declare-fun c!701 () Bool)

(assert (=> b!4345 (= c!701 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2765 () (_ FloatingPoint 11 53))

(assert (=> b!4345 (= lt!2765 (select (arr!124 q!85) jz!53))))

(declare-fun lt!2766 () array!282)

(assert (=> b!4345 (= lt!2766 (array!283 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4346 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!284 array!282 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!162)

(assert (=> b!4346 (= e!2144 (computeModuloWhile!0 jz!53 q!85 lt!2766 jz!53 lt!2765))))

(declare-fun b!4347 () Bool)

(declare-fun e!2146 () Bool)

(assert (=> b!4347 (= e!2142 e!2146)))

(declare-fun res!3355 () Bool)

(assert (=> b!4347 (=> (not res!3355) (not e!2146))))

(declare-fun lt!2764 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4347 (= res!3355 (QInt!0 lt!2764))))

(assert (=> b!4347 (= lt!2764 (select (arr!123 iq!165) i!252))))

(declare-fun res!3354 () Bool)

(assert (=> start!951 (=> (not res!3354) (not e!2140))))

(assert (=> start!951 (= res!3354 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!951 e!2140))

(assert (=> start!951 true))

(declare-fun array_inv!73 (array!282) Bool)

(assert (=> start!951 (array_inv!73 iq!165)))

(declare-fun array_inv!74 (array!284) Bool)

(assert (=> start!951 (array_inv!74 q!85)))

(declare-fun b!4348 () Bool)

(declare-fun res!3359 () Bool)

(declare-fun e!2145 () Bool)

(assert (=> b!4348 (=> (not res!3359) (not e!2145))))

(declare-fun lt!2767 () (_ BitVec 32))

(declare-datatypes ((tuple4!164 0))(
  ( (tuple4!165 (_1!137 Unit!345) (_2!137 (_ BitVec 32)) (_3!125 array!282) (_4!82 (_ BitVec 32))) )
))
(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!284 (_ BitVec 32) array!282 (_ BitVec 32)) tuple4!164)

(assert (=> b!4348 (= res!3359 (bvsle #b00000000000000000000000000000000 (_2!137 (computeModuloWhile!1 jz!53 q!85 lt!2767 (array!283 (store (arr!123 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2764 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2764) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2764))) (size!123 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2764 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))))

(declare-fun b!4349 () Bool)

(assert (=> b!4349 (= e!2145 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4350 () Bool)

(assert (=> b!4350 (= e!2146 e!2145)))

(declare-fun res!3358 () Bool)

(assert (=> b!4350 (=> (not res!3358) (not e!2145))))

(assert (=> b!4350 (= res!3358 (bvslt lt!2767 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4350 (= lt!2767 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4351 () Bool)

(declare-fun Unit!347 () Unit!345)

(assert (=> b!4351 (= e!2144 (tuple4!163 Unit!347 lt!2766 jz!53 lt!2765))))

(declare-fun b!4352 () Bool)

(declare-fun res!3356 () Bool)

(assert (=> b!4352 (=> (not res!3356) (not e!2142))))

(declare-fun iqInv!0 (array!282) Bool)

(assert (=> b!4352 (= res!3356 (iqInv!0 iq!165))))

(assert (= (and start!951 res!3354) b!4344))

(assert (= (and b!4344 res!3360) b!4345))

(assert (= (and b!4345 c!701) b!4346))

(assert (= (and b!4345 (not c!701)) b!4351))

(assert (= (and b!4345 res!3357) b!4352))

(assert (= (and b!4352 res!3356) b!4343))

(assert (= (and b!4343 res!3361) b!4347))

(assert (= (and b!4347 res!3355) b!4350))

(assert (= (and b!4350 res!3358) b!4348))

(assert (= (and b!4348 res!3359) b!4349))

(declare-fun m!6427 () Bool)

(assert (=> b!4345 m!6427))

(declare-fun m!6429 () Bool)

(assert (=> b!4345 m!6429))

(declare-fun m!6431 () Bool)

(assert (=> b!4343 m!6431))

(declare-fun m!6433 () Bool)

(assert (=> b!4348 m!6433))

(declare-fun m!6435 () Bool)

(assert (=> b!4348 m!6435))

(declare-fun m!6437 () Bool)

(assert (=> start!951 m!6437))

(declare-fun m!6439 () Bool)

(assert (=> start!951 m!6439))

(declare-fun m!6441 () Bool)

(assert (=> b!4344 m!6441))

(declare-fun m!6443 () Bool)

(assert (=> b!4347 m!6443))

(declare-fun m!6445 () Bool)

(assert (=> b!4347 m!6445))

(declare-fun m!6447 () Bool)

(assert (=> b!4346 m!6447))

(declare-fun m!6449 () Bool)

(assert (=> b!4352 m!6449))

(check-sat (not b!4348) (not b!4346) (not b!4344) (not b!4352) (not b!4347) (not start!951))
(check-sat)
