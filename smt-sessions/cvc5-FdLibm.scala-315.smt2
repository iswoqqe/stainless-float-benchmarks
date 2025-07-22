; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1961 () Bool)

(assert start!1961)

(declare-fun res!8853 () Bool)

(declare-fun e!5659 () Bool)

(assert (=> start!1961 (=> (not res!8853) (not e!5659))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1961 (= res!8853 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1961 e!5659))

(assert (=> start!1961 true))

(declare-fun b!10606 () Bool)

(declare-fun lt!5018 () (_ BitVec 32))

(assert (=> b!10606 (= e!5659 (and (bvsle #b11111111111111111111111111101001 lt!5018) (bvsle lt!5018 #b00000000000000000000001111101000) (let ((rhs!26 (bvsdiv (bvadd lt!5018 #b00000000000000000000000000010111) #b00000000000000000000000000011000))) (not (= rhs!26 (bvsdiv (bvmul #b00000000000000000000000000011000 rhs!26) #b00000000000000000000000000011000))))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10606 (= lt!5018 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1961 res!8853) b!10606))

(declare-fun m!18541 () Bool)

(assert (=> b!10606 m!18541))

(push 1)

(assert (not b!10606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

