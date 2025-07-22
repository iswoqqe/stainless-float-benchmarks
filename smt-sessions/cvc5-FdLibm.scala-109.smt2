; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!891 () Bool)

(assert start!891)

(declare-datatypes ((array!242 0))(
  ( (array!243 (arr!107 (Array (_ BitVec 32) (_ BitVec 32))) (size!107 (_ BitVec 32))) )
))
(declare-fun lt!2617 () array!242)

(declare-fun b!4206 () Bool)

(declare-fun lt!2614 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!244 0))(
  ( (array!245 (arr!108 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!108 (_ BitVec 32))) )
))
(declare-fun q!85 () array!244)

(declare-datatypes ((Unit!322 0))(
  ( (Unit!323) )
))
(declare-datatypes ((tuple4!146 0))(
  ( (tuple4!147 (_1!128 Unit!322) (_2!128 array!242) (_3!116 (_ BitVec 32)) (_4!73 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1974 () tuple4!146)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!244 array!242 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!146)

(assert (=> b!4206 (= e!1974 (computeModuloWhile!0 jz!53 q!85 lt!2617 jz!53 lt!2614))))

(declare-fun b!4207 () Bool)

(declare-fun res!3285 () Bool)

(declare-fun e!1978 () Bool)

(assert (=> b!4207 (=> (not res!3285) (not e!1978))))

(declare-fun iq!165 () array!242)

(declare-fun iqInv!0 (array!242) Bool)

(assert (=> b!4207 (= res!3285 (iqInv!0 iq!165))))

(declare-fun b!4208 () Bool)

(declare-fun Unit!324 () Unit!322)

(assert (=> b!4208 (= e!1974 (tuple4!147 Unit!324 lt!2617 jz!53 lt!2614))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun b!4209 () Bool)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4209 (= e!1978 (and (bvsge (select (arr!107 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (bvslt (bvsub jz!53 i!252) #b00000000000000000000000000000000)))))

(declare-fun res!3283 () Bool)

(declare-fun e!1976 () Bool)

(assert (=> start!891 (=> (not res!3283) (not e!1976))))

(assert (=> start!891 (= res!3283 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!891 e!1976))

(assert (=> start!891 true))

(declare-fun array_inv!57 (array!242) Bool)

(assert (=> start!891 (array_inv!57 iq!165)))

(declare-fun array_inv!58 (array!244) Bool)

(assert (=> start!891 (array_inv!58 q!85)))

(declare-fun b!4210 () Bool)

(assert (=> b!4210 (= e!1976 e!1978)))

(declare-fun res!3286 () Bool)

(assert (=> b!4210 (=> (not res!3286) (not e!1978))))

(declare-fun lt!2615 () (_ FloatingPoint 11 53))

(declare-fun lt!2616 () tuple4!146)

(assert (=> b!4210 (= res!3286 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2615) (fp.lt lt!2615 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!107 (_2!128 lt!2616)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4210 (= lt!2615 (fp.sub roundNearestTiesToEven (_4!73 lt!2616) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!73 lt!2616) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!73 lt!2616) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!73 lt!2616) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!73 lt!2616) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4210 (= lt!2616 e!1974)))

(declare-fun c!668 () Bool)

(assert (=> b!4210 (= c!668 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4210 (= lt!2614 (select (arr!108 q!85) jz!53))))

(assert (=> b!4210 (= lt!2617 (array!243 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4211 () Bool)

(declare-fun res!3284 () Bool)

(assert (=> b!4211 (=> (not res!3284) (not e!1976))))

(declare-fun qInv!0 (array!244) Bool)

(assert (=> b!4211 (= res!3284 (qInv!0 q!85))))

(assert (= (and start!891 res!3283) b!4211))

(assert (= (and b!4211 res!3284) b!4210))

(assert (= (and b!4210 c!668) b!4206))

(assert (= (and b!4210 (not c!668)) b!4208))

(assert (= (and b!4210 res!3286) b!4207))

(assert (= (and b!4207 res!3285) b!4209))

(declare-fun m!7007 () Bool)

(assert (=> start!891 m!7007))

(declare-fun m!7009 () Bool)

(assert (=> start!891 m!7009))

(declare-fun m!7011 () Bool)

(assert (=> b!4207 m!7011))

(declare-fun m!7013 () Bool)

(assert (=> b!4206 m!7013))

(declare-fun m!7015 () Bool)

(assert (=> b!4211 m!7015))

(declare-fun m!7017 () Bool)

(assert (=> b!4210 m!7017))

(declare-fun m!7019 () Bool)

(assert (=> b!4210 m!7019))

(declare-fun m!7021 () Bool)

(assert (=> b!4209 m!7021))

(push 1)

(assert (not start!891))

(assert (not b!4206))

(assert (not b!4211))

(assert (not b!4207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

