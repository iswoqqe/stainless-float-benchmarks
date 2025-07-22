; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1955 () Bool)

(assert start!1955)

(declare-fun res!8844 () Bool)

(declare-fun e!5650 () Bool)

(assert (=> start!1955 (=> (not res!8844) (not e!5650))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1955 (= res!8844 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1955 e!5650))

(assert (=> start!1955 true))

(declare-fun b!10597 () Bool)

(declare-fun lt!5009 () (_ BitVec 32))

(assert (=> b!10597 (= e!5650 (and (bvsle #b11111111111111111111111111101001 lt!5009) (bvsle lt!5009 #b00000000000000000000001111101000) (= (bvand lt!5009 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lt!5009 #b10000000000000000000000000000000) (bvand (bvadd lt!5009 #b00000000000000000000000000010111) #b10000000000000000000000000000000)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10597 (= lt!5009 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1955 res!8844) b!10597))

(declare-fun m!18535 () Bool)

(assert (=> b!10597 m!18535))

(push 1)

(assert (not b!10597))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

