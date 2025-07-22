; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2207 () Bool)

(assert start!2207)

(declare-fun res!9248 () Bool)

(declare-fun e!6214 () Bool)

(assert (=> start!2207 (=> (not res!9248) (not e!6214))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2207 (= res!9248 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2207 e!6214))

(assert (=> start!2207 true))

(declare-fun b!11415 () Bool)

(declare-fun res!9249 () Bool)

(assert (=> b!11415 (=> (not res!9249) (not e!6214))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11415 (= res!9249 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!11416 () Bool)

(assert (=> b!11416 (= e!6214 (and (not (fp.isNaN x!124)) (not (fp.gt x!124 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (= (and start!2207 res!9248) b!11415))

(assert (= (and b!11415 res!9249) b!11416))

(declare-fun m!19149 () Bool)

(assert (=> b!11415 m!19149))

(push 1)

(assert (not b!11415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

