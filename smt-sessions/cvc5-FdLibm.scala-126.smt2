; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1025 () Bool)

(assert start!1025)

(declare-fun res!3853 () Bool)

(declare-fun e!2465 () Bool)

(assert (=> start!1025 (=> (not res!3853) (not e!2465))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!1025 (= res!3853 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1025 e!2465))

(assert (=> start!1025 true))

(declare-datatypes ((array!326 0))(
  ( (array!327 (arr!141 (Array (_ BitVec 32) (_ BitVec 32))) (size!141 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!326)

(declare-fun array_inv!91 (array!326) Bool)

(assert (=> start!1025 (array_inv!91 iq!165)))

(declare-datatypes ((array!328 0))(
  ( (array!329 (arr!142 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!142 (_ BitVec 32))) )
))
(declare-fun q!85 () array!328)

(declare-fun array_inv!92 (array!328) Bool)

(assert (=> start!1025 (array_inv!92 q!85)))

(declare-fun b!4961 () Bool)

(declare-fun e!2464 () Bool)

(assert (=> b!4961 (= e!2465 e!2464)))

(declare-fun res!3848 () Bool)

(assert (=> b!4961 (=> (not res!3848) (not e!2464))))

(declare-fun lt!3115 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!388 0))(
  ( (Unit!389) )
))
(declare-datatypes ((tuple4!192 0))(
  ( (tuple4!193 (_1!151 Unit!388) (_2!151 array!326) (_3!139 (_ BitVec 32)) (_4!96 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!3113 () tuple4!192)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4961 (= res!3848 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3115) (fp.lt lt!3115 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!141 (_2!151 lt!3113)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4961 (= lt!3115 (fp.sub roundNearestTiesToEven (_4!96 lt!3113) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!96 lt!3113) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!96 lt!3113) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!96 lt!3113) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!96 lt!3113) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2469 () tuple4!192)

(assert (=> b!4961 (= lt!3113 e!2469)))

(declare-fun c!764 () Bool)

(assert (=> b!4961 (= c!764 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!3114 () (_ FloatingPoint 11 53))

(assert (=> b!4961 (= lt!3114 (select (arr!142 q!85) jz!53))))

(declare-fun lt!3112 () array!326)

(assert (=> b!4961 (= lt!3112 (array!327 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4962 () Bool)

(declare-fun e!2467 () Bool)

(declare-fun e!2466 () Bool)

(assert (=> b!4962 (= e!2467 e!2466)))

(declare-fun res!3847 () Bool)

(assert (=> b!4962 (=> (not res!3847) (not e!2466))))

(declare-fun lt!3117 () (_ BitVec 32))

(assert (=> b!4962 (= res!3847 (and (bvsge lt!3117 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3117) (bvsle lt!3117 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4962 (= lt!3117 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun lt!3118 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun lt!3116 () (_ BitVec 32))

(assert (=> b!4962 (= lt!3118 (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!3116 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58))))

(declare-fun b!4963 () Bool)

(assert (=> b!4963 (= e!2464 e!2467)))

(declare-fun res!3851 () Bool)

(assert (=> b!4963 (=> (not res!3851) (not e!2467))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4963 (= res!3851 (QInt!0 lt!3116))))

(assert (=> b!4963 (= lt!3116 (select (arr!141 iq!165) i!252))))

(declare-fun b!4964 () Bool)

(declare-fun res!3852 () Bool)

(assert (=> b!4964 (=> (not res!3852) (not e!2464))))

(declare-fun iqInv!0 (array!326) Bool)

(assert (=> b!4964 (= res!3852 (iqInv!0 iq!165))))

(declare-fun b!4965 () Bool)

(declare-fun Unit!390 () Unit!388)

(assert (=> b!4965 (= e!2469 (tuple4!193 Unit!390 lt!3112 jz!53 lt!3114))))

(declare-fun b!4966 () Bool)

(assert (=> b!4966 (= e!2466 (and (bvsge (select (store (arr!141 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3116 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3116) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3116))) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!3118 #b00000000000000000000000000000000) (= lt!3118 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4967 () Bool)

(declare-fun res!3850 () Bool)

(assert (=> b!4967 (=> (not res!3850) (not e!2466))))

(assert (=> b!4967 (= res!3850 (iqInv!0 (array!327 (store (arr!141 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3116 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3116) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3116))) (size!141 iq!165))))))

(declare-fun b!4968 () Bool)

(declare-fun res!3846 () Bool)

(assert (=> b!4968 (=> (not res!3846) (not e!2465))))

(declare-fun qInv!0 (array!328) Bool)

(assert (=> b!4968 (= res!3846 (qInv!0 q!85))))

(declare-fun b!4969 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!328 array!326 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!192)

(assert (=> b!4969 (= e!2469 (computeModuloWhile!0 jz!53 q!85 lt!3112 jz!53 lt!3114))))

(declare-fun b!4970 () Bool)

(declare-fun res!3849 () Bool)

(assert (=> b!4970 (=> (not res!3849) (not e!2464))))

(assert (=> b!4970 (= res!3849 (and (bvsge (select (arr!141 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!1025 res!3853) b!4968))

(assert (= (and b!4968 res!3846) b!4961))

(assert (= (and b!4961 c!764) b!4969))

(assert (= (and b!4961 (not c!764)) b!4965))

(assert (= (and b!4961 res!3848) b!4964))

(assert (= (and b!4964 res!3852) b!4970))

(assert (= (and b!4970 res!3849) b!4963))

(assert (= (and b!4963 res!3851) b!4962))

(assert (= (and b!4962 res!3847) b!4967))

(assert (= (and b!4967 res!3850) b!4966))

(declare-fun m!7551 () Bool)

(assert (=> b!4966 m!7551))

(declare-fun m!7553 () Bool)

(assert (=> b!4966 m!7553))

(declare-fun m!7555 () Bool)

(assert (=> start!1025 m!7555))

(declare-fun m!7557 () Bool)

(assert (=> start!1025 m!7557))

(declare-fun m!7559 () Bool)

(assert (=> b!4968 m!7559))

(declare-fun m!7561 () Bool)

(assert (=> b!4970 m!7561))

(declare-fun m!7563 () Bool)

(assert (=> b!4969 m!7563))

(assert (=> b!4967 m!7551))

(declare-fun m!7565 () Bool)

(assert (=> b!4967 m!7565))

(declare-fun m!7567 () Bool)

(assert (=> b!4961 m!7567))

(declare-fun m!7569 () Bool)

(assert (=> b!4961 m!7569))

(declare-fun m!7571 () Bool)

(assert (=> b!4964 m!7571))

(declare-fun m!7573 () Bool)

(assert (=> b!4963 m!7573))

(declare-fun m!7575 () Bool)

(assert (=> b!4963 m!7575))

(push 1)

(assert (not b!4963))

(assert (not b!4969))

(assert (not start!1025))

(assert (not b!4964))

(assert (not b!4968))

(assert (not b!4967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

