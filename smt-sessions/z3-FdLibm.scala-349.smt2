; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1999 () Bool)

(assert start!1999)

(declare-fun res!8061 () Bool)

(declare-fun e!5812 () Bool)

(assert (=> start!1999 (=> (not res!8061) (not e!5812))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!1999 (= res!8061 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!1999 e!5812))

(assert (=> start!1999 true))

(declare-fun b!10054 () Bool)

(declare-fun res!8062 () Bool)

(assert (=> b!10054 (=> (not res!8062) (not e!5812))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10054 (= res!8062 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10055 () Bool)

(assert (=> b!10055 (= e!5812 (and (not (fp.isNaN x!106)) (not (fp.gt x!106 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (= (and start!1999 res!8061) b!10054))

(assert (= (and b!10054 res!8062) b!10055))

(declare-fun m!14413 () Bool)

(assert (=> b!10054 m!14413))

(check-sat (not b!10054))
(check-sat)
