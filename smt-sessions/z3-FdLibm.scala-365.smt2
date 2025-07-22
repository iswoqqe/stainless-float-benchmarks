; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2031 () Bool)

(assert start!2031)

(declare-fun b!10196 () Bool)

(declare-fun e!5900 () Bool)

(declare-fun x!124 () (_ FloatingPoint 11 53))

(assert (=> b!10196 (= e!5900 (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000))))

(declare-fun b!10195 () Bool)

(declare-datatypes ((Unit!1212 0))(
  ( (Unit!1213) )
))
(declare-datatypes ((ControlFlow!10 0))(
  ( (Return!9 (value!423 (_ FloatingPoint 11 53))) (Proceed!9 (value!424 Unit!1212)) )
))
(declare-fun e!5902 () ControlFlow!10)

(declare-fun Unit!1214 () Unit!1212)

(assert (=> b!10195 (= e!5902 (Proceed!9 Unit!1214))))

(declare-fun b!10194 () Bool)

(assert (=> b!10194 (= e!5902 (Return!9 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun res!8173 () Bool)

(declare-fun e!5901 () Bool)

(assert (=> start!2031 (=> (not res!8173) (not e!5901))))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2031 (= res!8173 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2031 e!5901))

(assert (=> start!2031 true))

(declare-fun b!10193 () Bool)

(declare-fun lt!5277 () ControlFlow!10)

(get-info :version)

(assert (=> b!10193 (= e!5901 (and ((_ is Return!9) lt!5277) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (value!423 lt!5277))) (not (fp.leq (value!423 lt!5277) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!10193 (= lt!5277 e!5902)))

(declare-fun c!1217 () Bool)

(assert (=> b!10193 (= c!1217 e!5900)))

(declare-fun res!8172 () Bool)

(assert (=> b!10193 (=> (not res!8172) (not e!5900))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10193 (= res!8172 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(assert (= (and start!2031 res!8173) b!10193))

(assert (= (and b!10193 res!8172) b!10196))

(assert (= (and b!10193 c!1217) b!10194))

(assert (= (and b!10193 (not c!1217)) b!10195))

(declare-fun m!14485 () Bool)

(assert (=> b!10193 m!14485))

(check-sat (not b!10193))
(check-sat)
