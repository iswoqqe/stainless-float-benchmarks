; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1841 () Bool)

(assert start!1841)

(declare-fun res!8124 () Bool)

(declare-fun e!5430 () Bool)

(assert (=> start!1841 (=> (not res!8124) (not e!5430))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1841 (= res!8124 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1841 e!5430))

(assert (=> start!1841 true))

(declare-fun b!9781 () Bool)

(declare-fun lt!4806 () (_ BitVec 32))

(assert (=> b!9781 (= e!5430 (and (bvsle #b11111111111111111111111111101001 lt!4806) (bvsle lt!4806 #b00000000000000000000001111101000) (let ((tmp!139 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4806 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))) (let ((t!92 (ite (bvslt tmp!139 #b00000000000000000000000000011000) #b00000000000000000000000000011000 tmp!139))) false))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9781 (= lt!4806 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1841 res!8124) b!9781))

(declare-fun m!15749 () Bool)

(assert (=> b!9781 m!15749))

(check-sat (not b!9781))
(check-sat)
