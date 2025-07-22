; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1037 () Bool)

(assert start!1037)

(declare-fun lt!3076 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((Unit!376 0))(
  ( (Unit!377) )
))
(declare-datatypes ((array!336 0))(
  ( (array!337 (arr!145 (Array (_ BitVec 32) (_ BitVec 32))) (size!145 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!196 0))(
  ( (tuple4!197 (_1!153 Unit!376) (_2!153 array!336) (_3!141 (_ BitVec 32)) (_4!98 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2442 () tuple4!196)

(declare-fun b!4708 () Bool)

(declare-fun lt!3078 () array!336)

(declare-fun Unit!378 () Unit!376)

(assert (=> b!4708 (= e!2442 (tuple4!197 Unit!378 lt!3078 jz!53 lt!3076))))

(declare-fun b!4709 () Bool)

(declare-fun e!2441 () Bool)

(declare-fun lt!3074 () (_ BitVec 32))

(assert (=> b!4709 (= e!2441 (and (bvsge lt!3074 (bvsub jz!53 #b00000000000000000000000000000001)) (bvslt lt!3074 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4709 (= lt!3074 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun res!3618 () Bool)

(declare-fun e!2440 () Bool)

(assert (=> start!1037 (=> (not res!3618) (not e!2440))))

(assert (=> start!1037 (= res!3618 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1037 e!2440))

(assert (=> start!1037 true))

(declare-fun iq!165 () array!336)

(declare-fun array_inv!95 (array!336) Bool)

(assert (=> start!1037 (array_inv!95 iq!165)))

(declare-datatypes ((array!338 0))(
  ( (array!339 (arr!146 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!146 (_ BitVec 32))) )
))
(declare-fun q!85 () array!338)

(declare-fun array_inv!96 (array!338) Bool)

(assert (=> start!1037 (array_inv!96 q!85)))

(declare-fun b!4710 () Bool)

(declare-fun res!3617 () Bool)

(assert (=> b!4710 (=> (not res!3617) (not e!2441))))

(declare-fun iqInv!0 (array!336) Bool)

(assert (=> b!4710 (= res!3617 (iqInv!0 iq!165))))

(declare-fun b!4711 () Bool)

(declare-fun res!3616 () Bool)

(assert (=> b!4711 (=> (not res!3616) (not e!2441))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4711 (= res!3616 (QInt!0 (select (arr!145 iq!165) i!252)))))

(declare-fun b!4712 () Bool)

(declare-fun res!3613 () Bool)

(assert (=> b!4712 (=> (not res!3613) (not e!2440))))

(declare-fun qInv!0 (array!338) Bool)

(assert (=> b!4712 (= res!3613 (qInv!0 q!85))))

(declare-fun b!4713 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!338 array!336 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!196)

(assert (=> b!4713 (= e!2442 (computeModuloWhile!0 jz!53 q!85 lt!3078 jz!53 lt!3076))))

(declare-fun b!4714 () Bool)

(assert (=> b!4714 (= e!2440 e!2441)))

(declare-fun res!3614 () Bool)

(assert (=> b!4714 (=> (not res!3614) (not e!2441))))

(declare-fun lt!3075 () (_ FloatingPoint 11 53))

(declare-fun lt!3077 () tuple4!196)

(assert (=> b!4714 (= res!3614 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3075) (fp.lt lt!3075 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!145 (_2!153 lt!3077)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4714 (= lt!3075 (fp.sub roundNearestTiesToEven (_4!98 lt!3077) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!98 lt!3077) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!98 lt!3077) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!98 lt!3077) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!98 lt!3077) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4714 (= lt!3077 e!2442)))

(declare-fun c!754 () Bool)

(assert (=> b!4714 (= c!754 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4714 (= lt!3076 (select (arr!146 q!85) jz!53))))

(assert (=> b!4714 (= lt!3078 (array!337 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4715 () Bool)

(declare-fun res!3615 () Bool)

(assert (=> b!4715 (=> (not res!3615) (not e!2441))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4715 (= res!3615 (and (bvsge (select (arr!145 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!1037 res!3618) b!4712))

(assert (= (and b!4712 res!3613) b!4714))

(assert (= (and b!4714 c!754) b!4713))

(assert (= (and b!4714 (not c!754)) b!4708))

(assert (= (and b!4714 res!3614) b!4710))

(assert (= (and b!4710 res!3617) b!4715))

(assert (= (and b!4715 res!3615) b!4711))

(assert (= (and b!4711 res!3616) b!4709))

(declare-fun m!5849 () Bool)

(assert (=> b!4710 m!5849))

(declare-fun m!5851 () Bool)

(assert (=> b!4711 m!5851))

(assert (=> b!4711 m!5851))

(declare-fun m!5853 () Bool)

(assert (=> b!4711 m!5853))

(declare-fun m!5855 () Bool)

(assert (=> b!4715 m!5855))

(declare-fun m!5857 () Bool)

(assert (=> start!1037 m!5857))

(declare-fun m!5859 () Bool)

(assert (=> start!1037 m!5859))

(declare-fun m!5861 () Bool)

(assert (=> b!4712 m!5861))

(declare-fun m!5863 () Bool)

(assert (=> b!4713 m!5863))

(declare-fun m!5865 () Bool)

(assert (=> b!4714 m!5865))

(declare-fun m!5867 () Bool)

(assert (=> b!4714 m!5867))

(check-sat (not b!4710) (not b!4711) (not b!4713) (not start!1037) (not b!4712))
(check-sat)
