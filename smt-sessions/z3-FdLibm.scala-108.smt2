; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!887 () Bool)

(assert start!887)

(declare-fun b!4032 () Bool)

(declare-fun res!3128 () Bool)

(declare-fun e!1931 () Bool)

(assert (=> b!4032 (=> (not res!3128) (not e!1931))))

(declare-datatypes ((array!238 0))(
  ( (array!239 (arr!105 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!105 (_ BitVec 32))) )
))
(declare-fun q!85 () array!238)

(declare-fun qInv!0 (array!238) Bool)

(assert (=> b!4032 (= res!3128 (qInv!0 q!85))))

(declare-fun res!3129 () Bool)

(assert (=> start!887 (=> (not res!3129) (not e!1931))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!887 (= res!3129 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!887 e!1931))

(assert (=> start!887 true))

(declare-datatypes ((array!240 0))(
  ( (array!241 (arr!106 (Array (_ BitVec 32) (_ BitVec 32))) (size!106 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!240)

(declare-fun array_inv!55 (array!240) Bool)

(assert (=> start!887 (array_inv!55 iq!165)))

(declare-fun array_inv!56 (array!238) Bool)

(assert (=> start!887 (array_inv!56 q!85)))

(declare-datatypes ((Unit!313 0))(
  ( (Unit!314) )
))
(declare-datatypes ((tuple4!144 0))(
  ( (tuple4!145 (_1!127 Unit!313) (_2!127 array!240) (_3!115 (_ BitVec 32)) (_4!72 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1929 () tuple4!144)

(declare-fun lt!2576 () array!240)

(declare-fun lt!2573 () (_ FloatingPoint 11 53))

(declare-fun b!4033 () Bool)

(declare-fun Unit!315 () Unit!313)

(assert (=> b!4033 (= e!1929 (tuple4!145 Unit!315 lt!2576 jz!53 lt!2573))))

(declare-fun b!4034 () Bool)

(declare-fun e!1932 () Bool)

(assert (=> b!4034 (= e!1931 e!1932)))

(declare-fun res!3130 () Bool)

(assert (=> b!4034 (=> (not res!3130) (not e!1932))))

(declare-fun lt!2575 () tuple4!144)

(declare-fun i!252 () (_ BitVec 32))

(declare-fun lt!2574 () (_ FloatingPoint 11 53))

(assert (=> b!4034 (= res!3130 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2574) (fp.lt lt!2574 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!106 (_2!127 lt!2575)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4034 (= lt!2574 (fp.sub roundNearestTiesToEven (_4!72 lt!2575) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!72 lt!2575) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!72 lt!2575) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!72 lt!2575) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!72 lt!2575) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4034 (= lt!2575 e!1929)))

(declare-fun c!659 () Bool)

(assert (=> b!4034 (= c!659 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4034 (= lt!2573 (select (arr!105 q!85) jz!53))))

(assert (=> b!4034 (= lt!2576 (array!241 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4035 () Bool)

(declare-fun res!3127 () Bool)

(assert (=> b!4035 (=> (not res!3127) (not e!1932))))

(declare-fun iqInv!0 (array!240) Bool)

(assert (=> b!4035 (= res!3127 (iqInv!0 iq!165))))

(declare-fun b!4036 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!238 array!240 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!144)

(assert (=> b!4036 (= e!1929 (computeModuloWhile!0 jz!53 q!85 lt!2576 jz!53 lt!2573))))

(declare-fun b!4037 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4037 (= e!1932 (and (bvsge (select (arr!106 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand i!252 #b10000000000000000000000000000000))) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 i!252) #b10000000000000000000000000000000)))))))

(assert (= (and start!887 res!3129) b!4032))

(assert (= (and b!4032 res!3128) b!4034))

(assert (= (and b!4034 c!659) b!4036))

(assert (= (and b!4034 (not c!659)) b!4033))

(assert (= (and b!4034 res!3130) b!4035))

(assert (= (and b!4035 res!3127) b!4037))

(declare-fun m!6201 () Bool)

(assert (=> b!4032 m!6201))

(declare-fun m!6203 () Bool)

(assert (=> b!4034 m!6203))

(declare-fun m!6205 () Bool)

(assert (=> b!4034 m!6205))

(declare-fun m!6207 () Bool)

(assert (=> b!4037 m!6207))

(declare-fun m!6209 () Bool)

(assert (=> b!4036 m!6209))

(declare-fun m!6211 () Bool)

(assert (=> start!887 m!6211))

(declare-fun m!6213 () Bool)

(assert (=> start!887 m!6213))

(declare-fun m!6215 () Bool)

(assert (=> b!4035 m!6215))

(check-sat (not b!4035) (not b!4036) (not start!887) (not b!4032))
(check-sat)
