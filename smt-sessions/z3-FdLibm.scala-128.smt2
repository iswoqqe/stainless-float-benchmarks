; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1045 () Bool)

(assert start!1045)

(declare-datatypes ((array!336 0))(
  ( (array!337 (arr!145 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!145 (_ BitVec 32))) )
))
(declare-fun q!85 () array!336)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun b!5076 () Bool)

(declare-datatypes ((Unit!391 0))(
  ( (Unit!392) )
))
(declare-datatypes ((array!338 0))(
  ( (array!339 (arr!146 (Array (_ BitVec 32) (_ BitVec 32))) (size!146 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!196 0))(
  ( (tuple4!197 (_1!153 Unit!391) (_2!153 array!338) (_3!141 (_ BitVec 32)) (_4!98 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2511 () tuple4!196)

(declare-fun lt!3149 () array!338)

(declare-fun lt!3146 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!336 array!338 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!196)

(assert (=> b!5076 (= e!2511 (computeModuloWhile!0 jz!53 q!85 lt!3149 jz!53 lt!3146))))

(declare-fun b!5077 () Bool)

(declare-fun e!2510 () Bool)

(declare-fun lt!3147 () (_ BitVec 32))

(assert (=> b!5077 (= e!2510 (and (bvsge lt!3147 (bvsub jz!53 #b00000000000000000000000000000001)) (bvslt lt!3147 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!5077 (= lt!3147 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!5078 () Bool)

(declare-fun res!3953 () Bool)

(declare-fun e!2512 () Bool)

(assert (=> b!5078 (=> (not res!3953) (not e!2512))))

(declare-fun qInv!0 (array!336) Bool)

(assert (=> b!5078 (= res!3953 (qInv!0 q!85))))

(declare-fun res!3956 () Bool)

(assert (=> start!1045 (=> (not res!3956) (not e!2512))))

(assert (=> start!1045 (= res!3956 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1045 e!2512))

(assert (=> start!1045 true))

(declare-fun iq!165 () array!338)

(declare-fun array_inv!95 (array!338) Bool)

(assert (=> start!1045 (array_inv!95 iq!165)))

(declare-fun array_inv!96 (array!336) Bool)

(assert (=> start!1045 (array_inv!96 q!85)))

(declare-fun b!5079 () Bool)

(declare-fun res!3952 () Bool)

(assert (=> b!5079 (=> (not res!3952) (not e!2510))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!5079 (= res!3952 (QInt!0 (select (arr!146 iq!165) i!252)))))

(declare-fun b!5080 () Bool)

(declare-fun res!3954 () Bool)

(assert (=> b!5080 (=> (not res!3954) (not e!2510))))

(declare-fun iqInv!0 (array!338) Bool)

(assert (=> b!5080 (= res!3954 (iqInv!0 iq!165))))

(declare-fun b!5081 () Bool)

(declare-fun Unit!393 () Unit!391)

(assert (=> b!5081 (= e!2511 (tuple4!197 Unit!393 lt!3149 jz!53 lt!3146))))

(declare-fun b!5082 () Bool)

(assert (=> b!5082 (= e!2512 e!2510)))

(declare-fun res!3951 () Bool)

(assert (=> b!5082 (=> (not res!3951) (not e!2510))))

(declare-fun lt!3148 () (_ FloatingPoint 11 53))

(declare-fun lt!3150 () tuple4!196)

(assert (=> b!5082 (= res!3951 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3148) (fp.lt lt!3148 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!146 (_2!153 lt!3150)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!5082 (= lt!3148 (fp.sub roundNearestTiesToEven (_4!98 lt!3150) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!98 lt!3150) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!98 lt!3150) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!98 lt!3150) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!98 lt!3150) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!5082 (= lt!3150 e!2511)))

(declare-fun c!769 () Bool)

(assert (=> b!5082 (= c!769 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!5082 (= lt!3146 (select (arr!145 q!85) jz!53))))

(assert (=> b!5082 (= lt!3149 (array!339 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!5083 () Bool)

(declare-fun res!3955 () Bool)

(assert (=> b!5083 (=> (not res!3955) (not e!2510))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!5083 (= res!3955 (and (bvsge (select (arr!146 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!1045 res!3956) b!5078))

(assert (= (and b!5078 res!3953) b!5082))

(assert (= (and b!5082 c!769) b!5076))

(assert (= (and b!5082 (not c!769)) b!5081))

(assert (= (and b!5082 res!3951) b!5080))

(assert (= (and b!5080 res!3954) b!5083))

(assert (= (and b!5083 res!3955) b!5079))

(assert (= (and b!5079 res!3952) b!5077))

(declare-fun m!7457 () Bool)

(assert (=> b!5078 m!7457))

(declare-fun m!7459 () Bool)

(assert (=> b!5076 m!7459))

(declare-fun m!7461 () Bool)

(assert (=> b!5080 m!7461))

(declare-fun m!7463 () Bool)

(assert (=> b!5083 m!7463))

(declare-fun m!7465 () Bool)

(assert (=> b!5082 m!7465))

(declare-fun m!7467 () Bool)

(assert (=> b!5082 m!7467))

(declare-fun m!7469 () Bool)

(assert (=> b!5079 m!7469))

(assert (=> b!5079 m!7469))

(declare-fun m!7471 () Bool)

(assert (=> b!5079 m!7471))

(declare-fun m!7473 () Bool)

(assert (=> start!1045 m!7473))

(declare-fun m!7475 () Bool)

(assert (=> start!1045 m!7475))

(check-sat (not start!1045) (not b!5078) (not b!5079) (not b!5076) (not b!5080))
(check-sat)
