; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1805 () Bool)

(assert start!1805)

(declare-fun res!7771 () Bool)

(declare-fun e!5344 () Bool)

(assert (=> start!1805 (=> (not res!7771) (not e!5344))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1805 (= res!7771 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1805 e!5344))

(assert (=> start!1805 true))

(declare-fun b!9398 () Bool)

(declare-fun lt!4719 () (_ BitVec 32))

(assert (=> b!9398 (= e!5344 (and (bvsle #b11111111111111111111111111101001 lt!4719) (bvsle lt!4719 #b00000000000000000000001111101000) (= (bvand lt!4719 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lt!4719 #b10000000000000000000000000000000) (bvand (bvadd lt!4719 #b00000000000000000000000000010111) #b10000000000000000000000000000000)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9398 (= lt!4719 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1805 res!7771) b!9398))

(declare-fun m!13915 () Bool)

(assert (=> b!9398 m!13915))

(check-sat (not b!9398))
(check-sat)
