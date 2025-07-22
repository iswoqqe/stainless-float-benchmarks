; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1965 () Bool)

(assert start!1965)

(declare-fun res!8859 () Bool)

(declare-fun e!5665 () Bool)

(assert (=> start!1965 (=> (not res!8859) (not e!5665))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1965 (= res!8859 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1965 e!5665))

(assert (=> start!1965 true))

(declare-fun b!10612 () Bool)

(declare-fun lt!5024 () (_ BitVec 32))

(assert (=> b!10612 (= e!5665 (and (bvsle #b11111111111111111111111111101001 lt!5024) (bvsle lt!5024 #b00000000000000000000001111101000) (let ((tmp!139 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5024 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))) (let ((t!92 (ite (bvslt tmp!139 #b00000000000000000000000000011000) #b00000000000000000000000000011000 tmp!139))) false))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10612 (= lt!5024 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(assert (= (and start!1965 res!8859) b!10612))

(declare-fun m!18545 () Bool)

(assert (=> b!10612 m!18545))

(push 1)

(assert (not b!10612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

