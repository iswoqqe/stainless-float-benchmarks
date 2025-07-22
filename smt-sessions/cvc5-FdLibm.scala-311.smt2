; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1953 () Bool)

(assert start!1953)

(declare-fun res!8841 () Bool)

(declare-fun e!5647 () Bool)

(assert (=> start!1953 (=> (not res!8841) (not e!5647))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1953 (= res!8841 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1953 e!5647))

(assert (=> start!1953 true))

(declare-fun b!10594 () Bool)

(declare-fun lt!5006 () (_ BitVec 32))

(assert (=> b!10594 (= e!5647 (and (not (= (bvand lt!5006 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand lt!5006 #b10000000000000000000000000000000) (bvand (bvsub lt!5006 #b00000000000000000000010000010110) #b10000000000000000000000000000000)))))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10594 (= lt!5006 (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100))))

(assert (= (and start!1953 res!8841) b!10594))

(declare-fun m!18533 () Bool)

(assert (=> b!10594 m!18533))

(push 1)

(assert (not b!10594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

