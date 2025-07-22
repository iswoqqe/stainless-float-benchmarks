; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!707 () Bool)

(assert start!707)

(declare-fun res!2000 () Bool)

(declare-fun e!1134 () Bool)

(assert (=> start!707 (=> (not res!2000) (not e!1134))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!707 (= res!2000 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!707 e!1134))

(assert (=> start!707 true))

(declare-datatypes ((array!127 0))(
  ( (array!128 (arr!57 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!57 (_ BitVec 32))) )
))
(declare-fun q!70 () array!127)

(declare-fun array_inv!25 (array!127) Bool)

(assert (=> start!707 (array_inv!25 q!70)))

(declare-datatypes ((Unit!154 0))(
  ( (Unit!155) )
))
(declare-datatypes ((array!129 0))(
  ( (array!130 (arr!58 (Array (_ BitVec 32) (_ BitVec 32))) (size!58 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!62 0))(
  ( (tuple4!63 (_1!75 Unit!154) (_2!75 array!129) (_3!63 (_ BitVec 32)) (_4!31 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1485 () tuple4!62)

(declare-fun b!2354 () Bool)

(declare-fun lt!1484 () (_ FloatingPoint 11 53))

(assert (=> b!2354 (= e!1134 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1484) (fp.lt lt!1484 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!58 (_2!75 lt!1485)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!2354 (= lt!1484 (fp.sub roundNearestTiesToEven (_4!31 lt!1485) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!31 lt!1485) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!31 lt!1485) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!31 lt!1485) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!31 lt!1485) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1132 () tuple4!62)

(assert (=> b!2354 (= lt!1485 e!1132)))

(declare-fun c!383 () Bool)

(assert (=> b!2354 (= c!383 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1486 () (_ FloatingPoint 11 53))

(assert (=> b!2354 (= lt!1486 (select (arr!57 q!70) jz!42))))

(declare-fun lt!1483 () array!129)

(assert (=> b!2354 (= lt!1483 (array!130 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2356 () Bool)

(declare-fun Unit!156 () Unit!154)

(assert (=> b!2356 (= e!1132 (tuple4!63 Unit!156 lt!1483 jz!42 lt!1486))))

(declare-fun b!2355 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!127 array!129 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!62)

(assert (=> b!2355 (= e!1132 (computeModuloWhile!0 jz!42 q!70 lt!1483 jz!42 lt!1486))))

(declare-fun b!2353 () Bool)

(declare-fun res!2001 () Bool)

(assert (=> b!2353 (=> (not res!2001) (not e!1134))))

(declare-fun qInv!0 (array!127) Bool)

(assert (=> b!2353 (= res!2001 (qInv!0 q!70))))

(assert (= (and start!707 res!2000) b!2353))

(assert (= (and b!2353 res!2001) b!2354))

(assert (= (and b!2354 c!383) b!2355))

(assert (= (and b!2354 (not c!383)) b!2356))

(declare-fun m!4523 () Bool)

(assert (=> start!707 m!4523))

(declare-fun m!4525 () Bool)

(assert (=> b!2354 m!4525))

(declare-fun m!4527 () Bool)

(assert (=> b!2354 m!4527))

(declare-fun m!4529 () Bool)

(assert (=> b!2355 m!4529))

(declare-fun m!4531 () Bool)

(assert (=> b!2353 m!4531))

(push 1)

(assert (not start!707))

(assert (not b!2355))

(assert (not b!2353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

