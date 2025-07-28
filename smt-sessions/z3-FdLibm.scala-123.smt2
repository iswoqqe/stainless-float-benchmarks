; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1005 () Bool)

(assert start!1005)

(declare-fun b!4692 () Bool)

(declare-fun res!3616 () Bool)

(declare-fun e!2360 () Bool)

(assert (=> b!4692 (=> (not res!3616) (not e!2360))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((array!312 0))(
  ( (array!313 (arr!135 (Array (_ BitVec 32) (_ BitVec 32))) (size!135 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!312)

(assert (=> b!4692 (= res!3616 (and (bvsge (select (arr!135 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4693 () Bool)

(declare-fun res!3613 () Bool)

(declare-fun e!2359 () Bool)

(assert (=> b!4693 (=> (not res!3613) (not e!2359))))

(declare-datatypes ((array!314 0))(
  ( (array!315 (arr!136 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!136 (_ BitVec 32))) )
))
(declare-fun q!85 () array!314)

(declare-fun qInv!0 (array!314) Bool)

(assert (=> b!4693 (= res!3613 (qInv!0 q!85))))

(declare-fun b!4695 () Bool)

(declare-fun lt!3011 () (_ BitVec 32))

(assert (=> b!4695 (= e!2360 (and (bvsge lt!3011 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3011) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!4695 (= lt!3011 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun lt!3010 () array!312)

(declare-fun lt!3013 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!372 0))(
  ( (Unit!373) )
))
(declare-datatypes ((tuple4!186 0))(
  ( (tuple4!187 (_1!148 Unit!372) (_2!148 array!312) (_3!136 (_ BitVec 32)) (_4!93 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2358 () tuple4!186)

(declare-fun b!4696 () Bool)

(declare-fun Unit!374 () Unit!372)

(assert (=> b!4696 (= e!2358 (tuple4!187 Unit!374 lt!3010 jz!53 lt!3013))))

(declare-fun b!4694 () Bool)

(assert (=> b!4694 (= e!2359 e!2360)))

(declare-fun res!3614 () Bool)

(assert (=> b!4694 (=> (not res!3614) (not e!2360))))

(declare-fun lt!3012 () (_ FloatingPoint 11 53))

(declare-fun lt!3014 () tuple4!186)

(assert (=> b!4694 (= res!3614 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3012) (fp.lt lt!3012 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!135 (_2!148 lt!3014)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4694 (= lt!3012 (fp.sub roundNearestTiesToEven (_4!93 lt!3014) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!93 lt!3014) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!93 lt!3014) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!93 lt!3014) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!93 lt!3014) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4694 (= lt!3014 e!2358)))

(declare-fun c!746 () Bool)

(assert (=> b!4694 (= c!746 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4694 (= lt!3013 (select (arr!136 q!85) jz!53))))

(assert (=> b!4694 (= lt!3010 (array!313 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!3617 () Bool)

(assert (=> start!1005 (=> (not res!3617) (not e!2359))))

(assert (=> start!1005 (= res!3617 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1005 e!2359))

(assert (=> start!1005 true))

(declare-fun array_inv!85 (array!312) Bool)

(assert (=> start!1005 (array_inv!85 iq!165)))

(declare-fun array_inv!86 (array!314) Bool)

(assert (=> start!1005 (array_inv!86 q!85)))

(declare-fun b!4697 () Bool)

(declare-fun res!3618 () Bool)

(assert (=> b!4697 (=> (not res!3618) (not e!2360))))

(declare-fun iqInv!0 (array!312) Bool)

(assert (=> b!4697 (= res!3618 (iqInv!0 iq!165))))

(declare-fun b!4698 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!314 array!312 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!186)

(assert (=> b!4698 (= e!2358 (computeModuloWhile!0 jz!53 q!85 lt!3010 jz!53 lt!3013))))

(declare-fun b!4699 () Bool)

(declare-fun res!3615 () Bool)

(assert (=> b!4699 (=> (not res!3615) (not e!2360))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4699 (= res!3615 (QInt!0 (select (arr!135 iq!165) i!252)))))

(assert (= (and start!1005 res!3617) b!4693))

(assert (= (and b!4693 res!3613) b!4694))

(assert (= (and b!4694 c!746) b!4698))

(assert (= (and b!4694 (not c!746)) b!4696))

(assert (= (and b!4694 res!3614) b!4697))

(assert (= (and b!4697 res!3618) b!4692))

(assert (= (and b!4692 res!3616) b!4699))

(assert (= (and b!4699 res!3615) b!4695))

(declare-fun m!6677 () Bool)

(assert (=> b!4692 m!6677))

(declare-fun m!6679 () Bool)

(assert (=> b!4697 m!6679))

(declare-fun m!6681 () Bool)

(assert (=> b!4693 m!6681))

(declare-fun m!6683 () Bool)

(assert (=> b!4694 m!6683))

(declare-fun m!6685 () Bool)

(assert (=> b!4694 m!6685))

(declare-fun m!6687 () Bool)

(assert (=> start!1005 m!6687))

(declare-fun m!6689 () Bool)

(assert (=> start!1005 m!6689))

(declare-fun m!6691 () Bool)

(assert (=> b!4698 m!6691))

(declare-fun m!6693 () Bool)

(assert (=> b!4699 m!6693))

(assert (=> b!4699 m!6693))

(declare-fun m!6695 () Bool)

(assert (=> b!4699 m!6695))

(check-sat (not b!4697) (not start!1005) (not b!4698) (not b!4693) (not b!4699))
(check-sat)
