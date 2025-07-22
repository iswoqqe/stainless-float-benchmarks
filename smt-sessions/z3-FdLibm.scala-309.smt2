; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1799 () Bool)

(assert start!1799)

(declare-fun res!7762 () Bool)

(declare-fun e!5335 () Bool)

(assert (=> start!1799 (=> (not res!7762) (not e!5335))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1799 (= res!7762 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1799 e!5335))

(assert (=> start!1799 true))

(declare-fun b!9389 () Bool)

(declare-fun lt!4710 () (_ BitVec 32))

(assert (=> b!9389 (= e!5335 (and (bvsle #b11111111111111111111111111101001 lt!4710) (bvsle lt!4710 #b00000000000000000000001111101000) (let ((tmp!139 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!4710 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))) (let ((t!92 (ite (bvslt tmp!139 #b00000000000000000000000000011000) #b00000000000000000000000000011000 tmp!139))) (or (bvsgt #b00000000000000000000000000011000 t!92) (bvsgt t!92 #b00000000000000000000001111110000) (not (= (bvsrem t!92 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!9389 (= lt!4710 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1799 res!7762) b!9389))

(declare-fun m!13909 () Bool)

(assert (=> b!9389 m!13909))

(check-sat (not b!9389))
(check-sat)
