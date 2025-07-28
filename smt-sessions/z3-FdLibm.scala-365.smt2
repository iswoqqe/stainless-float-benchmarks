; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2057 () Bool)

(assert start!2057)

(declare-fun b!10561 () Bool)

(declare-fun e!5971 () Bool)

(declare-datatypes ((Unit!1227 0))(
  ( (Unit!1228) )
))
(declare-datatypes ((ControlFlow!10 0))(
  ( (Return!9 (value!423 (_ FloatingPoint 11 53))) (Proceed!9 (value!424 Unit!1227)) )
))
(declare-fun lt!5349 () ControlFlow!10)

(get-info :version)

(assert (=> b!10561 (= e!5971 (and ((_ is Return!9) lt!5349) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (value!423 lt!5349))) (not (fp.leq (value!423 lt!5349) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!5972 () ControlFlow!10)

(assert (=> b!10561 (= lt!5349 e!5972)))

(declare-fun c!1232 () Bool)

(declare-fun e!5973 () Bool)

(assert (=> b!10561 (= c!1232 e!5973)))

(declare-fun res!8511 () Bool)

(assert (=> b!10561 (=> (not res!8511) (not e!5973))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10561 (= res!8511 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun res!8510 () Bool)

(assert (=> start!2057 (=> (not res!8510) (not e!5971))))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2057 (= res!8510 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2057 e!5971))

(assert (=> start!2057 true))

(declare-fun b!10564 () Bool)

(assert (=> b!10564 (= e!5973 (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000))))

(declare-fun b!10562 () Bool)

(assert (=> b!10562 (= e!5972 (Return!9 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun b!10563 () Bool)

(declare-fun Unit!1229 () Unit!1227)

(assert (=> b!10563 (= e!5972 (Proceed!9 Unit!1229))))

(assert (= (and start!2057 res!8510) b!10561))

(assert (= (and b!10561 res!8511) b!10564))

(assert (= (and b!10561 c!1232) b!10562))

(assert (= (and b!10561 (not c!1232)) b!10563))

(declare-fun m!16309 () Bool)

(assert (=> b!10561 m!16309))

(check-sat (not b!10561))
(check-sat)
