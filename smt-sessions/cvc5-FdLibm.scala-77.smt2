; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!693 () Bool)

(assert start!693)

(declare-datatypes ((Unit!133 0))(
  ( (Unit!134) )
))
(declare-datatypes ((array!99 0))(
  ( (array!100 (arr!43 (Array (_ BitVec 32) (_ BitVec 32))) (size!43 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!48 0))(
  ( (tuple4!49 (_1!68 Unit!133) (_2!68 array!99) (_3!56 (_ BitVec 32)) (_4!24 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1069 () tuple4!48)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1399 () array!99)

(declare-fun lt!1401 () (_ FloatingPoint 11 53))

(declare-fun b!2272 () Bool)

(declare-fun Unit!135 () Unit!133)

(assert (=> b!2272 (= e!1069 (tuple4!49 Unit!135 lt!1399 jz!42 lt!1401))))

(declare-datatypes ((array!101 0))(
  ( (array!102 (arr!44 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!44 (_ BitVec 32))) )
))
(declare-fun q!70 () array!101)

(declare-fun b!2271 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!101 array!99 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!48)

(assert (=> b!2271 (= e!1069 (computeModuloWhile!0 jz!42 q!70 lt!1399 jz!42 lt!1401))))

(declare-fun b!2269 () Bool)

(declare-fun res!1959 () Bool)

(declare-fun e!1071 () Bool)

(assert (=> b!2269 (=> (not res!1959) (not e!1071))))

(declare-fun qInv!0 (array!101) Bool)

(assert (=> b!2269 (= res!1959 (qInv!0 q!70))))

(declare-fun b!2270 () Bool)

(declare-fun lt!1402 () (_ FloatingPoint 11 53))

(declare-fun lt!1400 () tuple4!48)

(assert (=> b!2270 (= e!1071 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1402) (fp.lt lt!1402 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!43 (_2!68 lt!1400)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (fp.isNaN lt!1402)))))

(assert (=> b!2270 (= lt!1402 (fp.sub roundNearestTiesToEven (_4!24 lt!1400) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!24 lt!1400) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!24 lt!1400) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!24 lt!1400) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!24 lt!1400) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2270 (= lt!1400 e!1069)))

(declare-fun c!362 () Bool)

(assert (=> b!2270 (= c!362 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2270 (= lt!1401 (select (arr!44 q!70) jz!42))))

(assert (=> b!2270 (= lt!1399 (array!100 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1958 () Bool)

(assert (=> start!693 (=> (not res!1958) (not e!1071))))

(assert (=> start!693 (= res!1958 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!693 e!1071))

(assert (=> start!693 true))

(declare-fun array_inv!18 (array!101) Bool)

(assert (=> start!693 (array_inv!18 q!70)))

(assert (= (and start!693 res!1958) b!2269))

(assert (= (and b!2269 res!1959) b!2270))

(assert (= (and b!2270 c!362) b!2271))

(assert (= (and b!2270 (not c!362)) b!2272))

(declare-fun m!4453 () Bool)

(assert (=> b!2271 m!4453))

(declare-fun m!4455 () Bool)

(assert (=> b!2269 m!4455))

(declare-fun m!4457 () Bool)

(assert (=> b!2270 m!4457))

(declare-fun m!4459 () Bool)

(assert (=> b!2270 m!4459))

(declare-fun m!4461 () Bool)

(assert (=> start!693 m!4461))

(push 1)

(assert (not start!693))

(assert (not b!2271))

(assert (not b!2269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

