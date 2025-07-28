; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2309 () Bool)

(assert start!2309)

(declare-fun b!12017 () Bool)

(declare-fun res!9470 () Bool)

(declare-fun e!6815 () Bool)

(assert (=> b!12017 (=> (not res!9470) (not e!6815))))

(declare-datatypes ((array!884 0))(
  ( (array!885 (arr!387 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!387 (_ BitVec 32))) )
))
(declare-fun qq!48 () array!884)

(declare-fun qqInv!0 (array!884) Bool)

(assert (=> b!12017 (= res!9470 (qqInv!0 qq!48))))

(declare-fun b!12018 () Bool)

(declare-fun res!9468 () Bool)

(assert (=> b!12018 (=> (not res!9468) (not e!6815))))

(declare-datatypes ((array!886 0))(
  ( (array!887 (arr!388 (Array (_ BitVec 32) (_ BitVec 32))) (size!388 (_ BitVec 32))) )
))
(declare-fun iq!194 () array!886)

(declare-fun jz!59 () (_ BitVec 32))

(assert (=> b!12018 (= res!9468 (and (bvsle (select (arr!388 iq!194) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (= (size!387 qq!48) #b00000000000000000000000000010100)))))

(declare-fun lt!6225 () (_ BitVec 32))

(declare-fun b!12019 () Bool)

(declare-datatypes ((Unit!1337 0))(
  ( (Unit!1338) )
))
(declare-datatypes ((tuple4!256 0))(
  ( (tuple4!257 (_1!300 Unit!1337) (_2!300 array!886) (_3!237 (_ BitVec 32)) (_4!128 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!6229 () tuple4!256)

(declare-datatypes ((tuple4!258 0))(
  ( (tuple4!259 (_1!301 Unit!1337) (_2!301 (_ BitVec 32)) (_3!238 array!886) (_4!129 (_ BitVec 32))) )
))
(declare-fun e!6821 () tuple4!258)

(declare-fun lt!6227 () (_ BitVec 32))

(declare-fun Unit!1339 () Unit!1337)

(assert (=> b!12019 (= e!6821 (tuple4!259 Unit!1339 lt!6227 (_2!300 lt!6229) lt!6225))))

(declare-fun b!12020 () Bool)

(declare-fun q!93 () array!884)

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!884 (_ BitVec 32) array!886 (_ BitVec 32)) tuple4!258)

(assert (=> b!12020 (= e!6821 (computeModuloWhile!3 jz!59 q!93 lt!6227 (_2!300 lt!6229) lt!6225))))

(declare-fun b!12021 () Bool)

(declare-datatypes ((tuple3!218 0))(
  ( (tuple3!219 (_1!302 Unit!1337) (_2!302 array!886) (_3!239 (_ BitVec 32))) )
))
(declare-fun e!6813 () tuple3!218)

(declare-fun Unit!1340 () Unit!1337)

(assert (=> b!12021 (= e!6813 (tuple3!219 Unit!1340 (_2!300 lt!6229) lt!6225))))

(declare-fun b!12022 () Bool)

(declare-fun i!271 () (_ BitVec 32))

(assert (=> b!12022 (= e!6815 (and (bvslt i!271 jz!59) (not (= (bvand jz!59 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!59 #b10000000000000000000000000000000) (bvand (bvsub jz!59 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!6233 () (_ BitVec 32))

(declare-fun b!12023 () Bool)

(declare-fun lt!6230 () tuple4!258)

(declare-fun Unit!1341 () Unit!1337)

(assert (=> b!12023 (= e!6813 (tuple3!219 Unit!1341 (array!887 (store (arr!388 (_3!238 lt!6230)) (bvsub jz!59 #b00000000000000000000000000000001) (ite (= (_4!129 lt!6230) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!6233) (bvsub #b00000000111111111111111111111111 lt!6233))) (size!388 (_3!238 lt!6230))) (_4!129 lt!6230)))))

(assert (=> b!12023 (= lt!6227 #b00000000000000000000000000000000)))

(declare-fun c!1487 () Bool)

(assert (=> b!12023 (= c!1487 (bvslt lt!6227 (bvsub jz!59 #b00000000000000000000000000000001)))))

(assert (=> b!12023 (= lt!6230 e!6821)))

(assert (=> b!12023 (= lt!6233 (select (arr!388 (_3!238 lt!6230)) (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun b!12024 () Bool)

(declare-fun lt!6232 () array!886)

(declare-fun e!6818 () tuple4!256)

(declare-fun lt!6226 () (_ FloatingPoint 11 53))

(declare-fun Unit!1342 () Unit!1337)

(assert (=> b!12024 (= e!6818 (tuple4!257 Unit!1342 lt!6232 jz!59 lt!6226))))

(declare-fun b!12025 () Bool)

(declare-fun e!6820 () Bool)

(assert (=> b!12025 (= e!6820 e!6815)))

(declare-fun res!9471 () Bool)

(assert (=> b!12025 (=> (not res!9471) (not e!6815))))

(declare-fun lt!6228 () Bool)

(declare-fun lt!6231 () tuple3!218)

(assert (=> b!12025 (= res!9471 (and (bvsle #b00000000000000000000000000000000 (select (arr!388 (_2!302 lt!6231)) (bvsub jz!59 #b00000000000000000000000000000001))) (bvsle (select (arr!388 (_2!302 lt!6231)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (not lt!6228) (not (= (_3!239 lt!6231) #b00000000000000000000000000000000)) (not (= (select (arr!388 (_2!302 lt!6231)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))) (bvsle (select (arr!388 (_2!302 lt!6231)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (bvsle #b00000000000000000000000000000000 i!271) (bvsle i!271 jz!59)))))

(assert (=> b!12025 (= lt!6231 e!6813)))

(declare-fun c!1486 () Bool)

(assert (=> b!12025 (= c!1486 lt!6228)))

(assert (=> b!12025 (= lt!6225 #b00000000000000000000000000000000)))

(assert (=> b!12025 (= lt!6228 (bvsge (select (arr!388 (_2!300 lt!6229)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun res!9469 () Bool)

(declare-fun e!6816 () Bool)

(assert (=> start!2309 (=> (not res!9469) (not e!6816))))

(assert (=> start!2309 (= res!9469 (and (bvsle #b00000000000000000000000000000010 jz!59) (bvslt jz!59 #b00000000000000000000000000010011)))))

(assert (=> start!2309 e!6816))

(assert (=> start!2309 true))

(declare-fun array_inv!336 (array!886) Bool)

(assert (=> start!2309 (array_inv!336 iq!194)))

(declare-fun array_inv!337 (array!884) Bool)

(assert (=> start!2309 (array_inv!337 qq!48)))

(assert (=> start!2309 (array_inv!337 q!93)))

(declare-fun b!12016 () Bool)

(declare-fun res!9473 () Bool)

(assert (=> b!12016 (=> (not res!9473) (not e!6815))))

(declare-fun iqInv!0 (array!886) Bool)

(assert (=> b!12016 (= res!9473 (iqInv!0 iq!194))))

(declare-fun b!12026 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!884 array!886 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!256)

(assert (=> b!12026 (= e!6818 (computeModuloWhile!0 jz!59 q!93 lt!6232 jz!59 lt!6226))))

(declare-fun b!12027 () Bool)

(assert (=> b!12027 (= e!6816 e!6820)))

(declare-fun res!9474 () Bool)

(assert (=> b!12027 (=> (not res!9474) (not e!6820))))

(declare-fun lt!6234 () (_ FloatingPoint 11 53))

(assert (=> b!12027 (= res!9474 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!6234) (fp.lt lt!6234 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!12027 (= lt!6234 (fp.sub roundNearestTiesToEven (_4!128 lt!6229) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!128 lt!6229) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!128 lt!6229) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!128 lt!6229) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!128 lt!6229) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!12027 (= lt!6229 e!6818)))

(declare-fun c!1485 () Bool)

(assert (=> b!12027 (= c!1485 (bvsgt jz!59 #b00000000000000000000000000000000))))

(assert (=> b!12027 (= lt!6226 (select (arr!387 q!93) jz!59))))

(assert (=> b!12027 (= lt!6232 (array!887 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!12028 () Bool)

(declare-fun res!9472 () Bool)

(assert (=> b!12028 (=> (not res!9472) (not e!6816))))

(declare-fun qInv!0 (array!884) Bool)

(assert (=> b!12028 (= res!9472 (qInv!0 q!93))))

(assert (= (and start!2309 res!9469) b!12028))

(assert (= (and b!12028 res!9472) b!12027))

(assert (= (and b!12027 c!1485) b!12026))

(assert (= (and b!12027 (not c!1485)) b!12024))

(assert (= (and b!12027 res!9474) b!12025))

(assert (= (and b!12025 c!1486) b!12023))

(assert (= (and b!12025 (not c!1486)) b!12021))

(assert (= (and b!12023 c!1487) b!12020))

(assert (= (and b!12023 (not c!1487)) b!12019))

(assert (= (and b!12025 res!9471) b!12016))

(assert (= (and b!12016 res!9473) b!12018))

(assert (= (and b!12018 res!9468) b!12017))

(assert (= (and b!12017 res!9470) b!12022))

(declare-fun m!18063 () Bool)

(assert (=> start!2309 m!18063))

(declare-fun m!18065 () Bool)

(assert (=> start!2309 m!18065))

(declare-fun m!18067 () Bool)

(assert (=> start!2309 m!18067))

(declare-fun m!18069 () Bool)

(assert (=> b!12016 m!18069))

(declare-fun m!18071 () Bool)

(assert (=> b!12027 m!18071))

(declare-fun m!18073 () Bool)

(assert (=> b!12018 m!18073))

(declare-fun m!18075 () Bool)

(assert (=> b!12025 m!18075))

(declare-fun m!18077 () Bool)

(assert (=> b!12025 m!18077))

(declare-fun m!18079 () Bool)

(assert (=> b!12020 m!18079))

(declare-fun m!18081 () Bool)

(assert (=> b!12023 m!18081))

(declare-fun m!18083 () Bool)

(assert (=> b!12023 m!18083))

(declare-fun m!18085 () Bool)

(assert (=> b!12026 m!18085))

(declare-fun m!18087 () Bool)

(assert (=> b!12017 m!18087))

(declare-fun m!18089 () Bool)

(assert (=> b!12028 m!18089))

(check-sat (not b!12026) (not b!12020) (not b!12017) (not b!12016) (not start!2309) (not b!12028))
(check-sat)
