; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1811 () Bool)

(assert start!1811)

(declare-fun res!7780 () Bool)

(declare-fun e!5353 () Bool)

(assert (=> start!1811 (=> (not res!7780) (not e!5353))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1811 (= res!7780 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1811 e!5353))

(assert (=> start!1811 true))

(declare-fun b!9407 () Bool)

(declare-fun lt!4728 () (_ BitVec 32))

(assert (=> b!9407 (= e!5353 (and (bvsle #b11111111111111111111111111101001 lt!4728) (bvsle lt!4728 #b00000000000000000000001111101000) (let ((rhs!26 (bvsdiv (bvadd lt!4728 #b00000000000000000000000000010111) #b00000000000000000000000000011000))) (not (= rhs!26 (bvsdiv (bvmul #b00000000000000000000000000011000 rhs!26) #b00000000000000000000000000011000))))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9407 (= lt!4728 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1811 res!7780) b!9407))

(declare-fun m!13921 () Bool)

(assert (=> b!9407 m!13921))

(check-sat (not b!9407))
(check-sat)
