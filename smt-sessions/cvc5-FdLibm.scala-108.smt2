; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!889 () Bool)

(assert start!889)

(declare-fun b!4188 () Bool)

(declare-fun res!3273 () Bool)

(declare-fun e!1961 () Bool)

(assert (=> b!4188 (=> (not res!3273) (not e!1961))))

(declare-datatypes ((array!238 0))(
  ( (array!239 (arr!105 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!105 (_ BitVec 32))) )
))
(declare-fun q!85 () array!238)

(declare-fun qInv!0 (array!238) Bool)

(assert (=> b!4188 (= res!3273 (qInv!0 q!85))))

(declare-datatypes ((Unit!319 0))(
  ( (Unit!320) )
))
(declare-datatypes ((array!240 0))(
  ( (array!241 (arr!106 (Array (_ BitVec 32) (_ BitVec 32))) (size!106 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!144 0))(
  ( (tuple4!145 (_1!127 Unit!319) (_2!127 array!240) (_3!115 (_ BitVec 32)) (_4!72 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1959 () tuple4!144)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!2604 () array!240)

(declare-fun lt!2603 () (_ FloatingPoint 11 53))

(declare-fun b!4189 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!238 array!240 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!144)

(assert (=> b!4189 (= e!1959 (computeModuloWhile!0 jz!53 q!85 lt!2604 jz!53 lt!2603))))

(declare-fun res!3274 () Bool)

(assert (=> start!889 (=> (not res!3274) (not e!1961))))

(assert (=> start!889 (= res!3274 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!889 e!1961))

(assert (=> start!889 true))

(declare-fun iq!165 () array!240)

(declare-fun array_inv!55 (array!240) Bool)

(assert (=> start!889 (array_inv!55 iq!165)))

(declare-fun array_inv!56 (array!238) Bool)

(assert (=> start!889 (array_inv!56 q!85)))

(declare-fun b!4190 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun e!1962 () Bool)

(assert (=> b!4190 (= e!1962 (and (bvsge (select (arr!106 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand i!252 #b10000000000000000000000000000000))) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 i!252) #b10000000000000000000000000000000)))))))

(declare-fun b!4191 () Bool)

(declare-fun Unit!321 () Unit!319)

(assert (=> b!4191 (= e!1959 (tuple4!145 Unit!321 lt!2604 jz!53 lt!2603))))

(declare-fun b!4192 () Bool)

(assert (=> b!4192 (= e!1961 e!1962)))

(declare-fun res!3272 () Bool)

(assert (=> b!4192 (=> (not res!3272) (not e!1962))))

(declare-fun lt!2605 () (_ FloatingPoint 11 53))

(declare-fun lt!2602 () tuple4!144)

(assert (=> b!4192 (= res!3272 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2605) (fp.lt lt!2605 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!106 (_2!127 lt!2602)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4192 (= lt!2605 (fp.sub roundNearestTiesToEven (_4!72 lt!2602) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!72 lt!2602) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!72 lt!2602) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!72 lt!2602) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!72 lt!2602) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4192 (= lt!2602 e!1959)))

(declare-fun c!665 () Bool)

(assert (=> b!4192 (= c!665 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4192 (= lt!2603 (select (arr!105 q!85) jz!53))))

(assert (=> b!4192 (= lt!2604 (array!241 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4193 () Bool)

(declare-fun res!3271 () Bool)

(assert (=> b!4193 (=> (not res!3271) (not e!1962))))

(declare-fun iqInv!0 (array!240) Bool)

(assert (=> b!4193 (= res!3271 (iqInv!0 iq!165))))

(assert (= (and start!889 res!3274) b!4188))

(assert (= (and b!4188 res!3273) b!4192))

(assert (= (and b!4192 c!665) b!4189))

(assert (= (and b!4192 (not c!665)) b!4191))

(assert (= (and b!4192 res!3272) b!4193))

(assert (= (and b!4193 res!3271) b!4190))

(declare-fun m!6991 () Bool)

(assert (=> b!4190 m!6991))

(declare-fun m!6993 () Bool)

(assert (=> b!4189 m!6993))

(declare-fun m!6995 () Bool)

(assert (=> b!4192 m!6995))

(declare-fun m!6997 () Bool)

(assert (=> b!4192 m!6997))

(declare-fun m!6999 () Bool)

(assert (=> start!889 m!6999))

(declare-fun m!7001 () Bool)

(assert (=> start!889 m!7001))

(declare-fun m!7003 () Bool)

(assert (=> b!4188 m!7003))

(declare-fun m!7005 () Bool)

(assert (=> b!4193 m!7005))

(push 1)

(assert (not b!4188))

(assert (not b!4189))

(assert (not start!889))

(assert (not b!4193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

