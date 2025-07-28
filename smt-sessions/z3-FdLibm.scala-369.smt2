; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2069 () Bool)

(assert start!2069)

(declare-fun res!8529 () Bool)

(declare-fun e!5997 () Bool)

(assert (=> start!2069 (=> (not res!8529) (not e!5997))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2069 (= res!8529 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2069 e!5997))

(assert (=> start!2069 true))

(declare-fun b!10594 () Bool)

(assert (=> b!10594 (= e!5997 false)))

(declare-fun lt!5373 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10594 (= lt!5373 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2069 res!8529) b!10594))

(declare-fun m!16321 () Bool)

(assert (=> b!10594 m!16321))

(check-sat (not b!10594))
(check-sat)
