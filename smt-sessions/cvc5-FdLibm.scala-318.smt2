; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1967 () Bool)

(assert start!1967)

(declare-fun res!8867 () Bool)

(declare-fun e!5672 () Bool)

(assert (=> start!1967 (=> (not res!8867) (not e!5672))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!1967 (= res!8867 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!1967 e!5672))

(assert (=> start!1967 true))

(declare-fun b!10619 () Bool)

(declare-fun e!5673 () Bool)

(assert (=> b!10619 (= e!5672 e!5673)))

(declare-fun res!8866 () Bool)

(assert (=> b!10619 (=> (not res!8866) (not e!5673))))

(declare-fun lt!5033 () (_ BitVec 32))

(assert (=> b!10619 (= res!8866 (and (bvsle #b11111111111111111111111111101001 lt!5033) (bvsle lt!5033 #b00000000000000000000001111101000)))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10619 (= lt!5033 (bvsub (bvashr (bvand (__HI!0 x!143) #b01111111111111111111111111111111) #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun b!10620 () Bool)

(declare-fun e!5674 () Bool)

(assert (=> b!10620 (= e!5673 e!5674)))

(declare-fun res!8868 () Bool)

(assert (=> b!10620 (=> (not res!8868) (not e!5674))))

(declare-fun lt!5036 () (_ BitVec 32))

(assert (=> b!10620 (= res!8868 (and (bvsle #b00000000000000000000000000011000 lt!5036) (bvsle lt!5036 #b00000000000000000000001111110000) (= (bvsrem lt!5036 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5035 () (_ BitVec 32))

(assert (=> b!10620 (= lt!5036 (ite (bvslt lt!5035 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5035))))

(assert (=> b!10620 (= lt!5035 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5033 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10621 () Bool)

(assert (=> b!10621 (= e!5674 false)))

(declare-fun lt!5034 () (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10621 (= lt!5034 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)))))

(assert (= (and start!1967 res!8867) b!10619))

(assert (= (and b!10619 res!8866) b!10620))

(assert (= (and b!10620 res!8868) b!10621))

(declare-fun m!18547 () Bool)

(assert (=> b!10619 m!18547))

(declare-fun m!18549 () Bool)

(assert (=> b!10621 m!18549))

(assert (=> b!10621 m!18549))

(declare-fun m!18551 () Bool)

(assert (=> b!10621 m!18551))

(push 1)

(assert (not b!10619))

(assert (not b!10621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

