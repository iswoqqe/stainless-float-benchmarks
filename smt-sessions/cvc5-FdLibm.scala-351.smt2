; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2183 () Bool)

(assert start!2183)

(declare-fun b!11311 () Bool)

(declare-fun e!6148 () Bool)

(declare-fun x!106 () (_ FloatingPoint 11 53))

(assert (=> b!11311 (= e!6148 (= (ite (fp.isNaN x!106) #b00000000000000000000000000000000 (ite (fp.gt x!106 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!106 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!106)))) #b00000000000000000000000000000000))))

(declare-fun b!11309 () Bool)

(declare-datatypes ((Unit!1261 0))(
  ( (Unit!1262) )
))
(declare-datatypes ((ControlFlow!6 0))(
  ( (Return!5 (value!753 (_ FloatingPoint 11 53))) (Proceed!5 (value!754 Unit!1261)) )
))
(declare-fun e!6147 () ControlFlow!6)

(assert (=> b!11309 (= e!6147 (Return!5 x!106))))

(declare-fun b!11310 () Bool)

(declare-fun Unit!1263 () Unit!1261)

(assert (=> b!11310 (= e!6147 (Proceed!5 Unit!1263))))

(declare-fun b!11308 () Bool)

(declare-fun e!6146 () Bool)

(declare-fun lt!5537 () ControlFlow!6)

(assert (=> b!11308 (= e!6146 (and (is-Return!5 lt!5537) (or (not (fp.leq (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (value!753 lt!5537))) (not (fp.leq (value!753 lt!5537) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!11308 (= lt!5537 e!6147)))

(declare-fun c!1280 () Bool)

(assert (=> b!11308 (= c!1280 e!6148)))

(declare-fun res!9161 () Bool)

(assert (=> b!11308 (=> (not res!9161) (not e!6148))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11308 (= res!9161 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun res!9162 () Bool)

(assert (=> start!2183 (=> (not res!9162) (not e!6146))))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2183 (= res!9162 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2183 e!6146))

(assert (=> start!2183 true))

(assert (= (and start!2183 res!9162) b!11308))

(assert (= (and b!11308 res!9161) b!11311))

(assert (= (and b!11308 c!1280) b!11309))

(assert (= (and b!11308 (not c!1280)) b!11310))

(declare-fun m!19085 () Bool)

(assert (=> b!11308 m!19085))

(push 1)

(assert (not b!11308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

