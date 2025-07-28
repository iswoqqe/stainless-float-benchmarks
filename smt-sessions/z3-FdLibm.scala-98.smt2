; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!797 () Bool)

(assert start!797)

(declare-datatypes ((Unit!246 0))(
  ( (Unit!247) )
))
(declare-datatypes ((array!190 0))(
  ( (array!191 (arr!85 (Array (_ BitVec 32) (_ BitVec 32))) (size!85 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!116 0))(
  ( (tuple4!117 (_1!109 Unit!246) (_2!109 array!190) (_3!97 (_ BitVec 32)) (_4!58 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2146 () tuple4!116)

(declare-fun lt!2144 () (_ BitVec 32))

(declare-fun b!3086 () Bool)

(declare-fun lt!2150 () (_ BitVec 32))

(declare-datatypes ((tuple4!118 0))(
  ( (tuple4!119 (_1!110 Unit!246) (_2!110 (_ BitVec 32)) (_3!98 array!190) (_4!59 (_ BitVec 32))) )
))
(declare-fun e!1568 () tuple4!118)

(declare-fun Unit!248 () Unit!246)

(assert (=> b!3086 (= e!1568 (tuple4!119 Unit!248 lt!2150 (_2!109 lt!2146) lt!2144))))

(declare-fun b!3087 () Bool)

(declare-fun res!2395 () Bool)

(declare-fun e!1566 () Bool)

(assert (=> b!3087 (=> (not res!2395) (not e!1566))))

(declare-datatypes ((array!192 0))(
  ( (array!193 (arr!86 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!86 (_ BitVec 32))) )
))
(declare-fun q!70 () array!192)

(declare-fun qInv!0 (array!192) Bool)

(assert (=> b!3087 (= res!2395 (qInv!0 q!70))))

(declare-fun b!3088 () Bool)

(declare-fun e!1564 () Bool)

(declare-fun e!1562 () Bool)

(assert (=> b!3088 (= e!1564 e!1562)))

(declare-fun res!2393 () Bool)

(assert (=> b!3088 (=> (not res!2393) (not e!1562))))

(declare-datatypes ((tuple3!78 0))(
  ( (tuple3!79 (_1!111 Unit!246) (_2!111 array!190) (_3!99 (_ BitVec 32))) )
))
(declare-fun lt!2143 () tuple3!78)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!3088 (= res!2393 (and (bvsle #b00000000000000000000000000000000 (select (arr!85 (_2!111 lt!2143)) (bvsub jz!42 #b00000000000000000000000000000001))) (bvsle (select (arr!85 (_2!111 lt!2143)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000)))))

(declare-fun e!1565 () tuple3!78)

(assert (=> b!3088 (= lt!2143 e!1565)))

(declare-fun c!555 () Bool)

(declare-fun lt!2152 () Bool)

(assert (=> b!3088 (= c!555 lt!2152)))

(assert (=> b!3088 (= lt!2144 #b00000000000000000000000000000000)))

(assert (=> b!3088 (= lt!2152 (bvsge (select (arr!85 (_2!109 lt!2146)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun b!3089 () Bool)

(declare-fun Unit!249 () Unit!246)

(assert (=> b!3089 (= e!1565 (tuple3!79 Unit!249 (_2!109 lt!2146) lt!2144))))

(declare-fun b!3090 () Bool)

(assert (=> b!3090 (= e!1562 (and (or (not lt!2152) (not (= (_3!99 lt!2143) #b00000000000000000000000000000000)) (not (= (select (arr!85 (_2!111 lt!2143)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!2149 () array!190)

(declare-fun lt!2147 () (_ FloatingPoint 11 53))

(declare-fun b!3091 () Bool)

(declare-fun e!1563 () tuple4!116)

(declare-fun Unit!250 () Unit!246)

(assert (=> b!3091 (= e!1563 (tuple4!117 Unit!250 lt!2149 jz!42 lt!2147))))

(declare-fun b!3092 () Bool)

(declare-fun res!2392 () Bool)

(assert (=> b!3092 (=> (not res!2392) (not e!1562))))

(declare-fun qqInv!0 (array!192) Bool)

(assert (=> b!3092 (= res!2392 (qqInv!0 (array!193 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100)))))

(declare-fun b!3093 () Bool)

(declare-fun lt!2145 () tuple4!118)

(declare-fun lt!2148 () (_ BitVec 32))

(declare-fun Unit!251 () Unit!246)

(assert (=> b!3093 (= e!1565 (tuple3!79 Unit!251 (array!191 (store (arr!85 (_3!98 lt!2145)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!59 lt!2145) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!2148) (bvsub #b00000000111111111111111111111111 lt!2148))) (size!85 (_3!98 lt!2145))) (_4!59 lt!2145)))))

(assert (=> b!3093 (= lt!2150 #b00000000000000000000000000000000)))

(declare-fun c!556 () Bool)

(assert (=> b!3093 (= c!556 (bvslt lt!2150 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!3093 (= lt!2145 e!1568)))

(assert (=> b!3093 (= lt!2148 (select (arr!85 (_3!98 lt!2145)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!3094 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!192 array!190 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!116)

(assert (=> b!3094 (= e!1563 (computeModuloWhile!0 jz!42 q!70 lt!2149 jz!42 lt!2147))))

(declare-fun b!3095 () Bool)

(assert (=> b!3095 (= e!1566 e!1564)))

(declare-fun res!2394 () Bool)

(assert (=> b!3095 (=> (not res!2394) (not e!1564))))

(declare-fun lt!2151 () (_ FloatingPoint 11 53))

(assert (=> b!3095 (= res!2394 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2151) (fp.lt lt!2151 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!3095 (= lt!2151 (fp.sub roundNearestTiesToEven (_4!58 lt!2146) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!58 lt!2146) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!58 lt!2146) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!58 lt!2146) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!58 lt!2146) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3095 (= lt!2146 e!1563)))

(declare-fun c!554 () Bool)

(assert (=> b!3095 (= c!554 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!3095 (= lt!2147 (select (arr!86 q!70) jz!42))))

(assert (=> b!3095 (= lt!2149 (array!191 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3096 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!192 (_ BitVec 32) array!190 (_ BitVec 32)) tuple4!118)

(assert (=> b!3096 (= e!1568 (computeModuloWhile!1 jz!42 q!70 lt!2150 (_2!109 lt!2146) lt!2144))))

(declare-fun res!2391 () Bool)

(assert (=> start!797 (=> (not res!2391) (not e!1566))))

(assert (=> start!797 (= res!2391 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!797 e!1566))

(assert (=> start!797 true))

(declare-fun array_inv!39 (array!192) Bool)

(assert (=> start!797 (array_inv!39 q!70)))

(assert (= (and start!797 res!2391) b!3087))

(assert (= (and b!3087 res!2395) b!3095))

(assert (= (and b!3095 c!554) b!3094))

(assert (= (and b!3095 (not c!554)) b!3091))

(assert (= (and b!3095 res!2394) b!3088))

(assert (= (and b!3088 c!555) b!3093))

(assert (= (and b!3088 (not c!555)) b!3089))

(assert (= (and b!3093 c!556) b!3096))

(assert (= (and b!3093 (not c!556)) b!3086))

(assert (= (and b!3088 res!2393) b!3092))

(assert (= (and b!3092 res!2392) b!3090))

(declare-fun m!4447 () Bool)

(assert (=> b!3092 m!4447))

(declare-fun m!4449 () Bool)

(assert (=> b!3096 m!4449))

(declare-fun m!4451 () Bool)

(assert (=> b!3090 m!4451))

(declare-fun m!4453 () Bool)

(assert (=> start!797 m!4453))

(assert (=> b!3088 m!4451))

(declare-fun m!4455 () Bool)

(assert (=> b!3088 m!4455))

(declare-fun m!4457 () Bool)

(assert (=> b!3093 m!4457))

(declare-fun m!4459 () Bool)

(assert (=> b!3093 m!4459))

(declare-fun m!4461 () Bool)

(assert (=> b!3087 m!4461))

(declare-fun m!4463 () Bool)

(assert (=> b!3094 m!4463))

(declare-fun m!4465 () Bool)

(assert (=> b!3095 m!4465))

(check-sat (not b!3096) (not b!3094) (not b!3092) (not b!3087) (not start!797))
(check-sat)
