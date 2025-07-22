; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2001 () Bool)

(assert start!2001)

(declare-fun res!8067 () Bool)

(declare-fun e!5815 () Bool)

(assert (=> start!2001 (=> (not res!8067) (not e!5815))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2001 (= res!8067 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2001 e!5815))

(assert (=> start!2001 true))

(declare-fun b!10060 () Bool)

(declare-fun res!8068 () Bool)

(assert (=> b!10060 (=> (not res!8068) (not e!5815))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10060 (= res!8068 (bvslt (bvand (__HI!0 x!106) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!10061 () Bool)

(assert (=> b!10061 (= e!5815 (and (not (fp.isNaN x!106)) (fp.gt x!106 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt x!106 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (= (and start!2001 res!8067) b!10060))

(assert (= (and b!10060 res!8068) b!10061))

(declare-fun m!14415 () Bool)

(assert (=> b!10060 m!14415))

(check-sat (not b!10060))
(check-sat)
