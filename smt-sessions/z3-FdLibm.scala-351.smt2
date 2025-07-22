; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2003 () Bool)

(assert start!2003)

(declare-fun b!10072 () Bool)

(declare-datatypes ((Unit!1200 0))(
  ( (Unit!1201) )
))
(declare-datatypes ((ControlFlow!6 0))(
  ( (Return!5 (value!401 (_ FloatingPoint 11 53))) (Proceed!5 (value!402 Unit!1200)) )
))
(declare-fun e!5824 () ControlFlow!6)

(declare-fun Unit!1202 () Unit!1200)

(assert (=> b!10072 (= e!5824 (Proceed!5 Unit!1202))))

(declare-fun b!10070 () Bool)

(declare-fun e!5823 () Bool)

(declare-fun lt!5247 () ControlFlow!6)

(get-info :version)

(assert (=> b!10070 (= e!5823 (and ((_ is Return!5) lt!5247) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (value!401 lt!5247))) (not (fp.leq (value!401 lt!5247) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!10070 (= lt!5247 e!5824)))

(declare-fun c!1205 () Bool)

(declare-fun e!5822 () Bool)

(assert (=> b!10070 (= c!1205 e!5822)))

(declare-fun res!8074 () Bool)

(assert (=> b!10070 (=> (not res!8074) (not e!5822))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10070 (= res!8074 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun res!8073 () Bool)

(assert (=> start!2003 (=> (not res!8073) (not e!5823))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2003 (= res!8073 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2003 e!5823))

(assert (=> start!2003 true))

(declare-fun b!10071 () Bool)

(assert (=> b!10071 (= e!5824 (Return!5 x!106))))

(declare-fun b!10073 () Bool)

(assert (=> b!10073 (= e!5822 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(assert (= (and start!2003 res!8073) b!10070))

(assert (= (and b!10070 res!8074) b!10073))

(assert (= (and b!10070 c!1205) b!10071))

(assert (= (and b!10070 (not c!1205)) b!10072))

(declare-fun m!14417 () Bool)

(assert (=> b!10070 m!14417))

(check-sat (not b!10070))
(check-sat)
