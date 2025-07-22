; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!595 () Bool)

(assert start!595)

(declare-fun res!1274 () Bool)

(declare-fun e!725 () Bool)

(assert (=> start!595 (=> (not res!1274) (not e!725))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!595 (= res!1274 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!595 e!725))

(assert (=> start!595 true))

(declare-datatypes ((array!50 0))(
  ( (array!51 (arr!23 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!23 (_ BitVec 32))) )
))
(declare-fun q!70 () array!50)

(declare-fun array_inv!7 (array!50) Bool)

(assert (=> start!595 (array_inv!7 q!70)))

(declare-fun b!1381 () Bool)

(declare-datatypes ((array!52 0))(
  ( (array!53 (arr!24 (Array (_ BitVec 32) (_ BitVec 32))) (size!24 (_ BitVec 32))) )
))
(declare-fun lt!980 () array!52)

(declare-datatypes ((Unit!67 0))(
  ( (Unit!68) )
))
(declare-datatypes ((tuple4!24 0))(
  ( (tuple4!25 (_1!53 Unit!67) (_2!53 array!52) (_3!41 (_ BitVec 32)) (_4!12 (_ FloatingPoint 11 53))) )
))
(declare-fun e!724 () tuple4!24)

(declare-fun lt!979 () (_ FloatingPoint 11 53))

(declare-fun Unit!69 () Unit!67)

(assert (=> b!1381 (= e!724 (tuple4!25 Unit!69 lt!980 jz!42 lt!979))))

(declare-fun b!1378 () Bool)

(declare-fun res!1273 () Bool)

(assert (=> b!1378 (=> (not res!1273) (not e!725))))

(declare-fun qInv!0 (array!50) Bool)

(assert (=> b!1378 (= res!1273 (qInv!0 q!70))))

(declare-fun b!1380 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!50 array!52 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!24)

(assert (=> b!1380 (= e!724 (computeModuloWhile!0 jz!42 q!70 lt!980 jz!42 lt!979))))

(declare-fun b!1379 () Bool)

(declare-fun lt!977 () (_ FloatingPoint 11 53))

(assert (=> b!1379 (= e!725 (or (not (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!977)) (not (fp.lt lt!977 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!978 () tuple4!24)

(assert (=> b!1379 (= lt!977 (fp.sub roundNearestTiesToEven (_4!12 lt!978) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!12 lt!978) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!12 lt!978) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!12 lt!978) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!12 lt!978) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1379 (= lt!978 e!724)))

(declare-fun c!259 () Bool)

(assert (=> b!1379 (= c!259 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1379 (= lt!979 (select (arr!23 q!70) jz!42))))

(assert (=> b!1379 (= lt!980 (array!53 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!595 res!1274) b!1378))

(assert (= (and b!1378 res!1273) b!1379))

(assert (= (and b!1379 c!259) b!1380))

(assert (= (and b!1379 (not c!259)) b!1381))

(declare-fun m!2497 () Bool)

(assert (=> start!595 m!2497))

(declare-fun m!2499 () Bool)

(assert (=> b!1378 m!2499))

(declare-fun m!2501 () Bool)

(assert (=> b!1380 m!2501))

(declare-fun m!2503 () Bool)

(assert (=> b!1379 m!2503))

(push 1)

(assert (not start!595))

(assert (not b!1380))

(assert (not b!1378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1252 () Bool)

(assert (=> d!1252 (= (array_inv!7 q!70) (bvsge (size!23 q!70) #b00000000000000000000000000000000))))

(assert (=> start!595 d!1252))

(declare-fun b!1394 () Bool)

(declare-fun res!1285 () Bool)

(declare-fun e!733 () Bool)

(assert (=> b!1394 (=> (not res!1285) (not e!733))))

(declare-fun lt!995 () tuple4!24)

(declare-fun iqInv!0 (array!52) Bool)

(assert (=> b!1394 (= res!1285 (iqInv!0 (_2!53 lt!995)))))

(declare-fun lt!994 () array!52)

(declare-fun lt!992 () (_ FloatingPoint 11 53))

(declare-fun e!735 () tuple4!24)

(declare-fun b!1395 () Bool)

(declare-fun lt!991 () (_ BitVec 32))

(assert (=> b!1395 (= e!735 (computeModuloWhile!0 jz!42 q!70 lt!994 lt!991 lt!992))))

(declare-fun b!1396 () Bool)

(assert (=> b!1396 (= e!733 (bvsle (_3!41 lt!995) #b00000000000000000000000000000000))))

(declare-fun b!1397 () Bool)

(declare-fun Unit!70 () Unit!67)

(assert (=> b!1397 (= e!735 (tuple4!25 Unit!70 lt!994 lt!991 lt!992))))

(declare-fun d!1254 () Bool)

(assert (=> d!1254 e!733))

(declare-fun res!1286 () Bool)

(assert (=> d!1254 (=> (not res!1286) (not e!733))))

(assert (=> d!1254 (= res!1286 (and true true (bvsle #b00000000000000000000000000000000 (_3!41 lt!995)) (bvsle (_3!41 lt!995) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!12 lt!995)) (fp.leq (_4!12 lt!995) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1254 (= lt!995 e!735)))

(declare-fun c!262 () Bool)

(assert (=> d!1254 (= c!262 (bvsgt lt!991 #b00000000000000000000000000000000))))

(assert (=> d!1254 (= lt!991 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!993 () (_ FloatingPoint 11 53))

(assert (=> d!1254 (= lt!992 (fp.add roundNearestTiesToEven (select (arr!23 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!993))))

(assert (=> d!1254 (= lt!994 (array!53 (store (arr!24 lt!980) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!979 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!993))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!979 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!993)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!979 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!993)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!979 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!993))))))) (size!24 lt!980)))))

(assert (=> d!1254 (= lt!993 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!979)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!979) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!979) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!979)))))))))

(declare-fun e!734 () Bool)

(assert (=> d!1254 e!734))

(declare-fun res!1284 () Bool)

(assert (=> d!1254 (=> (not res!1284) (not e!734))))

(assert (=> d!1254 (= res!1284 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!979) (fp.leq lt!979 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1254 (= (computeModuloWhile!0 jz!42 q!70 lt!980 jz!42 lt!979) lt!995)))

(declare-fun b!1398 () Bool)

(assert (=> b!1398 (= e!734 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!1399 () Bool)

(declare-fun res!1283 () Bool)

(assert (=> b!1399 (=> (not res!1283) (not e!734))))

(assert (=> b!1399 (= res!1283 (iqInv!0 lt!980))))

(assert (= (and d!1254 res!1284) b!1399))

(assert (= (and b!1399 res!1283) b!1398))

(assert (= (and d!1254 c!262) b!1395))

(assert (= (and d!1254 (not c!262)) b!1397))

(assert (= (and d!1254 res!1286) b!1394))

(assert (= (and b!1394 res!1285) b!1396))

(declare-fun m!2505 () Bool)

(assert (=> b!1394 m!2505))

(declare-fun m!2507 () Bool)

(assert (=> b!1395 m!2507))

(declare-fun m!2509 () Bool)

(assert (=> d!1254 m!2509))

(declare-fun m!2511 () Bool)

(assert (=> d!1254 m!2511))

(declare-fun m!2513 () Bool)

(assert (=> b!1399 m!2513))

(assert (=> b!1380 d!1254))

(declare-fun d!1256 () Bool)

(declare-fun res!1289 () Bool)

(declare-fun e!738 () Bool)

(assert (=> d!1256 (=> (not res!1289) (not e!738))))

(assert (=> d!1256 (= res!1289 (= (size!23 q!70) #b00000000000000000000000000010100))))

(assert (=> d!1256 (= (qInv!0 q!70) e!738)))

(declare-fun b!1402 () Bool)

(declare-fun lambda!46 () Int)

(declare-fun all20!0 (array!50 Int) Bool)

(assert (=> b!1402 (= e!738 (all20!0 q!70 lambda!46))))

(assert (= (and d!1256 res!1289) b!1402))

(declare-fun m!2515 () Bool)

(assert (=> b!1402 m!2515))

(assert (=> b!1378 d!1256))

(push 1)

(assert (not b!1395))

(assert (not b!1399))

(assert (not b!1402))

(assert (not b!1394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

