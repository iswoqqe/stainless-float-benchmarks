; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1949 () Bool)

(assert start!1949)

(declare-fun res!8835 () Bool)

(declare-fun e!5641 () Bool)

(assert (=> start!1949 (=> (not res!8835) (not e!5641))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1949 (= res!8835 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1949 e!5641))

(assert (=> start!1949 true))

(declare-fun b!10588 () Bool)

(declare-fun lt!5000 () (_ BitVec 32))

(assert (=> b!10588 (= e!5641 (and (bvsle #b11111111111111111111111111101001 lt!5000) (bvsle lt!5000 #b00000000000000000000001111101000) (let ((tmp!139 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5000 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))) (let ((t!92 (ite (bvslt tmp!139 #b00000000000000000000000000011000) #b00000000000000000000000000011000 tmp!139))) (or (bvsgt #b00000000000000000000000000011000 t!92) (bvsgt t!92 #b00000000000000000000001111110000) (not (= (bvsrem t!92 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10588 (= lt!5000 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1949 res!8835) b!10588))

(declare-fun m!18529 () Bool)

(assert (=> b!10588 m!18529))

(push 1)

(assert (not b!10588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

