; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!955 () Bool)

(assert start!955)

(declare-fun b!4531 () Bool)

(declare-fun e!2198 () Bool)

(declare-fun e!2195 () Bool)

(assert (=> b!4531 (= e!2198 e!2195)))

(declare-fun res!3529 () Bool)

(assert (=> b!4531 (=> (not res!3529) (not e!2195))))

(declare-fun lt!2815 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4531 (= res!3529 (QInt!0 lt!2815))))

(declare-datatypes ((array!286 0))(
  ( (array!287 (arr!125 (Array (_ BitVec 32) (_ BitVec 32))) (size!125 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!286)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4531 (= lt!2815 (select (arr!125 iq!165) i!252))))

(declare-datatypes ((Unit!354 0))(
  ( (Unit!355) )
))
(declare-datatypes ((tuple4!166 0))(
  ( (tuple4!167 (_1!138 Unit!354) (_2!138 array!286) (_3!126 (_ BitVec 32)) (_4!83 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2196 () tuple4!166)

(declare-datatypes ((array!288 0))(
  ( (array!289 (arr!126 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!126 (_ BitVec 32))) )
))
(declare-fun q!85 () array!288)

(declare-fun lt!2814 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun lt!2817 () array!286)

(declare-fun b!4532 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!288 array!286 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!166)

(assert (=> b!4532 (= e!2196 (computeModuloWhile!0 jz!53 q!85 lt!2817 jz!53 lt!2814))))

(declare-fun b!4533 () Bool)

(declare-fun e!2197 () Bool)

(declare-fun e!2199 () Bool)

(assert (=> b!4533 (= e!2197 e!2199)))

(declare-fun res!3525 () Bool)

(assert (=> b!4533 (=> (not res!3525) (not e!2199))))

(declare-datatypes ((tuple4!168 0))(
  ( (tuple4!169 (_1!139 Unit!354) (_2!139 (_ BitVec 32)) (_3!127 array!286) (_4!84 (_ BitVec 32))) )
))
(declare-fun lt!2816 () tuple4!168)

(assert (=> b!4533 (= res!3525 (and (bvsle #b00000000000000000000000000000000 (_2!139 lt!2816)) (bvsle (_2!139 lt!2816) (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun lt!2818 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!288 (_ BitVec 32) array!286 (_ BitVec 32)) tuple4!168)

(assert (=> b!4533 (= lt!2816 (computeModuloWhile!1 jz!53 q!85 lt!2818 (array!287 (store (arr!125 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2815 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2815) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2815))) (size!125 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2815 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))

(declare-fun b!4534 () Bool)

(declare-fun Unit!356 () Unit!354)

(assert (=> b!4534 (= e!2196 (tuple4!167 Unit!356 lt!2817 jz!53 lt!2814))))

(declare-fun res!3527 () Bool)

(declare-fun e!2200 () Bool)

(assert (=> start!955 (=> (not res!3527) (not e!2200))))

(assert (=> start!955 (= res!3527 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!955 e!2200))

(assert (=> start!955 true))

(declare-fun array_inv!75 (array!286) Bool)

(assert (=> start!955 (array_inv!75 iq!165)))

(declare-fun array_inv!76 (array!288) Bool)

(assert (=> start!955 (array_inv!76 q!85)))

(declare-fun b!4535 () Bool)

(declare-fun res!3528 () Bool)

(assert (=> b!4535 (=> (not res!3528) (not e!2199))))

(declare-fun iqInv!0 (array!286) Bool)

(assert (=> b!4535 (= res!3528 (iqInv!0 (_3!127 lt!2816)))))

(declare-fun b!4536 () Bool)

(assert (=> b!4536 (= e!2200 e!2198)))

(declare-fun res!3531 () Bool)

(assert (=> b!4536 (=> (not res!3531) (not e!2198))))

(declare-fun lt!2813 () tuple4!166)

(declare-fun lt!2812 () (_ FloatingPoint 11 53))

(assert (=> b!4536 (= res!3531 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2812) (fp.lt lt!2812 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!125 (_2!138 lt!2813)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4536 (= lt!2812 (fp.sub roundNearestTiesToEven (_4!83 lt!2813) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!83 lt!2813) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!83 lt!2813) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!83 lt!2813) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!83 lt!2813) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4536 (= lt!2813 e!2196)))

(declare-fun c!710 () Bool)

(assert (=> b!4536 (= c!710 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4536 (= lt!2814 (select (arr!126 q!85) jz!53))))

(assert (=> b!4536 (= lt!2817 (array!287 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4537 () Bool)

(assert (=> b!4537 (= e!2195 e!2197)))

(declare-fun res!3526 () Bool)

(assert (=> b!4537 (=> (not res!3526) (not e!2197))))

(assert (=> b!4537 (= res!3526 (bvslt lt!2818 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4537 (= lt!2818 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4538 () Bool)

(declare-fun res!3530 () Bool)

(assert (=> b!4538 (=> (not res!3530) (not e!2200))))

(declare-fun qInv!0 (array!288) Bool)

(assert (=> b!4538 (= res!3530 (qInv!0 q!85))))

(declare-fun b!4539 () Bool)

(declare-fun res!3532 () Bool)

(assert (=> b!4539 (=> (not res!3532) (not e!2198))))

(assert (=> b!4539 (= res!3532 (and (bvsge (select (arr!125 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4540 () Bool)

(assert (=> b!4540 (= e!2199 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4541 () Bool)

(declare-fun res!3524 () Bool)

(assert (=> b!4541 (=> (not res!3524) (not e!2198))))

(assert (=> b!4541 (= res!3524 (iqInv!0 iq!165))))

(assert (= (and start!955 res!3527) b!4538))

(assert (= (and b!4538 res!3530) b!4536))

(assert (= (and b!4536 c!710) b!4532))

(assert (= (and b!4536 (not c!710)) b!4534))

(assert (= (and b!4536 res!3531) b!4541))

(assert (= (and b!4541 res!3524) b!4539))

(assert (= (and b!4539 res!3532) b!4531))

(assert (= (and b!4531 res!3529) b!4537))

(assert (= (and b!4537 res!3526) b!4533))

(assert (= (and b!4533 res!3525) b!4535))

(assert (= (and b!4535 res!3528) b!4540))

(declare-fun m!7241 () Bool)

(assert (=> b!4533 m!7241))

(declare-fun m!7243 () Bool)

(assert (=> b!4533 m!7243))

(declare-fun m!7245 () Bool)

(assert (=> b!4541 m!7245))

(declare-fun m!7247 () Bool)

(assert (=> b!4531 m!7247))

(declare-fun m!7249 () Bool)

(assert (=> b!4531 m!7249))

(declare-fun m!7251 () Bool)

(assert (=> b!4532 m!7251))

(declare-fun m!7253 () Bool)

(assert (=> b!4536 m!7253))

(declare-fun m!7255 () Bool)

(assert (=> b!4536 m!7255))

(declare-fun m!7257 () Bool)

(assert (=> start!955 m!7257))

(declare-fun m!7259 () Bool)

(assert (=> start!955 m!7259))

(declare-fun m!7261 () Bool)

(assert (=> b!4539 m!7261))

(declare-fun m!7263 () Bool)

(assert (=> b!4535 m!7263))

(declare-fun m!7265 () Bool)

(assert (=> b!4538 m!7265))

(push 1)

(assert (not b!4535))

(assert (not b!4532))

(assert (not b!4531))

(assert (not start!955))

(assert (not b!4541))

(assert (not b!4533))

(assert (not b!4538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

