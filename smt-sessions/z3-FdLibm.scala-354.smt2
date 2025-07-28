; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2035 () Bool)

(assert start!2035)

(declare-fun res!8433 () Bool)

(declare-fun e!5916 () Bool)

(assert (=> start!2035 (=> (not res!8433) (not e!5916))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2035 (= res!8433 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2035 e!5916))

(assert (=> start!2035 true))

(declare-fun b!10474 () Bool)

(assert (=> b!10474 (= e!5916 false)))

(declare-fun lt!5337 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10474 (= lt!5337 (bvand (__HI!0 x!106) #b01111111111111111111111111111111))))

(assert (= (and start!2035 res!8433) b!10474))

(declare-fun m!16247 () Bool)

(assert (=> b!10474 m!16247))

(check-sat (not b!10474))
(check-sat)
