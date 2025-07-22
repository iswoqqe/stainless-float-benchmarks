; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!701 () Bool)

(assert start!701)

(declare-fun b!2317 () Bool)

(declare-fun res!1982 () Bool)

(declare-fun e!1105 () Bool)

(assert (=> b!2317 (=> (not res!1982) (not e!1105))))

(declare-datatypes ((array!115 0))(
  ( (array!116 (arr!51 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!51 (_ BitVec 32))) )
))
(declare-fun q!70 () array!115)

(declare-fun qInv!0 (array!115) Bool)

(assert (=> b!2317 (= res!1982 (qInv!0 q!70))))

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun b!2318 () Bool)

(declare-fun lt!1450 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!145 0))(
  ( (Unit!146) )
))
(declare-datatypes ((array!117 0))(
  ( (array!118 (arr!52 (Array (_ BitVec 32) (_ BitVec 32))) (size!52 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!56 0))(
  ( (tuple4!57 (_1!72 Unit!145) (_2!72 array!117) (_3!60 (_ BitVec 32)) (_4!28 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1449 () tuple4!56)

(assert (=> b!2318 (= e!1105 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1450) (fp.lt lt!1450 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!52 (_2!72 lt!1449)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (fp.isNaN lt!1450)))))

(assert (=> b!2318 (= lt!1450 (fp.sub roundNearestTiesToEven (_4!28 lt!1449) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!28 lt!1449) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!28 lt!1449) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!28 lt!1449) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!28 lt!1449) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1107 () tuple4!56)

(assert (=> b!2318 (= lt!1449 e!1107)))

(declare-fun c!374 () Bool)

(assert (=> b!2318 (= c!374 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1448 () (_ FloatingPoint 11 53))

(assert (=> b!2318 (= lt!1448 (select (arr!51 q!70) jz!42))))

(declare-fun lt!1447 () array!117)

(assert (=> b!2318 (= lt!1447 (array!118 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2320 () Bool)

(declare-fun Unit!147 () Unit!145)

(assert (=> b!2320 (= e!1107 (tuple4!57 Unit!147 lt!1447 jz!42 lt!1448))))

(declare-fun b!2319 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!115 array!117 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!56)

(assert (=> b!2319 (= e!1107 (computeModuloWhile!0 jz!42 q!70 lt!1447 jz!42 lt!1448))))

(declare-fun res!1983 () Bool)

(assert (=> start!701 (=> (not res!1983) (not e!1105))))

(assert (=> start!701 (= res!1983 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!701 e!1105))

(assert (=> start!701 true))

(declare-fun array_inv!22 (array!115) Bool)

(assert (=> start!701 (array_inv!22 q!70)))

(assert (= (and start!701 res!1983) b!2317))

(assert (= (and b!2317 res!1982) b!2318))

(assert (= (and b!2318 c!374) b!2319))

(assert (= (and b!2318 (not c!374)) b!2320))

(declare-fun m!4493 () Bool)

(assert (=> b!2317 m!4493))

(declare-fun m!4495 () Bool)

(assert (=> b!2318 m!4495))

(declare-fun m!4497 () Bool)

(assert (=> b!2318 m!4497))

(declare-fun m!4499 () Bool)

(assert (=> b!2319 m!4499))

(declare-fun m!4501 () Bool)

(assert (=> start!701 m!4501))

(push 1)

(assert (not b!2317))

(assert (not start!701))

(assert (not b!2319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

