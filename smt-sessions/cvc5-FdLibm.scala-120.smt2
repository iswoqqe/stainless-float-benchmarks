; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!973 () Bool)

(assert start!973)

(declare-fun b!4652 () Bool)

(declare-fun res!3620 () Bool)

(declare-fun e!2273 () Bool)

(assert (=> b!4652 (=> (not res!3620) (not e!2273))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((array!296 0))(
  ( (array!297 (arr!129 (Array (_ BitVec 32) (_ BitVec 32))) (size!129 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!296)

(assert (=> b!4652 (= res!3620 (and (bvsge (select (arr!129 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4653 () Bool)

(declare-fun e!2274 () Bool)

(assert (=> b!4653 (= e!2274 e!2273)))

(declare-fun res!3618 () Bool)

(assert (=> b!4653 (=> (not res!3618) (not e!2273))))

(declare-datatypes ((Unit!363 0))(
  ( (Unit!364) )
))
(declare-datatypes ((tuple4!174 0))(
  ( (tuple4!175 (_1!142 Unit!363) (_2!142 array!296) (_3!130 (_ BitVec 32)) (_4!87 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2903 () tuple4!174)

(declare-fun lt!2902 () (_ FloatingPoint 11 53))

(assert (=> b!4653 (= res!3618 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2902) (fp.lt lt!2902 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!129 (_2!142 lt!2903)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4653 (= lt!2902 (fp.sub roundNearestTiesToEven (_4!87 lt!2903) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!87 lt!2903) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!87 lt!2903) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!87 lt!2903) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!87 lt!2903) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2276 () tuple4!174)

(assert (=> b!4653 (= lt!2903 e!2276)))

(declare-fun c!725 () Bool)

(assert (=> b!4653 (= c!725 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2905 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!298 0))(
  ( (array!299 (arr!130 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!130 (_ BitVec 32))) )
))
(declare-fun q!85 () array!298)

(assert (=> b!4653 (= lt!2905 (select (arr!130 q!85) jz!53))))

(declare-fun lt!2904 () array!296)

(assert (=> b!4653 (= lt!2904 (array!297 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4654 () Bool)

(declare-fun e!2270 () Bool)

(assert (=> b!4654 (= e!2273 e!2270)))

(declare-fun res!3621 () Bool)

(assert (=> b!4654 (=> (not res!3621) (not e!2270))))

(declare-fun lt!2899 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4654 (= res!3621 (QInt!0 lt!2899))))

(assert (=> b!4654 (= lt!2899 (select (arr!129 iq!165) i!252))))

(declare-fun b!4655 () Bool)

(declare-fun res!3615 () Bool)

(assert (=> b!4655 (=> (not res!3615) (not e!2274))))

(declare-fun qInv!0 (array!298) Bool)

(assert (=> b!4655 (= res!3615 (qInv!0 q!85))))

(declare-fun b!4656 () Bool)

(declare-fun res!3622 () Bool)

(declare-fun e!2272 () Bool)

(assert (=> b!4656 (=> (not res!3622) (not e!2272))))

(declare-datatypes ((tuple4!176 0))(
  ( (tuple4!177 (_1!143 Unit!363) (_2!143 (_ BitVec 32)) (_3!131 array!296) (_4!88 (_ BitVec 32))) )
))
(declare-fun lt!2901 () tuple4!176)

(declare-fun iqInv!0 (array!296) Bool)

(assert (=> b!4656 (= res!3622 (iqInv!0 (_3!131 lt!2901)))))

(declare-fun b!4657 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!298 array!296 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!174)

(assert (=> b!4657 (= e!2276 (computeModuloWhile!0 jz!53 q!85 lt!2904 jz!53 lt!2905))))

(declare-fun res!3617 () Bool)

(assert (=> start!973 (=> (not res!3617) (not e!2274))))

(assert (=> start!973 (= res!3617 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!973 e!2274))

(assert (=> start!973 true))

(declare-fun array_inv!79 (array!296) Bool)

(assert (=> start!973 (array_inv!79 iq!165)))

(declare-fun array_inv!80 (array!298) Bool)

(assert (=> start!973 (array_inv!80 q!85)))

(declare-fun b!4658 () Bool)

(declare-fun e!2271 () Bool)

(assert (=> b!4658 (= e!2270 e!2271)))

(declare-fun res!3616 () Bool)

(assert (=> b!4658 (=> (not res!3616) (not e!2271))))

(declare-fun lt!2900 () (_ BitVec 32))

(assert (=> b!4658 (= res!3616 (bvslt lt!2900 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!4658 (= lt!2900 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4659 () Bool)

(declare-fun res!3619 () Bool)

(assert (=> b!4659 (=> (not res!3619) (not e!2273))))

(assert (=> b!4659 (= res!3619 (iqInv!0 iq!165))))

(declare-fun b!4660 () Bool)

(assert (=> b!4660 (= e!2272 (and (bvsge (select (arr!129 (_3!131 lt!2901)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= (_4!88 lt!2901) #b00000000000000000000000000000000) (= (_4!88 lt!2901) #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4661 () Bool)

(assert (=> b!4661 (= e!2271 e!2272)))

(declare-fun res!3623 () Bool)

(assert (=> b!4661 (=> (not res!3623) (not e!2272))))

(assert (=> b!4661 (= res!3623 (and (bvsle #b00000000000000000000000000000000 (_2!143 lt!2901)) (bvsle (_2!143 lt!2901) (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!298 (_ BitVec 32) array!296 (_ BitVec 32)) tuple4!176)

(assert (=> b!4661 (= lt!2901 (computeModuloWhile!1 jz!53 q!85 lt!2900 (array!297 (store (arr!129 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2899 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2899) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2899))) (size!129 iq!165)) (ite (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2899 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!58)))))

(declare-fun b!4662 () Bool)

(declare-fun Unit!365 () Unit!363)

(assert (=> b!4662 (= e!2276 (tuple4!175 Unit!365 lt!2904 jz!53 lt!2905))))

(assert (= (and start!973 res!3617) b!4655))

(assert (= (and b!4655 res!3615) b!4653))

(assert (= (and b!4653 c!725) b!4657))

(assert (= (and b!4653 (not c!725)) b!4662))

(assert (= (and b!4653 res!3618) b!4659))

(assert (= (and b!4659 res!3619) b!4652))

(assert (= (and b!4652 res!3620) b!4654))

(assert (= (and b!4654 res!3621) b!4658))

(assert (= (and b!4658 res!3616) b!4661))

(assert (= (and b!4661 res!3623) b!4656))

(assert (= (and b!4656 res!3622) b!4660))

(declare-fun m!7325 () Bool)

(assert (=> b!4653 m!7325))

(declare-fun m!7327 () Bool)

(assert (=> b!4653 m!7327))

(declare-fun m!7329 () Bool)

(assert (=> b!4654 m!7329))

(declare-fun m!7331 () Bool)

(assert (=> b!4654 m!7331))

(declare-fun m!7333 () Bool)

(assert (=> start!973 m!7333))

(declare-fun m!7335 () Bool)

(assert (=> start!973 m!7335))

(declare-fun m!7337 () Bool)

(assert (=> b!4657 m!7337))

(declare-fun m!7339 () Bool)

(assert (=> b!4652 m!7339))

(declare-fun m!7341 () Bool)

(assert (=> b!4661 m!7341))

(declare-fun m!7343 () Bool)

(assert (=> b!4661 m!7343))

(declare-fun m!7345 () Bool)

(assert (=> b!4655 m!7345))

(declare-fun m!7347 () Bool)

(assert (=> b!4656 m!7347))

(declare-fun m!7349 () Bool)

(assert (=> b!4659 m!7349))

(declare-fun m!7351 () Bool)

(assert (=> b!4660 m!7351))

(push 1)

(assert (not b!4654))

(assert (not b!4655))

(assert (not b!4656))

(assert (not b!4659))

(assert (not start!973))

(assert (not b!4657))

(assert (not b!4661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

