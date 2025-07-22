; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2211 () Bool)

(assert start!2211)

(declare-fun b!11432 () Bool)

(declare-datatypes ((Unit!1273 0))(
  ( (Unit!1274) )
))
(declare-datatypes ((ControlFlow!10 0))(
  ( (Return!9 (value!789 (_ FloatingPoint 11 53))) (Proceed!9 (value!790 Unit!1273)) )
))
(declare-fun e!6225 () ControlFlow!10)

(assert (=> b!11432 (= e!6225 (Return!9 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun b!11433 () Bool)

(declare-fun Unit!1275 () Unit!1273)

(assert (=> b!11433 (= e!6225 (Proceed!9 Unit!1275))))

(declare-fun res!9261 () Bool)

(declare-fun e!6226 () Bool)

(assert (=> start!2211 (=> (not res!9261) (not e!6226))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2211 (= res!9261 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2211 e!6226))

(assert (=> start!2211 true))

(declare-fun b!11434 () Bool)

(declare-fun e!6224 () Bool)

(assert (=> b!11434 (= e!6224 (= (ite (fp.isNaN x!124) #b00000000000000000000000000000000 (ite (fp.gt x!124 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!124 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!124)))) #b00000000000000000000000000000000))))

(declare-fun b!11431 () Bool)

(declare-fun lt!5567 () ControlFlow!10)

(assert (=> b!11431 (= e!6226 (and (is-Return!9 lt!5567) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (value!789 lt!5567))) (not (fp.leq (value!789 lt!5567) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!11431 (= lt!5567 e!6225)))

(declare-fun c!1292 () Bool)

(assert (=> b!11431 (= c!1292 e!6224)))

(declare-fun res!9260 () Bool)

(assert (=> b!11431 (=> (not res!9260) (not e!6224))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11431 (= res!9260 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(assert (= (and start!2211 res!9261) b!11431))

(assert (= (and b!11431 res!9260) b!11434))

(assert (= (and b!11431 c!1292) b!11432))

(assert (= (and b!11431 (not c!1292)) b!11433))

(declare-fun m!19153 () Bool)

(assert (=> b!11431 m!19153))

(push 1)

(assert (not b!11431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

