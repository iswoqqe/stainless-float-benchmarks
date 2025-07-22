; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1969 () Bool)

(assert start!1969)

(declare-fun res!8876 () Bool)

(declare-fun e!5682 () Bool)

(assert (=> start!1969 (=> (not res!8876) (not e!5682))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1969 (= res!8876 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1969 e!5682))

(assert (=> start!1969 true))

(declare-fun b!10628 () Bool)

(declare-fun e!5683 () Bool)

(assert (=> b!10628 (= e!5682 e!5683)))

(declare-fun res!8877 () Bool)

(assert (=> b!10628 (=> (not res!8877) (not e!5683))))

(declare-fun lt!5053 () (_ BitVec 32))

(assert (=> b!10628 (= res!8877 (and (bvsle #b11111111111111111111111111101001 lt!5053) (bvsle lt!5053 #b00000000000000000000001111101000)))))

(declare-fun lt!5052 () (_ BitVec 32))

(assert (=> b!10628 (= lt!5053 (bvsub (bvashr lt!5052 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10628 (= lt!5052 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10629 () Bool)

(declare-fun e!5681 () Bool)

(assert (=> b!10629 (= e!5683 e!5681)))

(declare-fun res!8875 () Bool)

(assert (=> b!10629 (=> (not res!8875) (not e!5681))))

(declare-fun lt!5050 () (_ BitVec 32))

(assert (=> b!10629 (= res!8875 (and (bvsle #b00000000000000000000000000011000 lt!5050) (bvsle lt!5050 #b00000000000000000000001111110000) (= (bvsrem lt!5050 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5049 () (_ BitVec 32))

(assert (=> b!10629 (= lt!5050 (ite (bvslt lt!5049 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5049))))

(assert (=> b!10629 (= lt!5049 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5053 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10630 () Bool)

(declare-fun lt!5054 () (_ BitVec 32))

(assert (=> b!10630 (= e!5681 (and (not (= (bvand lt!5052 #b10000000000000000000000000000000) (bvand lt!5054 #b10000000000000000000000000000000))) (not (= (bvand lt!5052 #b10000000000000000000000000000000) (bvand (bvsub lt!5052 lt!5054) #b10000000000000000000000000000000)))))))

(assert (=> b!10630 (= lt!5054 (bvshl lt!5050 #b00000000000000000000000000010100))))

(declare-fun lt!5051 () (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10630 (= lt!5051 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)))))

(assert (= (and start!1969 res!8876) b!10628))

(assert (= (and b!10628 res!8877) b!10629))

(assert (= (and b!10629 res!8875) b!10630))

(declare-fun m!18553 () Bool)

(assert (=> b!10628 m!18553))

(declare-fun m!18555 () Bool)

(assert (=> b!10630 m!18555))

(assert (=> b!10630 m!18555))

(declare-fun m!18557 () Bool)

(assert (=> b!10630 m!18557))

(push 1)

(assert (not b!10630))

(assert (not b!10628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

