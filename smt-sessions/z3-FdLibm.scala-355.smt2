; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2011 () Bool)

(assert start!2011)

(declare-fun res!8098 () Bool)

(declare-fun e!5848 () Bool)

(assert (=> start!2011 (=> (not res!8098) (not e!5848))))

(declare-fun x!106 () (_ FloatingPoint 11 53))

(declare-fun y!16 () (_ FloatingPoint 11 53))

(assert (=> start!2011 (= res!8098 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!106) (fp.leq x!106 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!16) (fp.leq y!16 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2011 e!5848))

(assert (=> start!2011 true))

(declare-fun b!10109 () Bool)

(assert (=> b!10109 (= e!5848 false)))

(declare-fun lt!5268 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10109 (= lt!5268 (bvand (__HI!0 x!106) #b01111111111111111111111111111111))))

(assert (= (and start!2011 res!8098) b!10109))

(declare-fun m!14425 () Bool)

(assert (=> b!10109 m!14425))

(check-sat (not b!10109))
(check-sat)
