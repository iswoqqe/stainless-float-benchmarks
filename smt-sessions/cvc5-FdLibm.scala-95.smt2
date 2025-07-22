; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!785 () Bool)

(assert start!785)

(declare-fun b!3106 () Bool)

(declare-fun e!1512 () Bool)

(declare-fun e!1517 () Bool)

(assert (=> b!3106 (= e!1512 e!1517)))

(declare-fun res!2473 () Bool)

(assert (=> b!3106 (=> (not res!2473) (not e!1517))))

(declare-fun lt!2049 () (_ FloatingPoint 11 53))

(assert (=> b!3106 (= res!2473 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2049) (fp.lt lt!2049 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!231 0))(
  ( (Unit!232) )
))
(declare-datatypes ((array!177 0))(
  ( (array!178 (arr!79 (Array (_ BitVec 32) (_ BitVec 32))) (size!79 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!104 0))(
  ( (tuple4!105 (_1!100 Unit!231) (_2!100 array!177) (_3!88 (_ BitVec 32)) (_4!52 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2048 () tuple4!104)

(assert (=> b!3106 (= lt!2049 (fp.sub roundNearestTiesToEven (_4!52 lt!2048) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!52 lt!2048) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!52 lt!2048) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!52 lt!2048) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!52 lt!2048) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1516 () tuple4!104)

(assert (=> b!3106 (= lt!2048 e!1516)))

(declare-fun c!526 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!3106 (= c!526 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!2045 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!179 0))(
  ( (array!180 (arr!80 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!80 (_ BitVec 32))) )
))
(declare-fun q!70 () array!179)

(assert (=> b!3106 (= lt!2045 (select (arr!80 q!70) jz!42))))

(declare-fun lt!2051 () array!177)

(assert (=> b!3106 (= lt!2051 (array!178 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun lt!2044 () Bool)

(declare-datatypes ((tuple3!72 0))(
  ( (tuple3!73 (_1!101 Unit!231) (_2!101 array!177) (_3!89 (_ BitVec 32))) )
))
(declare-fun lt!2047 () tuple3!72)

(declare-fun b!3107 () Bool)

(assert (=> b!3107 (= e!1517 (and (bvsle #b00000000000000000000000000000000 (select (arr!79 (_2!101 lt!2047)) (bvsub jz!42 #b00000000000000000000000000000001))) (bvsle (select (arr!79 (_2!101 lt!2047)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) lt!2044 (= (_3!89 lt!2047) #b00000000000000000000000000000000) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun e!1513 () tuple3!72)

(assert (=> b!3107 (= lt!2047 e!1513)))

(declare-fun c!525 () Bool)

(assert (=> b!3107 (= c!525 lt!2044)))

(declare-fun lt!2046 () (_ BitVec 32))

(assert (=> b!3107 (= lt!2046 #b00000000000000000000000000000000)))

(assert (=> b!3107 (= lt!2044 (bvsge (select (arr!79 (_2!100 lt!2048)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun res!2472 () Bool)

(assert (=> start!785 (=> (not res!2472) (not e!1512))))

(assert (=> start!785 (= res!2472 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!785 e!1512))

(assert (=> start!785 true))

(declare-fun array_inv!36 (array!179) Bool)

(assert (=> start!785 (array_inv!36 q!70)))

(declare-fun b!3108 () Bool)

(declare-fun res!2471 () Bool)

(assert (=> b!3108 (=> (not res!2471) (not e!1512))))

(declare-fun qInv!0 (array!179) Bool)

(assert (=> b!3108 (= res!2471 (qInv!0 q!70))))

(declare-fun b!3109 () Bool)

(declare-fun Unit!233 () Unit!231)

(assert (=> b!3109 (= e!1513 (tuple3!73 Unit!233 (_2!100 lt!2048) lt!2046))))

(declare-fun b!3110 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!179 array!177 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!104)

(assert (=> b!3110 (= e!1516 (computeModuloWhile!0 jz!42 q!70 lt!2051 jz!42 lt!2045))))

(declare-fun b!3111 () Bool)

(declare-fun Unit!234 () Unit!231)

(assert (=> b!3111 (= e!1516 (tuple4!105 Unit!234 lt!2051 jz!42 lt!2045))))

(declare-fun b!3112 () Bool)

(declare-fun lt!2052 () (_ BitVec 32))

(declare-datatypes ((tuple4!106 0))(
  ( (tuple4!107 (_1!102 Unit!231) (_2!102 (_ BitVec 32)) (_3!90 array!177) (_4!53 (_ BitVec 32))) )
))
(declare-fun lt!2043 () tuple4!106)

(declare-fun Unit!235 () Unit!231)

(assert (=> b!3112 (= e!1513 (tuple3!73 Unit!235 (array!178 (store (arr!79 (_3!90 lt!2043)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!53 lt!2043) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!2052) (bvsub #b00000000111111111111111111111111 lt!2052))) (size!79 (_3!90 lt!2043))) (_4!53 lt!2043)))))

(declare-fun lt!2050 () (_ BitVec 32))

(assert (=> b!3112 (= lt!2050 #b00000000000000000000000000000000)))

(declare-fun c!524 () Bool)

(assert (=> b!3112 (= c!524 (bvslt lt!2050 (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun e!1515 () tuple4!106)

(assert (=> b!3112 (= lt!2043 e!1515)))

(assert (=> b!3112 (= lt!2052 (select (arr!79 (_3!90 lt!2043)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!3113 () Bool)

(declare-fun Unit!236 () Unit!231)

(assert (=> b!3113 (= e!1515 (tuple4!107 Unit!236 lt!2050 (_2!100 lt!2048) lt!2046))))

(declare-fun b!3114 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!179 (_ BitVec 32) array!177 (_ BitVec 32)) tuple4!106)

(assert (=> b!3114 (= e!1515 (computeModuloWhile!1 jz!42 q!70 lt!2050 (_2!100 lt!2048) lt!2046))))

(assert (= (and start!785 res!2472) b!3108))

(assert (= (and b!3108 res!2471) b!3106))

(assert (= (and b!3106 c!526) b!3110))

(assert (= (and b!3106 (not c!526)) b!3111))

(assert (= (and b!3106 res!2473) b!3107))

(assert (= (and b!3107 c!525) b!3112))

(assert (= (and b!3107 (not c!525)) b!3109))

(assert (= (and b!3112 c!524) b!3114))

(assert (= (and b!3112 (not c!524)) b!3113))

(declare-fun m!5157 () Bool)

(assert (=> start!785 m!5157))

(declare-fun m!5159 () Bool)

(assert (=> b!3106 m!5159))

(declare-fun m!5161 () Bool)

(assert (=> b!3107 m!5161))

(declare-fun m!5163 () Bool)

(assert (=> b!3107 m!5163))

(declare-fun m!5165 () Bool)

(assert (=> b!3114 m!5165))

(declare-fun m!5167 () Bool)

(assert (=> b!3112 m!5167))

(declare-fun m!5169 () Bool)

(assert (=> b!3112 m!5169))

(declare-fun m!5171 () Bool)

(assert (=> b!3108 m!5171))

(declare-fun m!5173 () Bool)

(assert (=> b!3110 m!5173))

(push 1)

(assert (not start!785))

(assert (not b!3108))

(assert (not b!3114))

(assert (not b!3110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

