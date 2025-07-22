; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!703 () Bool)

(assert start!703)

(declare-fun lt!1460 () (_ FloatingPoint 11 53))

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((Unit!148 0))(
  ( (Unit!149) )
))
(declare-datatypes ((array!119 0))(
  ( (array!120 (arr!53 (Array (_ BitVec 32) (_ BitVec 32))) (size!53 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!58 0))(
  ( (tuple4!59 (_1!73 Unit!148) (_2!73 array!119) (_3!61 (_ BitVec 32)) (_4!29 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1114 () tuple4!58)

(declare-fun b!2332 () Bool)

(declare-fun lt!1461 () array!119)

(declare-fun Unit!150 () Unit!148)

(assert (=> b!2332 (= e!1114 (tuple4!59 Unit!150 lt!1461 jz!42 lt!1460))))

(declare-fun res!1988 () Bool)

(declare-fun e!1115 () Bool)

(assert (=> start!703 (=> (not res!1988) (not e!1115))))

(assert (=> start!703 (= res!1988 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!703 e!1115))

(assert (=> start!703 true))

(declare-datatypes ((array!121 0))(
  ( (array!122 (arr!54 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!54 (_ BitVec 32))) )
))
(declare-fun q!70 () array!121)

(declare-fun array_inv!23 (array!121) Bool)

(assert (=> start!703 (array_inv!23 q!70)))

(declare-fun b!2329 () Bool)

(declare-fun res!1989 () Bool)

(assert (=> b!2329 (=> (not res!1989) (not e!1115))))

(declare-fun qInv!0 (array!121) Bool)

(assert (=> b!2329 (= res!1989 (qInv!0 q!70))))

(declare-fun b!2330 () Bool)

(declare-fun lt!1459 () (_ FloatingPoint 11 53))

(declare-fun lt!1462 () tuple4!58)

(assert (=> b!2330 (= e!1115 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1459) (fp.lt lt!1459 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!53 (_2!73 lt!1462)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1459)) (not (fp.gt lt!1459 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (=> b!2330 (= lt!1459 (fp.sub roundNearestTiesToEven (_4!29 lt!1462) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!29 lt!1462) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!29 lt!1462) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!29 lt!1462) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!29 lt!1462) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2330 (= lt!1462 e!1114)))

(declare-fun c!377 () Bool)

(assert (=> b!2330 (= c!377 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2330 (= lt!1460 (select (arr!54 q!70) jz!42))))

(assert (=> b!2330 (= lt!1461 (array!120 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2331 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!121 array!119 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!58)

(assert (=> b!2331 (= e!1114 (computeModuloWhile!0 jz!42 q!70 lt!1461 jz!42 lt!1460))))

(assert (= (and start!703 res!1988) b!2329))

(assert (= (and b!2329 res!1989) b!2330))

(assert (= (and b!2330 c!377) b!2331))

(assert (= (and b!2330 (not c!377)) b!2332))

(declare-fun m!4503 () Bool)

(assert (=> start!703 m!4503))

(declare-fun m!4505 () Bool)

(assert (=> b!2329 m!4505))

(declare-fun m!4507 () Bool)

(assert (=> b!2330 m!4507))

(declare-fun m!4509 () Bool)

(assert (=> b!2330 m!4509))

(declare-fun m!4511 () Bool)

(assert (=> b!2331 m!4511))

(push 1)

(assert (not b!2331))

(assert (not b!2329))

(assert (not start!703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

