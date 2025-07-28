; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1831 () Bool)

(assert start!1831)

(declare-fun res!8109 () Bool)

(declare-fun e!5415 () Bool)

(assert (=> start!1831 (=> (not res!8109) (not e!5415))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1831 (= res!8109 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1831 e!5415))

(assert (=> start!1831 true))

(declare-fun b!9766 () Bool)

(declare-fun lt!4791 () (_ BitVec 32))

(assert (=> b!9766 (= e!5415 (and (bvsle #b11111111111111111111111111101001 lt!4791) (bvsle lt!4791 #b00000000000000000000001111101000) (= (bvand lt!4791 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lt!4791 #b10000000000000000000000000000000) (bvand (bvadd lt!4791 #b00000000000000000000000000010111) #b10000000000000000000000000000000)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9766 (= lt!4791 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1831 res!8109) b!9766))

(declare-fun m!15739 () Bool)

(assert (=> b!9766 m!15739))

(check-sat (not b!9766))
(check-sat)
