; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!797 () Bool)

(assert start!797)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!186 0))(
  ( (array!187 (arr!83 (Array (_ BitVec 32) (_ BitVec 32))) (size!83 (_ BitVec 32))) )
))
(declare-fun lt!2148 () array!186)

(declare-fun b!3211 () Bool)

(declare-fun lt!2146 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!246 0))(
  ( (Unit!247) )
))
(declare-datatypes ((tuple4!112 0))(
  ( (tuple4!113 (_1!106 Unit!246) (_2!106 array!186) (_3!94 (_ BitVec 32)) (_4!56 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1572 () tuple4!112)

(declare-fun Unit!248 () Unit!246)

(assert (=> b!3211 (= e!1572 (tuple4!113 Unit!248 lt!2148 jz!42 lt!2146))))

(declare-datatypes ((array!188 0))(
  ( (array!189 (arr!84 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!84 (_ BitVec 32))) )
))
(declare-fun q!70 () array!188)

(declare-fun b!3212 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!188 array!186 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!112)

(assert (=> b!3212 (= e!1572 (computeModuloWhile!0 jz!42 q!70 lt!2148 jz!42 lt!2146))))

(declare-fun b!3213 () Bool)

(declare-datatypes ((tuple3!76 0))(
  ( (tuple3!77 (_1!107 Unit!246) (_2!107 array!186) (_3!95 (_ BitVec 32))) )
))
(declare-fun e!1576 () tuple3!76)

(declare-fun lt!2143 () tuple4!112)

(declare-fun lt!2151 () (_ BitVec 32))

(declare-fun Unit!249 () Unit!246)

(assert (=> b!3213 (= e!1576 (tuple3!77 Unit!249 (_2!106 lt!2143) lt!2151))))

(declare-fun b!3214 () Bool)

(declare-fun e!1575 () Bool)

(declare-fun e!1573 () Bool)

(assert (=> b!3214 (= e!1575 e!1573)))

(declare-fun res!2524 () Bool)

(assert (=> b!3214 (=> (not res!2524) (not e!1573))))

(declare-fun lt!2150 () (_ FloatingPoint 11 53))

(assert (=> b!3214 (= res!2524 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2150) (fp.lt lt!2150 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!3214 (= lt!2150 (fp.sub roundNearestTiesToEven (_4!56 lt!2143) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!56 lt!2143) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!56 lt!2143) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!56 lt!2143) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!56 lt!2143) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3214 (= lt!2143 e!1572)))

(declare-fun c!553 () Bool)

(assert (=> b!3214 (= c!553 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!3214 (= lt!2146 (select (arr!84 q!70) jz!42))))

(assert (=> b!3214 (= lt!2148 (array!187 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!2523 () Bool)

(assert (=> start!797 (=> (not res!2523) (not e!1575))))

(assert (=> start!797 (= res!2523 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!797 e!1575))

(assert (=> start!797 true))

(declare-fun array_inv!38 (array!188) Bool)

(assert (=> start!797 (array_inv!38 q!70)))

(declare-fun b!3215 () Bool)

(declare-fun lt!2145 () (_ BitVec 32))

(declare-datatypes ((tuple4!114 0))(
  ( (tuple4!115 (_1!108 Unit!246) (_2!108 (_ BitVec 32)) (_3!96 array!186) (_4!57 (_ BitVec 32))) )
))
(declare-fun e!1577 () tuple4!114)

(declare-fun Unit!250 () Unit!246)

(assert (=> b!3215 (= e!1577 (tuple4!115 Unit!250 lt!2145 (_2!106 lt!2143) lt!2151))))

(declare-fun lt!2149 () (_ BitVec 32))

(declare-fun b!3216 () Bool)

(declare-fun lt!2147 () tuple4!114)

(declare-fun Unit!251 () Unit!246)

(assert (=> b!3216 (= e!1576 (tuple3!77 Unit!251 (array!187 (store (arr!83 (_3!96 lt!2147)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!57 lt!2147) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!2149) (bvsub #b00000000111111111111111111111111 lt!2149))) (size!83 (_3!96 lt!2147))) (_4!57 lt!2147)))))

(assert (=> b!3216 (= lt!2145 #b00000000000000000000000000000000)))

(declare-fun c!552 () Bool)

(assert (=> b!3216 (= c!552 (bvslt lt!2145 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!3216 (= lt!2147 e!1577)))

(assert (=> b!3216 (= lt!2149 (select (arr!83 (_3!96 lt!2147)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!3217 () Bool)

(declare-fun res!2522 () Bool)

(assert (=> b!3217 (=> (not res!2522) (not e!1575))))

(declare-fun qInv!0 (array!188) Bool)

(assert (=> b!3217 (= res!2522 (qInv!0 q!70))))

(declare-fun b!3218 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!188 (_ BitVec 32) array!186 (_ BitVec 32)) tuple4!114)

(assert (=> b!3218 (= e!1577 (computeModuloWhile!1 jz!42 q!70 lt!2145 (_2!106 lt!2143) lt!2151))))

(declare-fun b!3219 () Bool)

(declare-fun lt!2144 () tuple3!76)

(assert (=> b!3219 (= e!1573 false)))

(assert (=> b!3219 (= lt!2144 e!1576)))

(declare-fun c!551 () Bool)

(assert (=> b!3219 (= c!551 (bvsge (select (arr!83 (_2!106 lt!2143)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!3219 (= lt!2151 #b00000000000000000000000000000000)))

(assert (= (and start!797 res!2523) b!3217))

(assert (= (and b!3217 res!2522) b!3214))

(assert (= (and b!3214 c!553) b!3212))

(assert (= (and b!3214 (not c!553)) b!3211))

(assert (= (and b!3214 res!2524) b!3219))

(assert (= (and b!3219 c!551) b!3216))

(assert (= (and b!3219 (not c!551)) b!3213))

(assert (= (and b!3216 c!552) b!3218))

(assert (= (and b!3216 (not c!552)) b!3215))

(declare-fun m!5219 () Bool)

(assert (=> b!3214 m!5219))

(declare-fun m!5221 () Bool)

(assert (=> b!3218 m!5221))

(declare-fun m!5223 () Bool)

(assert (=> b!3216 m!5223))

(declare-fun m!5225 () Bool)

(assert (=> b!3216 m!5225))

(declare-fun m!5227 () Bool)

(assert (=> b!3219 m!5227))

(declare-fun m!5229 () Bool)

(assert (=> b!3219 m!5229))

(declare-fun m!5231 () Bool)

(assert (=> start!797 m!5231))

(declare-fun m!5233 () Bool)

(assert (=> b!3217 m!5233))

(declare-fun m!5235 () Bool)

(assert (=> b!3212 m!5235))

(push 1)

(assert (not b!3217))

(assert (not b!3212))

(assert (not b!3218))

(assert (not start!797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

