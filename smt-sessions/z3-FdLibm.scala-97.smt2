; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!795 () Bool)

(assert start!795)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!186 0))(
  ( (array!187 (arr!83 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!83 (_ BitVec 32))) )
))
(declare-fun q!70 () array!186)

(declare-fun lt!2121 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!240 0))(
  ( (Unit!241) )
))
(declare-datatypes ((array!188 0))(
  ( (array!189 (arr!84 (Array (_ BitVec 32) (_ BitVec 32))) (size!84 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!112 0))(
  ( (tuple4!113 (_1!106 Unit!240) (_2!106 array!188) (_3!94 (_ BitVec 32)) (_4!56 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1543 () tuple4!112)

(declare-fun b!3055 () Bool)

(declare-fun lt!2122 () array!188)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!186 array!188 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!112)

(assert (=> b!3055 (= e!1543 (computeModuloWhile!0 jz!42 q!70 lt!2122 jz!42 lt!2121))))

(declare-datatypes ((tuple3!76 0))(
  ( (tuple3!77 (_1!107 Unit!240) (_2!107 array!188) (_3!95 (_ BitVec 32))) )
))
(declare-fun e!1544 () tuple3!76)

(declare-fun b!3056 () Bool)

(declare-fun lt!2115 () (_ BitVec 32))

(declare-datatypes ((tuple4!114 0))(
  ( (tuple4!115 (_1!108 Unit!240) (_2!108 (_ BitVec 32)) (_3!96 array!188) (_4!57 (_ BitVec 32))) )
))
(declare-fun lt!2118 () tuple4!114)

(declare-fun Unit!242 () Unit!240)

(assert (=> b!3056 (= e!1544 (tuple3!77 Unit!242 (array!189 (store (arr!84 (_3!96 lt!2118)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!57 lt!2118) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!2115) (bvsub #b00000000111111111111111111111111 lt!2115))) (size!84 (_3!96 lt!2118))) (_4!57 lt!2118)))))

(declare-fun lt!2114 () (_ BitVec 32))

(assert (=> b!3056 (= lt!2114 #b00000000000000000000000000000000)))

(declare-fun c!547 () Bool)

(assert (=> b!3056 (= c!547 (bvslt lt!2114 (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun e!1547 () tuple4!114)

(assert (=> b!3056 (= lt!2118 e!1547)))

(assert (=> b!3056 (= lt!2115 (select (arr!84 (_3!96 lt!2118)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun res!2379 () Bool)

(declare-fun e!1546 () Bool)

(assert (=> start!795 (=> (not res!2379) (not e!1546))))

(assert (=> start!795 (= res!2379 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!795 e!1546))

(assert (=> start!795 true))

(declare-fun array_inv!38 (array!186) Bool)

(assert (=> start!795 (array_inv!38 q!70)))

(declare-fun b!3057 () Bool)

(declare-fun e!1542 () Bool)

(declare-fun lt!2117 () tuple3!76)

(assert (=> b!3057 (= e!1542 false)))

(assert (=> b!3057 (= lt!2117 e!1544)))

(declare-fun c!545 () Bool)

(declare-fun lt!2119 () tuple4!112)

(assert (=> b!3057 (= c!545 (bvsge (select (arr!84 (_2!106 lt!2119)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun lt!2116 () (_ BitVec 32))

(assert (=> b!3057 (= lt!2116 #b00000000000000000000000000000000)))

(declare-fun b!3058 () Bool)

(declare-fun Unit!243 () Unit!240)

(assert (=> b!3058 (= e!1543 (tuple4!113 Unit!243 lt!2122 jz!42 lt!2121))))

(declare-fun b!3059 () Bool)

(declare-fun Unit!244 () Unit!240)

(assert (=> b!3059 (= e!1544 (tuple3!77 Unit!244 (_2!106 lt!2119) lt!2116))))

(declare-fun b!3060 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!186 (_ BitVec 32) array!188 (_ BitVec 32)) tuple4!114)

(assert (=> b!3060 (= e!1547 (computeModuloWhile!1 jz!42 q!70 lt!2114 (_2!106 lt!2119) lt!2116))))

(declare-fun b!3061 () Bool)

(assert (=> b!3061 (= e!1546 e!1542)))

(declare-fun res!2380 () Bool)

(assert (=> b!3061 (=> (not res!2380) (not e!1542))))

(declare-fun lt!2120 () (_ FloatingPoint 11 53))

(assert (=> b!3061 (= res!2380 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2120) (fp.lt lt!2120 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!3061 (= lt!2120 (fp.sub roundNearestTiesToEven (_4!56 lt!2119) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!56 lt!2119) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!56 lt!2119) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!56 lt!2119) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!56 lt!2119) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3061 (= lt!2119 e!1543)))

(declare-fun c!546 () Bool)

(assert (=> b!3061 (= c!546 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!3061 (= lt!2121 (select (arr!83 q!70) jz!42))))

(assert (=> b!3061 (= lt!2122 (array!189 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3062 () Bool)

(declare-fun Unit!245 () Unit!240)

(assert (=> b!3062 (= e!1547 (tuple4!115 Unit!245 lt!2114 (_2!106 lt!2119) lt!2116))))

(declare-fun b!3063 () Bool)

(declare-fun res!2378 () Bool)

(assert (=> b!3063 (=> (not res!2378) (not e!1546))))

(declare-fun qInv!0 (array!186) Bool)

(assert (=> b!3063 (= res!2378 (qInv!0 q!70))))

(assert (= (and start!795 res!2379) b!3063))

(assert (= (and b!3063 res!2378) b!3061))

(assert (= (and b!3061 c!546) b!3055))

(assert (= (and b!3061 (not c!546)) b!3058))

(assert (= (and b!3061 res!2380) b!3057))

(assert (= (and b!3057 c!545) b!3056))

(assert (= (and b!3057 (not c!545)) b!3059))

(assert (= (and b!3056 c!547) b!3060))

(assert (= (and b!3056 (not c!547)) b!3062))

(declare-fun m!4429 () Bool)

(assert (=> start!795 m!4429))

(declare-fun m!4431 () Bool)

(assert (=> b!3061 m!4431))

(declare-fun m!4433 () Bool)

(assert (=> b!3060 m!4433))

(declare-fun m!4435 () Bool)

(assert (=> b!3063 m!4435))

(declare-fun m!4437 () Bool)

(assert (=> b!3055 m!4437))

(declare-fun m!4439 () Bool)

(assert (=> b!3056 m!4439))

(declare-fun m!4441 () Bool)

(assert (=> b!3056 m!4441))

(declare-fun m!4443 () Bool)

(assert (=> b!3057 m!4443))

(declare-fun m!4445 () Bool)

(assert (=> b!3057 m!4445))

(check-sat (not start!795) (not b!3055) (not b!3060) (not b!3063))
(check-sat)
