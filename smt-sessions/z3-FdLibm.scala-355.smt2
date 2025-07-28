; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2037 () Bool)

(assert start!2037)

(declare-fun res!8436 () Bool)

(declare-fun e!5919 () Bool)

(assert (=> start!2037 (=> (not res!8436) (not e!5919))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2037 (= res!8436 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2037 e!5919))

(assert (=> start!2037 true))

(declare-fun b!10477 () Bool)

(assert (=> b!10477 (= e!5919 false)))

(declare-fun lt!5340 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10477 (= lt!5340 (bvand (__HI!0 x!106) #b01111111111111111111111111111111))))

(assert (= (and start!2037 res!8436) b!10477))

(declare-fun m!16249 () Bool)

(assert (=> b!10477 m!16249))

(check-sat (not b!10477))
(check-sat)
