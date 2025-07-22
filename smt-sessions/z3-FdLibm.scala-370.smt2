; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2041 () Bool)

(assert start!2041)

(declare-fun res!8194 () Bool)

(declare-fun e!5926 () Bool)

(assert (=> start!2041 (=> (not res!8194) (not e!5926))))

(declare-fun x!124 () (_ FloatingPoint 11 53))

(declare-fun y!27 () (_ FloatingPoint 11 53))

(assert (=> start!2041 (= res!8194 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!124) (fp.leq x!124 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) y!27) (fp.leq y!27 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!2041 e!5926))

(assert (=> start!2041 true))

(declare-fun b!10223 () Bool)

(assert (=> b!10223 (= e!5926 false)))

(declare-fun lt!5304 () (_ BitVec 32))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10223 (= lt!5304 (bvand (__HI!0 x!124) #b01111111111111111111111111111111))))

(assert (= (and start!2041 res!8194) b!10223))

(declare-fun m!14497 () Bool)

(assert (=> b!10223 m!14497))

(check-sat (not b!10223))
(check-sat)
