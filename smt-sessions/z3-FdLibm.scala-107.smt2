; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!885 () Bool)

(assert start!885)

(declare-fun e!1914 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun b!4014 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((array!234 0))(
  ( (array!235 (arr!103 (Array (_ BitVec 32) (_ BitVec 32))) (size!103 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!234)

(assert (=> b!4014 (= e!1914 (and (bvsge (select (arr!103 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4015 () Bool)

(declare-fun res!3118 () Bool)

(declare-fun e!1917 () Bool)

(assert (=> b!4015 (=> (not res!3118) (not e!1917))))

(declare-datatypes ((array!236 0))(
  ( (array!237 (arr!104 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!104 (_ BitVec 32))) )
))
(declare-fun q!85 () array!236)

(declare-fun qInv!0 (array!236) Bool)

(assert (=> b!4015 (= res!3118 (qInv!0 q!85))))

(declare-fun res!3115 () Bool)

(assert (=> start!885 (=> (not res!3115) (not e!1917))))

(assert (=> start!885 (= res!3115 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!885 e!1917))

(assert (=> start!885 true))

(declare-fun array_inv!53 (array!234) Bool)

(assert (=> start!885 (array_inv!53 iq!165)))

(declare-fun array_inv!54 (array!236) Bool)

(assert (=> start!885 (array_inv!54 q!85)))

(declare-datatypes ((Unit!310 0))(
  ( (Unit!311) )
))
(declare-datatypes ((tuple4!142 0))(
  ( (tuple4!143 (_1!126 Unit!310) (_2!126 array!234) (_3!114 (_ BitVec 32)) (_4!71 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1915 () tuple4!142)

(declare-fun b!4016 () Bool)

(declare-fun lt!2562 () (_ FloatingPoint 11 53))

(declare-fun lt!2564 () array!234)

(declare-fun Unit!312 () Unit!310)

(assert (=> b!4016 (= e!1915 (tuple4!143 Unit!312 lt!2564 jz!53 lt!2562))))

(declare-fun b!4017 () Bool)

(declare-fun res!3117 () Bool)

(assert (=> b!4017 (=> (not res!3117) (not e!1914))))

(declare-fun iqInv!0 (array!234) Bool)

(assert (=> b!4017 (= res!3117 (iqInv!0 iq!165))))

(declare-fun b!4018 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!236 array!234 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!142)

(assert (=> b!4018 (= e!1915 (computeModuloWhile!0 jz!53 q!85 lt!2564 jz!53 lt!2562))))

(declare-fun b!4019 () Bool)

(assert (=> b!4019 (= e!1917 e!1914)))

(declare-fun res!3116 () Bool)

(assert (=> b!4019 (=> (not res!3116) (not e!1914))))

(declare-fun lt!2563 () (_ FloatingPoint 11 53))

(declare-fun lt!2561 () tuple4!142)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4019 (= res!3116 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2563) (fp.lt lt!2563 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!103 (_2!126 lt!2561)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4019 (= lt!2563 (fp.sub roundNearestTiesToEven (_4!71 lt!2561) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!71 lt!2561) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!71 lt!2561) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!71 lt!2561) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!71 lt!2561) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4019 (= lt!2561 e!1915)))

(declare-fun c!656 () Bool)

(assert (=> b!4019 (= c!656 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4019 (= lt!2562 (select (arr!104 q!85) jz!53))))

(assert (=> b!4019 (= lt!2564 (array!235 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!885 res!3115) b!4015))

(assert (= (and b!4015 res!3118) b!4019))

(assert (= (and b!4019 c!656) b!4018))

(assert (= (and b!4019 (not c!656)) b!4016))

(assert (= (and b!4019 res!3116) b!4017))

(assert (= (and b!4017 res!3117) b!4014))

(declare-fun m!6185 () Bool)

(assert (=> b!4015 m!6185))

(declare-fun m!6187 () Bool)

(assert (=> start!885 m!6187))

(declare-fun m!6189 () Bool)

(assert (=> start!885 m!6189))

(declare-fun m!6191 () Bool)

(assert (=> b!4018 m!6191))

(declare-fun m!6193 () Bool)

(assert (=> b!4017 m!6193))

(declare-fun m!6195 () Bool)

(assert (=> b!4014 m!6195))

(declare-fun m!6197 () Bool)

(assert (=> b!4019 m!6197))

(declare-fun m!6199 () Bool)

(assert (=> b!4019 m!6199))

(check-sat (not b!4015) (not b!4017) (not start!885) (not b!4018))
(check-sat)
