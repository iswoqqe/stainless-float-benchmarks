; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!951 () Bool)

(assert start!951)

(declare-fun b!4468 () Bool)

(declare-fun lt!2775 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!278 0))(
  ( (array!279 (arr!121 (Array (_ BitVec 32) (_ BitVec 32))) (size!121 (_ BitVec 32))) )
))
(declare-fun lt!2772 () array!278)

(declare-datatypes ((Unit!347 0))(
  ( (Unit!348) )
))
(declare-datatypes ((tuple4!160 0))(
  ( (tuple4!161 (_1!135 Unit!347) (_2!135 array!278) (_3!123 (_ BitVec 32)) (_4!80 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2154 () tuple4!160)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun Unit!349 () Unit!347)

(assert (=> b!4468 (= e!2154 (tuple4!161 Unit!349 lt!2772 jz!53 lt!2775))))

(declare-fun b!4469 () Bool)

(declare-fun res!3477 () Bool)

(declare-fun e!2155 () Bool)

(assert (=> b!4469 (=> (not res!3477) (not e!2155))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun iq!165 () array!278)

(assert (=> b!4469 (= res!3477 (and (bvsge (select (arr!121 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4470 () Bool)

(declare-fun lt!2777 () (_ BitVec 32))

(declare-fun e!2153 () Bool)

(assert (=> b!4470 (= e!2153 (bvsge (bvsub jz!53 lt!2777) (bvsub jz!53 i!252)))))

(declare-fun lt!2776 () tuple4!160)

(declare-fun e!2150 () tuple4!160)

(assert (=> b!4470 (= lt!2776 e!2150)))

(declare-fun c!704 () Bool)

(assert (=> b!4470 (= c!704 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2778 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!280 0))(
  ( (array!281 (arr!122 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!122 (_ BitVec 32))) )
))
(declare-fun q!85 () array!280)

(assert (=> b!4470 (= lt!2778 (select (arr!122 q!85) jz!53))))

(declare-fun lt!2773 () array!278)

(assert (=> b!4470 (= lt!2773 (array!279 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4471 () Bool)

(declare-fun res!3480 () Bool)

(declare-fun e!2152 () Bool)

(assert (=> b!4471 (=> (not res!3480) (not e!2152))))

(declare-fun qInv!0 (array!280) Bool)

(assert (=> b!4471 (= res!3480 (qInv!0 q!85))))

(declare-fun b!4472 () Bool)

(declare-fun Unit!350 () Unit!347)

(assert (=> b!4472 (= e!2150 (tuple4!161 Unit!350 lt!2773 jz!53 lt!2778))))

(declare-fun res!3479 () Bool)

(assert (=> start!951 (=> (not res!3479) (not e!2152))))

(assert (=> start!951 (= res!3479 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!951 e!2152))

(assert (=> start!951 true))

(declare-fun array_inv!71 (array!278) Bool)

(assert (=> start!951 (array_inv!71 iq!165)))

(declare-fun array_inv!72 (array!280) Bool)

(assert (=> start!951 (array_inv!72 q!85)))

(declare-fun b!4473 () Bool)

(declare-fun res!3475 () Bool)

(assert (=> b!4473 (=> (not res!3475) (not e!2155))))

(declare-fun iqInv!0 (array!278) Bool)

(assert (=> b!4473 (= res!3475 (iqInv!0 iq!165))))

(declare-fun b!4474 () Bool)

(assert (=> b!4474 (= e!2155 e!2153)))

(declare-fun res!3478 () Bool)

(assert (=> b!4474 (=> (not res!3478) (not e!2153))))

(assert (=> b!4474 (= res!3478 (bvslt lt!2777 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4474 (= lt!2777 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4475 () Bool)

(declare-fun res!3476 () Bool)

(assert (=> b!4475 (=> (not res!3476) (not e!2155))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4475 (= res!3476 (QInt!0 (select (arr!121 iq!165) i!252)))))

(declare-fun b!4476 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!280 array!278 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!160)

(assert (=> b!4476 (= e!2150 (computeModuloWhile!0 jz!53 q!85 lt!2773 jz!53 lt!2778))))

(declare-fun b!4477 () Bool)

(assert (=> b!4477 (= e!2152 e!2155)))

(declare-fun res!3481 () Bool)

(assert (=> b!4477 (=> (not res!3481) (not e!2155))))

(declare-fun lt!2774 () tuple4!160)

(declare-fun lt!2779 () (_ FloatingPoint 11 53))

(assert (=> b!4477 (= res!3481 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2779) (fp.lt lt!2779 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!121 (_2!135 lt!2774)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4477 (= lt!2779 (fp.sub roundNearestTiesToEven (_4!80 lt!2774) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!80 lt!2774) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!80 lt!2774) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!80 lt!2774) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!80 lt!2774) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4477 (= lt!2774 e!2154)))

(declare-fun c!703 () Bool)

(assert (=> b!4477 (= c!703 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4477 (= lt!2775 (select (arr!122 q!85) jz!53))))

(assert (=> b!4477 (= lt!2772 (array!279 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4478 () Bool)

(assert (=> b!4478 (= e!2154 (computeModuloWhile!0 jz!53 q!85 lt!2772 jz!53 lt!2775))))

(assert (= (and start!951 res!3479) b!4471))

(assert (= (and b!4471 res!3480) b!4477))

(assert (= (and b!4477 c!703) b!4478))

(assert (= (and b!4477 (not c!703)) b!4468))

(assert (= (and b!4477 res!3481) b!4473))

(assert (= (and b!4473 res!3475) b!4469))

(assert (= (and b!4469 res!3477) b!4475))

(assert (= (and b!4475 res!3476) b!4474))

(assert (= (and b!4474 res!3478) b!4470))

(assert (= (and b!4470 c!704) b!4476))

(assert (= (and b!4470 (not c!704)) b!4472))

(declare-fun m!7195 () Bool)

(assert (=> b!4475 m!7195))

(assert (=> b!4475 m!7195))

(declare-fun m!7197 () Bool)

(assert (=> b!4475 m!7197))

(declare-fun m!7199 () Bool)

(assert (=> start!951 m!7199))

(declare-fun m!7201 () Bool)

(assert (=> start!951 m!7201))

(declare-fun m!7203 () Bool)

(assert (=> b!4469 m!7203))

(declare-fun m!7205 () Bool)

(assert (=> b!4476 m!7205))

(declare-fun m!7207 () Bool)

(assert (=> b!4473 m!7207))

(declare-fun m!7209 () Bool)

(assert (=> b!4471 m!7209))

(declare-fun m!7211 () Bool)

(assert (=> b!4478 m!7211))

(declare-fun m!7213 () Bool)

(assert (=> b!4470 m!7213))

(declare-fun m!7215 () Bool)

(assert (=> b!4477 m!7215))

(assert (=> b!4477 m!7213))

(push 1)

(assert (not b!4478))

(assert (not start!951))

(assert (not b!4476))

(assert (not b!4475))

(assert (not b!4473))

(assert (not b!4471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

