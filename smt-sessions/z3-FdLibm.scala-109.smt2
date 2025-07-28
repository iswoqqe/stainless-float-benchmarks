; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!889 () Bool)

(assert start!889)

(declare-fun lt!2585 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!242 0))(
  ( (array!243 (arr!107 (Array (_ BitVec 32) (_ BitVec 32))) (size!107 (_ BitVec 32))) )
))
(declare-fun lt!2586 () array!242)

(declare-fun b!4050 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((Unit!316 0))(
  ( (Unit!317) )
))
(declare-datatypes ((tuple4!146 0))(
  ( (tuple4!147 (_1!128 Unit!316) (_2!128 array!242) (_3!116 (_ BitVec 32)) (_4!73 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1946 () tuple4!146)

(declare-fun Unit!318 () Unit!316)

(assert (=> b!4050 (= e!1946 (tuple4!147 Unit!318 lt!2586 jz!53 lt!2585))))

(declare-fun b!4051 () Bool)

(declare-datatypes ((array!244 0))(
  ( (array!245 (arr!108 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!108 (_ BitVec 32))) )
))
(declare-fun q!85 () array!244)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!244 array!242 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!146)

(assert (=> b!4051 (= e!1946 (computeModuloWhile!0 jz!53 q!85 lt!2586 jz!53 lt!2585))))

(declare-fun b!4053 () Bool)

(declare-fun res!3139 () Bool)

(declare-fun e!1944 () Bool)

(assert (=> b!4053 (=> (not res!3139) (not e!1944))))

(declare-fun iq!165 () array!242)

(declare-fun iqInv!0 (array!242) Bool)

(assert (=> b!4053 (= res!3139 (iqInv!0 iq!165))))

(declare-fun b!4054 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4054 (= e!1944 (and (bvsge (select (arr!107 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (bvslt (bvsub jz!53 i!252) #b00000000000000000000000000000000)))))

(declare-fun b!4055 () Bool)

(declare-fun e!1948 () Bool)

(assert (=> b!4055 (= e!1948 e!1944)))

(declare-fun res!3141 () Bool)

(assert (=> b!4055 (=> (not res!3141) (not e!1944))))

(declare-fun lt!2588 () (_ FloatingPoint 11 53))

(declare-fun lt!2587 () tuple4!146)

(assert (=> b!4055 (= res!3141 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2588) (fp.lt lt!2588 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!107 (_2!128 lt!2587)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4055 (= lt!2588 (fp.sub roundNearestTiesToEven (_4!73 lt!2587) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!73 lt!2587) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!73 lt!2587) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!73 lt!2587) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!73 lt!2587) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4055 (= lt!2587 e!1946)))

(declare-fun c!662 () Bool)

(assert (=> b!4055 (= c!662 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4055 (= lt!2585 (select (arr!108 q!85) jz!53))))

(assert (=> b!4055 (= lt!2586 (array!243 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!3140 () Bool)

(assert (=> start!889 (=> (not res!3140) (not e!1948))))

(assert (=> start!889 (= res!3140 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!889 e!1948))

(assert (=> start!889 true))

(declare-fun array_inv!57 (array!242) Bool)

(assert (=> start!889 (array_inv!57 iq!165)))

(declare-fun array_inv!58 (array!244) Bool)

(assert (=> start!889 (array_inv!58 q!85)))

(declare-fun b!4052 () Bool)

(declare-fun res!3142 () Bool)

(assert (=> b!4052 (=> (not res!3142) (not e!1948))))

(declare-fun qInv!0 (array!244) Bool)

(assert (=> b!4052 (= res!3142 (qInv!0 q!85))))

(assert (= (and start!889 res!3140) b!4052))

(assert (= (and b!4052 res!3142) b!4055))

(assert (= (and b!4055 c!662) b!4051))

(assert (= (and b!4055 (not c!662)) b!4050))

(assert (= (and b!4055 res!3141) b!4053))

(assert (= (and b!4053 res!3139) b!4054))

(declare-fun m!6217 () Bool)

(assert (=> b!4053 m!6217))

(declare-fun m!6219 () Bool)

(assert (=> start!889 m!6219))

(declare-fun m!6221 () Bool)

(assert (=> start!889 m!6221))

(declare-fun m!6223 () Bool)

(assert (=> b!4051 m!6223))

(declare-fun m!6225 () Bool)

(assert (=> b!4054 m!6225))

(declare-fun m!6227 () Bool)

(assert (=> b!4055 m!6227))

(declare-fun m!6229 () Bool)

(assert (=> b!4055 m!6229))

(declare-fun m!6231 () Bool)

(assert (=> b!4052 m!6231))

(check-sat (not b!4052) (not b!4053) (not start!889) (not b!4051))
(check-sat)
