; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!953 () Bool)

(assert start!953)

(declare-datatypes ((array!282 0))(
  ( (array!283 (arr!123 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!123 (_ BitVec 32))) )
))
(declare-fun q!85 () array!282)

(declare-fun b!4499 () Bool)

(declare-fun lt!2792 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((array!284 0))(
  ( (array!285 (arr!124 (Array (_ BitVec 32) (_ BitVec 32))) (size!124 (_ BitVec 32))) )
))
(declare-fun lt!2797 () array!284)

(declare-datatypes ((Unit!351 0))(
  ( (Unit!352) )
))
(declare-datatypes ((tuple4!162 0))(
  ( (tuple4!163 (_1!136 Unit!351) (_2!136 array!284) (_3!124 (_ BitVec 32)) (_4!81 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2170 () tuple4!162)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!282 array!284 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!162)

(assert (=> b!4499 (= e!2170 (computeModuloWhile!0 jz!53 q!85 lt!2797 jz!53 lt!2792))))

(declare-fun b!4500 () Bool)

(declare-fun res!3498 () Bool)

(declare-fun e!2176 () Bool)

(assert (=> b!4500 (=> (not res!3498) (not e!2176))))

(declare-fun lt!2796 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun lt!2795 () (_ BitVec 32))

(declare-fun iq!165 () array!284)

(declare-datatypes ((tuple4!164 0))(
  ( (tuple4!165 (_1!137 Unit!351) (_2!137 (_ BitVec 32)) (_3!125 array!284) (_4!82 (_ BitVec 32))) )
))
(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!282 (_ BitVec 32) array!284 (_ BitVec 32)) tuple4!164)

(assert (=> b!4500 (= res!3498 (bvsle #b00000000000000000000000000000000 (_2!137 (computeModuloWhile!1 jz!53 q!85 lt!2795 (array!285 (store (arr!124 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2796 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2796) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2796))) (size!124 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2796 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))))

(declare-fun res!3499 () Bool)

(declare-fun e!2173 () Bool)

(assert (=> start!953 (=> (not res!3499) (not e!2173))))

(assert (=> start!953 (= res!3499 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!953 e!2173))

(assert (=> start!953 true))

(declare-fun array_inv!73 (array!284) Bool)

(assert (=> start!953 (array_inv!73 iq!165)))

(declare-fun array_inv!74 (array!282) Bool)

(assert (=> start!953 (array_inv!74 q!85)))

(declare-fun b!4501 () Bool)

(declare-fun e!2175 () Bool)

(assert (=> b!4501 (= e!2173 e!2175)))

(declare-fun res!3505 () Bool)

(assert (=> b!4501 (=> (not res!3505) (not e!2175))))

(declare-fun lt!2793 () tuple4!162)

(declare-fun lt!2794 () (_ FloatingPoint 11 53))

(assert (=> b!4501 (= res!3505 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2794) (fp.lt lt!2794 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!124 (_2!136 lt!2793)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4501 (= lt!2794 (fp.sub roundNearestTiesToEven (_4!81 lt!2793) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!81 lt!2793) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!81 lt!2793) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!81 lt!2793) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!81 lt!2793) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4501 (= lt!2793 e!2170)))

(declare-fun c!707 () Bool)

(assert (=> b!4501 (= c!707 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4501 (= lt!2792 (select (arr!123 q!85) jz!53))))

(assert (=> b!4501 (= lt!2797 (array!285 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4502 () Bool)

(declare-fun e!2172 () Bool)

(assert (=> b!4502 (= e!2172 e!2176)))

(declare-fun res!3500 () Bool)

(assert (=> b!4502 (=> (not res!3500) (not e!2176))))

(assert (=> b!4502 (= res!3500 (bvslt lt!2795 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4502 (= lt!2795 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4503 () Bool)

(assert (=> b!4503 (= e!2176 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4504 () Bool)

(declare-fun res!3501 () Bool)

(assert (=> b!4504 (=> (not res!3501) (not e!2175))))

(assert (=> b!4504 (= res!3501 (and (bvsge (select (arr!124 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4505 () Bool)

(declare-fun Unit!353 () Unit!351)

(assert (=> b!4505 (= e!2170 (tuple4!163 Unit!353 lt!2797 jz!53 lt!2792))))

(declare-fun b!4506 () Bool)

(declare-fun res!3502 () Bool)

(assert (=> b!4506 (=> (not res!3502) (not e!2175))))

(declare-fun iqInv!0 (array!284) Bool)

(assert (=> b!4506 (= res!3502 (iqInv!0 iq!165))))

(declare-fun b!4507 () Bool)

(assert (=> b!4507 (= e!2175 e!2172)))

(declare-fun res!3504 () Bool)

(assert (=> b!4507 (=> (not res!3504) (not e!2172))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4507 (= res!3504 (QInt!0 lt!2796))))

(assert (=> b!4507 (= lt!2796 (select (arr!124 iq!165) i!252))))

(declare-fun b!4508 () Bool)

(declare-fun res!3503 () Bool)

(assert (=> b!4508 (=> (not res!3503) (not e!2173))))

(declare-fun qInv!0 (array!282) Bool)

(assert (=> b!4508 (= res!3503 (qInv!0 q!85))))

(assert (= (and start!953 res!3499) b!4508))

(assert (= (and b!4508 res!3503) b!4501))

(assert (= (and b!4501 c!707) b!4499))

(assert (= (and b!4501 (not c!707)) b!4505))

(assert (= (and b!4501 res!3505) b!4506))

(assert (= (and b!4506 res!3502) b!4504))

(assert (= (and b!4504 res!3501) b!4507))

(assert (= (and b!4507 res!3504) b!4502))

(assert (= (and b!4502 res!3500) b!4500))

(assert (= (and b!4500 res!3498) b!4503))

(declare-fun m!7217 () Bool)

(assert (=> b!4504 m!7217))

(declare-fun m!7219 () Bool)

(assert (=> start!953 m!7219))

(declare-fun m!7221 () Bool)

(assert (=> start!953 m!7221))

(declare-fun m!7223 () Bool)

(assert (=> b!4499 m!7223))

(declare-fun m!7225 () Bool)

(assert (=> b!4501 m!7225))

(declare-fun m!7227 () Bool)

(assert (=> b!4501 m!7227))

(declare-fun m!7229 () Bool)

(assert (=> b!4508 m!7229))

(declare-fun m!7231 () Bool)

(assert (=> b!4507 m!7231))

(declare-fun m!7233 () Bool)

(assert (=> b!4507 m!7233))

(declare-fun m!7235 () Bool)

(assert (=> b!4500 m!7235))

(declare-fun m!7237 () Bool)

(assert (=> b!4500 m!7237))

(declare-fun m!7239 () Bool)

(assert (=> b!4506 m!7239))

(push 1)

(assert (not b!4507))

(assert (not b!4508))

(assert (not b!4500))

(assert (not b!4506))

(assert (not start!953))

(assert (not b!4499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

