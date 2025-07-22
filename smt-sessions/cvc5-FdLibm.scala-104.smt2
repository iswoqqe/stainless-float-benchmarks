; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!871 () Bool)

(assert start!871)

(declare-datatypes ((Unit!306 0))(
  ( (Unit!307) )
))
(declare-datatypes ((array!220 0))(
  ( (array!221 (arr!97 (Array (_ BitVec 32) (_ BitVec 32))) (size!97 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!136 0))(
  ( (tuple4!137 (_1!123 Unit!306) (_2!123 array!220) (_3!111 (_ BitVec 32)) (_4!68 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2539 () tuple4!136)

(declare-fun b!4095 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!2537 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun e!1888 () Bool)

(assert (=> b!4095 (= e!1888 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2537) (fp.lt lt!2537 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!97 (_2!123 lt!2539)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!4095 (= lt!2537 (fp.sub roundNearestTiesToEven (_4!68 lt!2539) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!68 lt!2539) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!68 lt!2539) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!68 lt!2539) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!68 lt!2539) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1886 () tuple4!136)

(assert (=> b!4095 (= lt!2539 e!1886)))

(declare-fun c!650 () Bool)

(assert (=> b!4095 (= c!650 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2538 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!222 0))(
  ( (array!223 (arr!98 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!98 (_ BitVec 32))) )
))
(declare-fun q!85 () array!222)

(assert (=> b!4095 (= lt!2538 (select (arr!98 q!85) jz!53))))

(declare-fun lt!2536 () array!220)

(assert (=> b!4095 (= lt!2536 (array!221 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!3207 () Bool)

(assert (=> start!871 (=> (not res!3207) (not e!1888))))

(assert (=> start!871 (= res!3207 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!871 e!1888))

(assert (=> start!871 true))

(declare-fun array_inv!48 (array!222) Bool)

(assert (=> start!871 (array_inv!48 q!85)))

(declare-fun b!4094 () Bool)

(declare-fun res!3208 () Bool)

(assert (=> b!4094 (=> (not res!3208) (not e!1888))))

(declare-fun qInv!0 (array!222) Bool)

(assert (=> b!4094 (= res!3208 (qInv!0 q!85))))

(declare-fun b!4097 () Bool)

(declare-fun Unit!308 () Unit!306)

(assert (=> b!4097 (= e!1886 (tuple4!137 Unit!308 lt!2536 jz!53 lt!2538))))

(declare-fun b!4096 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!222 array!220 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!136)

(assert (=> b!4096 (= e!1886 (computeModuloWhile!0 jz!53 q!85 lt!2536 jz!53 lt!2538))))

(assert (= (and start!871 res!3207) b!4094))

(assert (= (and b!4094 res!3208) b!4095))

(assert (= (and b!4095 c!650) b!4096))

(assert (= (and b!4095 (not c!650)) b!4097))

(declare-fun m!6923 () Bool)

(assert (=> b!4095 m!6923))

(declare-fun m!6925 () Bool)

(assert (=> b!4095 m!6925))

(declare-fun m!6927 () Bool)

(assert (=> start!871 m!6927))

(declare-fun m!6929 () Bool)

(assert (=> b!4094 m!6929))

(declare-fun m!6931 () Bool)

(assert (=> b!4096 m!6931))

(push 1)

(assert (not start!871))

(assert (not b!4094))

(assert (not b!4096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

