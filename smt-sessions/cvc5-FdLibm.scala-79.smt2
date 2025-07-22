; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!697 () Bool)

(assert start!697)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun e!1087 () Bool)

(declare-datatypes ((Unit!139 0))(
  ( (Unit!140) )
))
(declare-datatypes ((array!107 0))(
  ( (array!108 (arr!47 (Array (_ BitVec 32) (_ BitVec 32))) (size!47 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!52 0))(
  ( (tuple4!53 (_1!70 Unit!139) (_2!70 array!107) (_3!58 (_ BitVec 32)) (_4!26 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1423 () tuple4!52)

(declare-fun b!2294 () Bool)

(declare-fun lt!1425 () (_ FloatingPoint 11 53))

(assert (=> b!2294 (= e!1087 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1425) (fp.lt lt!1425 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!47 (_2!70 lt!1423)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1425)) (fp.gt lt!1425 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!1425 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (=> b!2294 (= lt!1425 (fp.sub roundNearestTiesToEven (_4!26 lt!1423) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!26 lt!1423) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!26 lt!1423) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!26 lt!1423) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!26 lt!1423) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1088 () tuple4!52)

(assert (=> b!2294 (= lt!1423 e!1088)))

(declare-fun c!368 () Bool)

(assert (=> b!2294 (= c!368 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1424 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!109 0))(
  ( (array!110 (arr!48 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!48 (_ BitVec 32))) )
))
(declare-fun q!70 () array!109)

(assert (=> b!2294 (= lt!1424 (select (arr!48 q!70) jz!42))))

(declare-fun lt!1426 () array!107)

(assert (=> b!2294 (= lt!1426 (array!108 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2293 () Bool)

(declare-fun res!1970 () Bool)

(assert (=> b!2293 (=> (not res!1970) (not e!1087))))

(declare-fun qInv!0 (array!109) Bool)

(assert (=> b!2293 (= res!1970 (qInv!0 q!70))))

(declare-fun b!2296 () Bool)

(declare-fun Unit!141 () Unit!139)

(assert (=> b!2296 (= e!1088 (tuple4!53 Unit!141 lt!1426 jz!42 lt!1424))))

(declare-fun b!2295 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!109 array!107 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!52)

(assert (=> b!2295 (= e!1088 (computeModuloWhile!0 jz!42 q!70 lt!1426 jz!42 lt!1424))))

(declare-fun res!1971 () Bool)

(assert (=> start!697 (=> (not res!1971) (not e!1087))))

(assert (=> start!697 (= res!1971 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!697 e!1087))

(assert (=> start!697 true))

(declare-fun array_inv!20 (array!109) Bool)

(assert (=> start!697 (array_inv!20 q!70)))

(assert (= (and start!697 res!1971) b!2293))

(assert (= (and b!2293 res!1970) b!2294))

(assert (= (and b!2294 c!368) b!2295))

(assert (= (and b!2294 (not c!368)) b!2296))

(declare-fun m!4473 () Bool)

(assert (=> b!2294 m!4473))

(declare-fun m!4475 () Bool)

(assert (=> b!2294 m!4475))

(declare-fun m!4477 () Bool)

(assert (=> b!2293 m!4477))

(declare-fun m!4479 () Bool)

(assert (=> b!2295 m!4479))

(declare-fun m!4481 () Bool)

(assert (=> start!697 m!4481))

(push 1)

(assert (not b!2293))

(assert (not start!697))

(assert (not b!2295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

