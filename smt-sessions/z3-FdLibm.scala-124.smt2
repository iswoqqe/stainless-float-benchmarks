; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1007 () Bool)

(assert start!1007)

(declare-fun b!4720 () Bool)

(declare-fun e!2376 () Bool)

(declare-fun e!2377 () Bool)

(assert (=> b!4720 (= e!2376 e!2377)))

(declare-fun res!3638 () Bool)

(assert (=> b!4720 (=> (not res!3638) (not e!2377))))

(declare-fun lt!3031 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4720 (= res!3638 (QInt!0 lt!3031))))

(declare-datatypes ((array!316 0))(
  ( (array!317 (arr!137 (Array (_ BitVec 32) (_ BitVec 32))) (size!137 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!316)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4720 (= lt!3031 (select (arr!137 iq!165) i!252))))

(declare-fun res!3642 () Bool)

(declare-fun e!2379 () Bool)

(assert (=> start!1007 (=> (not res!3642) (not e!2379))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!1007 (= res!3642 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1007 e!2379))

(assert (=> start!1007 true))

(declare-fun array_inv!87 (array!316) Bool)

(assert (=> start!1007 (array_inv!87 iq!165)))

(declare-datatypes ((array!318 0))(
  ( (array!319 (arr!138 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!138 (_ BitVec 32))) )
))
(declare-fun q!85 () array!318)

(declare-fun array_inv!88 (array!318) Bool)

(assert (=> start!1007 (array_inv!88 q!85)))

(declare-fun b!4721 () Bool)

(declare-fun e!2382 () Bool)

(assert (=> b!4721 (= e!2382 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-datatypes ((Unit!375 0))(
  ( (Unit!376) )
))
(declare-datatypes ((tuple4!188 0))(
  ( (tuple4!189 (_1!149 Unit!375) (_2!149 array!316) (_3!137 (_ BitVec 32)) (_4!94 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2378 () tuple4!188)

(declare-fun lt!3030 () (_ FloatingPoint 11 53))

(declare-fun b!4722 () Bool)

(declare-fun lt!3032 () array!316)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!318 array!316 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!188)

(assert (=> b!4722 (= e!2378 (computeModuloWhile!0 jz!53 q!85 lt!3032 jz!53 lt!3030))))

(declare-fun b!4723 () Bool)

(declare-fun res!3637 () Bool)

(assert (=> b!4723 (=> (not res!3637) (not e!2382))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun iqInv!0 (array!316) Bool)

(assert (=> b!4723 (= res!3637 (iqInv!0 (array!317 (store (arr!137 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3031 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3031) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3031))) (size!137 iq!165))))))

(declare-fun b!4724 () Bool)

(assert (=> b!4724 (= e!2379 e!2376)))

(declare-fun res!3640 () Bool)

(assert (=> b!4724 (=> (not res!3640) (not e!2376))))

(declare-fun lt!3028 () (_ FloatingPoint 11 53))

(declare-fun lt!3027 () tuple4!188)

(assert (=> b!4724 (= res!3640 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3028) (fp.lt lt!3028 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!137 (_2!149 lt!3027)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4724 (= lt!3028 (fp.sub roundNearestTiesToEven (_4!94 lt!3027) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!94 lt!3027) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!94 lt!3027) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!94 lt!3027) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!94 lt!3027) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4724 (= lt!3027 e!2378)))

(declare-fun c!749 () Bool)

(assert (=> b!4724 (= c!749 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4724 (= lt!3030 (select (arr!138 q!85) jz!53))))

(assert (=> b!4724 (= lt!3032 (array!317 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4725 () Bool)

(declare-fun res!3636 () Bool)

(assert (=> b!4725 (=> (not res!3636) (not e!2379))))

(declare-fun qInv!0 (array!318) Bool)

(assert (=> b!4725 (= res!3636 (qInv!0 q!85))))

(declare-fun b!4726 () Bool)

(assert (=> b!4726 (= e!2377 e!2382)))

(declare-fun res!3641 () Bool)

(assert (=> b!4726 (=> (not res!3641) (not e!2382))))

(declare-fun lt!3029 () (_ BitVec 32))

(assert (=> b!4726 (= res!3641 (and (bvsge lt!3029 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3029) (bvsle lt!3029 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4726 (= lt!3029 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4727 () Bool)

(declare-fun res!3639 () Bool)

(assert (=> b!4727 (=> (not res!3639) (not e!2376))))

(assert (=> b!4727 (= res!3639 (and (bvsge (select (arr!137 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4728 () Bool)

(declare-fun res!3635 () Bool)

(assert (=> b!4728 (=> (not res!3635) (not e!2376))))

(assert (=> b!4728 (= res!3635 (iqInv!0 iq!165))))

(declare-fun b!4729 () Bool)

(declare-fun Unit!377 () Unit!375)

(assert (=> b!4729 (= e!2378 (tuple4!189 Unit!377 lt!3032 jz!53 lt!3030))))

(assert (= (and start!1007 res!3642) b!4725))

(assert (= (and b!4725 res!3636) b!4724))

(assert (= (and b!4724 c!749) b!4722))

(assert (= (and b!4724 (not c!749)) b!4729))

(assert (= (and b!4724 res!3640) b!4728))

(assert (= (and b!4728 res!3635) b!4727))

(assert (= (and b!4727 res!3639) b!4720))

(assert (= (and b!4720 res!3638) b!4726))

(assert (= (and b!4726 res!3641) b!4723))

(assert (= (and b!4723 res!3637) b!4721))

(declare-fun m!6697 () Bool)

(assert (=> b!4728 m!6697))

(declare-fun m!6699 () Bool)

(assert (=> b!4722 m!6699))

(declare-fun m!6701 () Bool)

(assert (=> b!4724 m!6701))

(declare-fun m!6703 () Bool)

(assert (=> b!4724 m!6703))

(declare-fun m!6705 () Bool)

(assert (=> b!4727 m!6705))

(declare-fun m!6707 () Bool)

(assert (=> start!1007 m!6707))

(declare-fun m!6709 () Bool)

(assert (=> start!1007 m!6709))

(declare-fun m!6711 () Bool)

(assert (=> b!4720 m!6711))

(declare-fun m!6713 () Bool)

(assert (=> b!4720 m!6713))

(declare-fun m!6715 () Bool)

(assert (=> b!4723 m!6715))

(declare-fun m!6717 () Bool)

(assert (=> b!4723 m!6717))

(declare-fun m!6719 () Bool)

(assert (=> b!4725 m!6719))

(check-sat (not start!1007) (not b!4720) (not b!4728) (not b!4725) (not b!4722) (not b!4723))
(check-sat)
