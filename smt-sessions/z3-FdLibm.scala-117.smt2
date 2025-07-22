; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!943 () Bool)

(assert start!943)

(declare-fun b!3975 () Bool)

(declare-fun res!3020 () Bool)

(declare-fun e!2075 () Bool)

(assert (=> b!3975 (=> (not res!3020) (not e!2075))))

(declare-datatypes ((array!282 0))(
  ( (array!283 (arr!123 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!123 (_ BitVec 32))) )
))
(declare-fun q!85 () array!282)

(declare-fun qInv!0 (array!282) Bool)

(assert (=> b!3975 (= res!3020 (qInv!0 q!85))))

(declare-fun res!3021 () Bool)

(assert (=> start!943 (=> (not res!3021) (not e!2075))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!943 (= res!3021 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!943 e!2075))

(assert (=> start!943 true))

(declare-datatypes ((array!284 0))(
  ( (array!285 (arr!124 (Array (_ BitVec 32) (_ BitVec 32))) (size!124 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!284)

(declare-fun array_inv!73 (array!284) Bool)

(assert (=> start!943 (array_inv!73 iq!165)))

(declare-fun array_inv!74 (array!282) Bool)

(assert (=> start!943 (array_inv!74 q!85)))

(declare-fun b!3976 () Bool)

(declare-fun res!3023 () Bool)

(declare-fun e!2074 () Bool)

(assert (=> b!3976 (=> (not res!3023) (not e!2074))))

(declare-fun iqInv!0 (array!284) Bool)

(assert (=> b!3976 (= res!3023 (iqInv!0 iq!165))))

(declare-fun b!3977 () Bool)

(declare-fun e!2070 () Bool)

(assert (=> b!3977 (= e!2074 e!2070)))

(declare-fun res!3018 () Bool)

(assert (=> b!3977 (=> (not res!3018) (not e!2070))))

(declare-fun lt!2696 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3977 (= res!3018 (QInt!0 lt!2696))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3977 (= lt!2696 (select (arr!124 iq!165) i!252))))

(declare-fun lt!2694 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!330 0))(
  ( (Unit!331) )
))
(declare-datatypes ((tuple4!162 0))(
  ( (tuple4!163 (_1!136 Unit!330) (_2!136 array!284) (_3!124 (_ BitVec 32)) (_4!81 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2072 () tuple4!162)

(declare-fun b!3978 () Bool)

(declare-fun lt!2692 () array!284)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!282 array!284 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!162)

(assert (=> b!3978 (= e!2072 (computeModuloWhile!0 jz!53 q!85 lt!2692 jz!53 lt!2694))))

(declare-fun b!3979 () Bool)

(declare-fun e!2069 () Bool)

(assert (=> b!3979 (= e!2069 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!3980 () Bool)

(declare-fun res!3022 () Bool)

(assert (=> b!3980 (=> (not res!3022) (not e!2069))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun lt!2691 () (_ BitVec 32))

(declare-datatypes ((tuple4!164 0))(
  ( (tuple4!165 (_1!137 Unit!330) (_2!137 (_ BitVec 32)) (_3!125 array!284) (_4!82 (_ BitVec 32))) )
))
(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!282 (_ BitVec 32) array!284 (_ BitVec 32)) tuple4!164)

(assert (=> b!3980 (= res!3022 (bvsle #b00000000000000000000000000000000 (_2!137 (computeModuloWhile!1 jz!53 q!85 lt!2691 (array!285 (store (arr!124 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2696 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2696) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2696))) (size!124 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2696 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))))

(declare-fun b!3981 () Bool)

(declare-fun Unit!332 () Unit!330)

(assert (=> b!3981 (= e!2072 (tuple4!163 Unit!332 lt!2692 jz!53 lt!2694))))

(declare-fun b!3982 () Bool)

(assert (=> b!3982 (= e!2075 e!2074)))

(declare-fun res!3016 () Bool)

(assert (=> b!3982 (=> (not res!3016) (not e!2074))))

(declare-fun lt!2695 () tuple4!162)

(declare-fun lt!2693 () (_ FloatingPoint 11 53))

(assert (=> b!3982 (= res!3016 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2693) (fp.lt lt!2693 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!124 (_2!136 lt!2695)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3982 (= lt!2693 (fp.sub roundNearestTiesToEven (_4!81 lt!2695) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!81 lt!2695) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!81 lt!2695) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!81 lt!2695) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!81 lt!2695) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3982 (= lt!2695 e!2072)))

(declare-fun c!686 () Bool)

(assert (=> b!3982 (= c!686 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3982 (= lt!2694 (select (arr!123 q!85) jz!53))))

(assert (=> b!3982 (= lt!2692 (array!285 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3983 () Bool)

(declare-fun res!3019 () Bool)

(assert (=> b!3983 (=> (not res!3019) (not e!2074))))

(assert (=> b!3983 (= res!3019 (and (bvsge (select (arr!124 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!3984 () Bool)

(assert (=> b!3984 (= e!2070 e!2069)))

(declare-fun res!3017 () Bool)

(assert (=> b!3984 (=> (not res!3017) (not e!2069))))

(assert (=> b!3984 (= res!3017 (bvslt lt!2691 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!3984 (= lt!2691 (bvadd i!252 #b00000000000000000000000000000001))))

(assert (= (and start!943 res!3021) b!3975))

(assert (= (and b!3975 res!3020) b!3982))

(assert (= (and b!3982 c!686) b!3978))

(assert (= (and b!3982 (not c!686)) b!3981))

(assert (= (and b!3982 res!3016) b!3976))

(assert (= (and b!3976 res!3023) b!3983))

(assert (= (and b!3983 res!3019) b!3977))

(assert (= (and b!3977 res!3018) b!3984))

(assert (= (and b!3984 res!3017) b!3980))

(assert (= (and b!3980 res!3022) b!3979))

(declare-fun m!4819 () Bool)

(assert (=> b!3977 m!4819))

(declare-fun m!4821 () Bool)

(assert (=> b!3977 m!4821))

(declare-fun m!4823 () Bool)

(assert (=> b!3978 m!4823))

(declare-fun m!4825 () Bool)

(assert (=> start!943 m!4825))

(declare-fun m!4827 () Bool)

(assert (=> start!943 m!4827))

(declare-fun m!4829 () Bool)

(assert (=> b!3983 m!4829))

(declare-fun m!4831 () Bool)

(assert (=> b!3980 m!4831))

(declare-fun m!4833 () Bool)

(assert (=> b!3980 m!4833))

(declare-fun m!4835 () Bool)

(assert (=> b!3976 m!4835))

(declare-fun m!4837 () Bool)

(assert (=> b!3982 m!4837))

(declare-fun m!4839 () Bool)

(assert (=> b!3982 m!4839))

(declare-fun m!4841 () Bool)

(assert (=> b!3975 m!4841))

(check-sat (not b!3975) (not b!3977) (not b!3980) (not b!3978) (not b!3976) (not start!943))
(check-sat)
