; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2027 () Bool)

(assert start!2027)

(declare-fun res!8160 () Bool)

(declare-fun e!5890 () Bool)

(assert (=> start!2027 (=> (not res!8160) (not e!5890))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2027 (= res!8160 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2027 e!5890))

(assert (=> start!2027 true))

(declare-fun b!10177 () Bool)

(declare-fun res!8161 () Bool)

(assert (=> b!10177 (=> (not res!8161) (not e!5890))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10177 (= res!8161 (bvslt (bvand (__HI!0 x!124) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10178 () Bool)

(assert (=> b!10178 (= e!5890 (and (not (fp.isNaN x!124)) (not (fp.gt x!124 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (= (and start!2027 res!8160) b!10177))

(assert (= (and b!10177 res!8161) b!10178))

(declare-fun m!14481 () Bool)

(assert (=> b!10177 m!14481))

(check-sat (not b!10177))
(check-sat)
