; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1023 () Bool)

(assert start!1023)

(declare-fun b!4805 () Bool)

(declare-fun res!3705 () Bool)

(declare-fun e!2439 () Bool)

(assert (=> b!4805 (=> (not res!3705) (not e!2439))))

(declare-datatypes ((array!326 0))(
  ( (array!327 (arr!141 (Array (_ BitVec 32) (_ BitVec 32))) (size!141 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!326)

(declare-fun iqInv!0 (array!326) Bool)

(assert (=> b!4805 (= res!3705 (iqInv!0 iq!165))))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!3083 () (_ FloatingPoint 11 53))

(declare-fun b!4806 () Bool)

(declare-fun lt!3084 () array!326)

(declare-datatypes ((Unit!382 0))(
  ( (Unit!383) )
))
(declare-datatypes ((tuple4!192 0))(
  ( (tuple4!193 (_1!151 Unit!382) (_2!151 array!326) (_3!139 (_ BitVec 32)) (_4!96 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2436 () tuple4!192)

(declare-fun Unit!384 () Unit!382)

(assert (=> b!4806 (= e!2436 (tuple4!193 Unit!384 lt!3084 jz!53 lt!3083))))

(declare-fun b!4807 () Bool)

(declare-fun e!2434 () Bool)

(declare-fun e!2437 () Bool)

(assert (=> b!4807 (= e!2434 e!2437)))

(declare-fun res!3707 () Bool)

(assert (=> b!4807 (=> (not res!3707) (not e!2437))))

(declare-fun lt!3086 () (_ BitVec 32))

(assert (=> b!4807 (= res!3707 (and (bvsge lt!3086 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3086) (bvsle lt!3086 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4807 (= lt!3086 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun lt!3089 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun lt!3088 () (_ BitVec 32))

(assert (=> b!4807 (= lt!3089 (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!3088 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58))))

(declare-fun b!4808 () Bool)

(assert (=> b!4808 (= e!2437 (and (bvsge (select (store (arr!141 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3088 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3088) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3088))) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!3089 #b00000000000000000000000000000000) (= lt!3089 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4809 () Bool)

(declare-fun res!3706 () Bool)

(assert (=> b!4809 (=> (not res!3706) (not e!2439))))

(assert (=> b!4809 (= res!3706 (and (bvsge (select (arr!141 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4810 () Bool)

(declare-fun res!3704 () Bool)

(assert (=> b!4810 (=> (not res!3704) (not e!2437))))

(assert (=> b!4810 (= res!3704 (iqInv!0 (array!327 (store (arr!141 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3088 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3088) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3088))) (size!141 iq!165))))))

(declare-fun b!4811 () Bool)

(assert (=> b!4811 (= e!2439 e!2434)))

(declare-fun res!3702 () Bool)

(assert (=> b!4811 (=> (not res!3702) (not e!2434))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4811 (= res!3702 (QInt!0 lt!3088))))

(assert (=> b!4811 (= lt!3088 (select (arr!141 iq!165) i!252))))

(declare-fun res!3709 () Bool)

(declare-fun e!2440 () Bool)

(assert (=> start!1023 (=> (not res!3709) (not e!2440))))

(assert (=> start!1023 (= res!3709 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1023 e!2440))

(assert (=> start!1023 true))

(declare-fun array_inv!91 (array!326) Bool)

(assert (=> start!1023 (array_inv!91 iq!165)))

(declare-datatypes ((array!328 0))(
  ( (array!329 (arr!142 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!142 (_ BitVec 32))) )
))
(declare-fun q!85 () array!328)

(declare-fun array_inv!92 (array!328) Bool)

(assert (=> start!1023 (array_inv!92 q!85)))

(declare-fun b!4812 () Bool)

(declare-fun res!3708 () Bool)

(assert (=> b!4812 (=> (not res!3708) (not e!2440))))

(declare-fun qInv!0 (array!328) Bool)

(assert (=> b!4812 (= res!3708 (qInv!0 q!85))))

(declare-fun b!4813 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!328 array!326 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!192)

(assert (=> b!4813 (= e!2436 (computeModuloWhile!0 jz!53 q!85 lt!3084 jz!53 lt!3083))))

(declare-fun b!4814 () Bool)

(assert (=> b!4814 (= e!2440 e!2439)))

(declare-fun res!3703 () Bool)

(assert (=> b!4814 (=> (not res!3703) (not e!2439))))

(declare-fun lt!3087 () (_ FloatingPoint 11 53))

(declare-fun lt!3085 () tuple4!192)

(assert (=> b!4814 (= res!3703 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3087) (fp.lt lt!3087 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!141 (_2!151 lt!3085)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4814 (= lt!3087 (fp.sub roundNearestTiesToEven (_4!96 lt!3085) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!96 lt!3085) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!96 lt!3085) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!96 lt!3085) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!96 lt!3085) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4814 (= lt!3085 e!2436)))

(declare-fun c!758 () Bool)

(assert (=> b!4814 (= c!758 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4814 (= lt!3083 (select (arr!142 q!85) jz!53))))

(assert (=> b!4814 (= lt!3084 (array!327 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!1023 res!3709) b!4812))

(assert (= (and b!4812 res!3708) b!4814))

(assert (= (and b!4814 c!758) b!4813))

(assert (= (and b!4814 (not c!758)) b!4806))

(assert (= (and b!4814 res!3703) b!4805))

(assert (= (and b!4805 res!3705) b!4809))

(assert (= (and b!4809 res!3706) b!4811))

(assert (= (and b!4811 res!3702) b!4807))

(assert (= (and b!4807 res!3707) b!4810))

(assert (= (and b!4810 res!3704) b!4808))

(declare-fun m!6761 () Bool)

(assert (=> b!4805 m!6761))

(declare-fun m!6763 () Bool)

(assert (=> start!1023 m!6763))

(declare-fun m!6765 () Bool)

(assert (=> start!1023 m!6765))

(declare-fun m!6767 () Bool)

(assert (=> b!4812 m!6767))

(declare-fun m!6769 () Bool)

(assert (=> b!4808 m!6769))

(declare-fun m!6771 () Bool)

(assert (=> b!4808 m!6771))

(declare-fun m!6773 () Bool)

(assert (=> b!4811 m!6773))

(declare-fun m!6775 () Bool)

(assert (=> b!4811 m!6775))

(declare-fun m!6777 () Bool)

(assert (=> b!4809 m!6777))

(declare-fun m!6779 () Bool)

(assert (=> b!4814 m!6779))

(declare-fun m!6781 () Bool)

(assert (=> b!4814 m!6781))

(declare-fun m!6783 () Bool)

(assert (=> b!4813 m!6783))

(assert (=> b!4810 m!6769))

(declare-fun m!6785 () Bool)

(assert (=> b!4810 m!6785))

(check-sat (not start!1023) (not b!4810) (not b!4812) (not b!4811) (not b!4805) (not b!4813))
(check-sat)
