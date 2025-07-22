; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2039 () Bool)

(assert start!2039)

(declare-fun res!8191 () Bool)

(declare-fun e!5923 () Bool)

(assert (=> start!2039 (=> (not res!8191) (not e!5923))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2039 (= res!8191 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2039 e!5923))

(assert (=> start!2039 true))

(declare-fun b!10220 () Bool)

(assert (=> b!10220 (= e!5923 false)))

(declare-fun lt!5301 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10220 (= lt!5301 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2039 res!8191) b!10220))

(declare-fun m!14495 () Bool)

(assert (=> b!10220 m!14495))

(check-sat (not b!10220))
(check-sat)
