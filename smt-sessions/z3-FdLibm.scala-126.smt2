; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1015 () Bool)

(assert start!1015)

(declare-fun b!4437 () Bool)

(declare-fun res!3367 () Bool)

(declare-fun e!2365 () Bool)

(assert (=> b!4437 (=> (not res!3367) (not e!2365))))

(declare-datatypes ((array!326 0))(
  ( (array!327 (arr!141 (Array (_ BitVec 32) (_ BitVec 32))) (size!141 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!326)

(declare-fun iqInv!0 (array!326) Bool)

(assert (=> b!4437 (= res!3367 (iqInv!0 iq!165))))

(declare-fun res!3368 () Bool)

(declare-fun e!2363 () Bool)

(assert (=> start!1015 (=> (not res!3368) (not e!2363))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!1015 (= res!3368 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1015 e!2363))

(assert (=> start!1015 true))

(declare-fun array_inv!91 (array!326) Bool)

(assert (=> start!1015 (array_inv!91 iq!165)))

(declare-datatypes ((array!328 0))(
  ( (array!329 (arr!142 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!142 (_ BitVec 32))) )
))
(declare-fun q!85 () array!328)

(declare-fun array_inv!92 (array!328) Bool)

(assert (=> start!1015 (array_inv!92 q!85)))

(declare-fun b!4438 () Bool)

(declare-fun e!2368 () Bool)

(declare-fun e!2366 () Bool)

(assert (=> b!4438 (= e!2368 e!2366)))

(declare-fun res!3371 () Bool)

(assert (=> b!4438 (=> (not res!3371) (not e!2366))))

(declare-fun lt!3013 () (_ BitVec 32))

(assert (=> b!4438 (= res!3371 (and (bvsge lt!3013 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3013) (bvsle lt!3013 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4438 (= lt!3013 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun lt!3015 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun lt!3014 () (_ BitVec 32))

(assert (=> b!4438 (= lt!3015 (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!3014 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58))))

(declare-fun lt!3011 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!367 0))(
  ( (Unit!368) )
))
(declare-datatypes ((tuple4!192 0))(
  ( (tuple4!193 (_1!151 Unit!367) (_2!151 array!326) (_3!139 (_ BitVec 32)) (_4!96 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2364 () tuple4!192)

(declare-fun lt!3012 () array!326)

(declare-fun b!4439 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!328 array!326 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!192)

(assert (=> b!4439 (= e!2364 (computeModuloWhile!0 jz!53 q!85 lt!3012 jz!53 lt!3011))))

(declare-fun b!4440 () Bool)

(assert (=> b!4440 (= e!2366 (and (bvsge (select (store (arr!141 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3014 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3014) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3014))) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!3015 #b00000000000000000000000000000000) (= lt!3015 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4441 () Bool)

(assert (=> b!4441 (= e!2365 e!2368)))

(declare-fun res!3370 () Bool)

(assert (=> b!4441 (=> (not res!3370) (not e!2368))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4441 (= res!3370 (QInt!0 lt!3014))))

(assert (=> b!4441 (= lt!3014 (select (arr!141 iq!165) i!252))))

(declare-fun b!4442 () Bool)

(declare-fun res!3364 () Bool)

(assert (=> b!4442 (=> (not res!3364) (not e!2366))))

(assert (=> b!4442 (= res!3364 (iqInv!0 (array!327 (store (arr!141 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3014 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3014) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3014))) (size!141 iq!165))))))

(declare-fun b!4443 () Bool)

(assert (=> b!4443 (= e!2363 e!2365)))

(declare-fun res!3366 () Bool)

(assert (=> b!4443 (=> (not res!3366) (not e!2365))))

(declare-fun lt!3017 () (_ FloatingPoint 11 53))

(declare-fun lt!3016 () tuple4!192)

(assert (=> b!4443 (= res!3366 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3017) (fp.lt lt!3017 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!141 (_2!151 lt!3016)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4443 (= lt!3017 (fp.sub roundNearestTiesToEven (_4!96 lt!3016) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!96 lt!3016) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!96 lt!3016) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!96 lt!3016) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!96 lt!3016) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4443 (= lt!3016 e!2364)))

(declare-fun c!743 () Bool)

(assert (=> b!4443 (= c!743 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4443 (= lt!3011 (select (arr!142 q!85) jz!53))))

(assert (=> b!4443 (= lt!3012 (array!327 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4444 () Bool)

(declare-fun res!3365 () Bool)

(assert (=> b!4444 (=> (not res!3365) (not e!2363))))

(declare-fun qInv!0 (array!328) Bool)

(assert (=> b!4444 (= res!3365 (qInv!0 q!85))))

(declare-fun b!4445 () Bool)

(declare-fun res!3369 () Bool)

(assert (=> b!4445 (=> (not res!3369) (not e!2365))))

(assert (=> b!4445 (= res!3369 (and (bvsge (select (arr!141 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4446 () Bool)

(declare-fun Unit!369 () Unit!367)

(assert (=> b!4446 (= e!2364 (tuple4!193 Unit!369 lt!3012 jz!53 lt!3011))))

(assert (= (and start!1015 res!3368) b!4444))

(assert (= (and b!4444 res!3365) b!4443))

(assert (= (and b!4443 c!743) b!4439))

(assert (= (and b!4443 (not c!743)) b!4446))

(assert (= (and b!4443 res!3366) b!4437))

(assert (= (and b!4437 res!3367) b!4445))

(assert (= (and b!4445 res!3369) b!4441))

(assert (= (and b!4441 res!3370) b!4438))

(assert (= (and b!4438 res!3371) b!4442))

(assert (= (and b!4442 res!3364) b!4440))

(declare-fun m!5153 () Bool)

(assert (=> b!4437 m!5153))

(declare-fun m!5155 () Bool)

(assert (=> b!4442 m!5155))

(declare-fun m!5157 () Bool)

(assert (=> b!4442 m!5157))

(assert (=> b!4440 m!5155))

(declare-fun m!5159 () Bool)

(assert (=> b!4440 m!5159))

(declare-fun m!5161 () Bool)

(assert (=> b!4445 m!5161))

(declare-fun m!5163 () Bool)

(assert (=> start!1015 m!5163))

(declare-fun m!5165 () Bool)

(assert (=> start!1015 m!5165))

(declare-fun m!5167 () Bool)

(assert (=> b!4439 m!5167))

(declare-fun m!5169 () Bool)

(assert (=> b!4444 m!5169))

(declare-fun m!5171 () Bool)

(assert (=> b!4443 m!5171))

(declare-fun m!5173 () Bool)

(assert (=> b!4443 m!5173))

(declare-fun m!5175 () Bool)

(assert (=> b!4441 m!5175))

(declare-fun m!5177 () Bool)

(assert (=> b!4441 m!5177))

(check-sat (not start!1015) (not b!4442) (not b!4441) (not b!4444) (not b!4437) (not b!4439))
(check-sat)
