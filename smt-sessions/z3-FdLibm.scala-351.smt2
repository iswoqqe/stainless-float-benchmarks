; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2029 () Bool)

(assert start!2029)

(declare-fun res!8411 () Bool)

(declare-fun e!5895 () Bool)

(assert (=> start!2029 (=> (not res!8411) (not e!5895))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2029 (= res!8411 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2029 e!5895))

(assert (=> start!2029 true))

(declare-fun b!10439 () Bool)

(declare-datatypes ((Unit!1215 0))(
  ( (Unit!1216) )
))
(declare-datatypes ((ControlFlow!6 0))(
  ( (Return!5 (value!401 (_ FloatingPoint 11 53))) (Proceed!5 (value!402 Unit!1215)) )
))
(declare-fun e!5894 () ControlFlow!6)

(assert (=> b!10439 (= e!5894 (Return!5 x!106))))

(declare-fun b!10438 () Bool)

(declare-fun lt!5319 () ControlFlow!6)

(get-info :version)

(assert (=> b!10438 (= e!5895 (and ((_ is Return!5) lt!5319) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (value!401 lt!5319))) (not (fp.leq (value!401 lt!5319) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!10438 (= lt!5319 e!5894)))

(declare-fun c!1220 () Bool)

(declare-fun e!5893 () Bool)

(assert (=> b!10438 (= c!1220 e!5893)))

(declare-fun res!8412 () Bool)

(assert (=> b!10438 (=> (not res!8412) (not e!5893))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10438 (= res!8412 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10441 () Bool)

(assert (=> b!10441 (= e!5893 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!10440 () Bool)

(declare-fun Unit!1217 () Unit!1215)

(assert (=> b!10440 (= e!5894 (Proceed!5 Unit!1217))))

(assert (= (and start!2029 res!8411) b!10438))

(assert (= (and b!10438 res!8412) b!10441))

(assert (= (and b!10438 c!1220) b!10439))

(assert (= (and b!10438 (not c!1220)) b!10440))

(declare-fun m!16241 () Bool)

(assert (=> b!10438 m!16241))

(check-sat (not b!10438))
(check-sat)
