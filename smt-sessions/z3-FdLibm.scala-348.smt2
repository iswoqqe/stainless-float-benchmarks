; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1997 () Bool)

(assert start!1997)

(declare-fun res!8055 () Bool)

(declare-fun e!5809 () Bool)

(assert (=> start!1997 (=> (not res!8055) (not e!5809))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!1997 (= res!8055 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!1997 e!5809))

(assert (=> start!1997 true))

(declare-fun b!10048 () Bool)

(declare-fun res!8056 () Bool)

(assert (=> b!10048 (=> (not res!8056) (not e!5809))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10048 (= res!8056 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10049 () Bool)

(assert (=> b!10049 (= e!5809 (fp.isNaN x!106))))

(assert (= (and start!1997 res!8055) b!10048))

(assert (= (and b!10048 res!8056) b!10049))

(declare-fun m!14411 () Bool)

(assert (=> b!10048 m!14411))

(check-sat (not b!10048))
(check-sat)
