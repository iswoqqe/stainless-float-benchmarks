; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2009 () Bool)

(assert start!2009)

(declare-fun res!8095 () Bool)

(declare-fun e!5845 () Bool)

(assert (=> start!2009 (=> (not res!8095) (not e!5845))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2009 (= res!8095 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2009 e!5845))

(assert (=> start!2009 true))

(declare-fun b!10106 () Bool)

(assert (=> b!10106 (= e!5845 false)))

(declare-fun lt!5265 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10106 (= lt!5265 (bvand (__HI!0 x!106) #b01111111111111111111111111111111))))

(assert (= (and start!2009 res!8095) b!10106))

(declare-fun m!14423 () Bool)

(assert (=> b!10106 m!14423))

(check-sat (not b!10106))
(check-sat)
