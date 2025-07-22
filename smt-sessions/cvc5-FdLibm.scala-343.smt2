; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2137 () Bool)

(assert start!2137)

(declare-fun res!9093 () Bool)

(declare-fun e!6077 () Bool)

(assert (=> start!2137 (=> (not res!9093) (not e!6077))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2137 (= res!9093 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2137 e!6077))

(assert (=> start!2137 true))

(declare-fun b!11204 () Bool)

(declare-fun e!6079 () Bool)

(assert (=> b!11204 (= e!6077 e!6079)))

(declare-fun res!9091 () Bool)

(assert (=> b!11204 (=> (not res!9091) (not e!6079))))

(declare-fun lt!5486 () (_ BitVec 32))

(assert (=> b!11204 (= res!9091 (and (bvsle #b11111111111111111111111111101001 lt!5486) (bvsle lt!5486 #b00000000000000000000001111101000)))))

(declare-fun lt!5487 () (_ BitVec 32))

(assert (=> b!11204 (= lt!5486 (bvsub (bvashr lt!5487 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11204 (= lt!5487 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11205 () Bool)

(declare-fun e!6078 () Bool)

(assert (=> b!11205 (= e!6079 e!6078)))

(declare-fun res!9092 () Bool)

(assert (=> b!11205 (=> (not res!9092) (not e!6078))))

(declare-fun lt!5485 () (_ BitVec 32))

(assert (=> b!11205 (= res!9092 (and (bvsle #b00000000000000000000000000011000 lt!5485) (bvsle lt!5485 #b00000000000000000000001111110000) (= (bvsrem lt!5485 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5489 () (_ BitVec 32))

(assert (=> b!11205 (= lt!5485 (ite (bvslt lt!5489 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5489))))

(assert (=> b!11205 (= lt!5489 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5486 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11206 () Bool)

(assert (=> b!11206 (= e!6078 false)))

(declare-fun lt!5488 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11206 (= lt!5488 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5487 (bvshl lt!5485 #b00000000000000000000000000010100))))))

(assert (= (and start!2137 res!9093) b!11204))

(assert (= (and b!11204 res!9091) b!11205))

(assert (= (and b!11205 res!9092) b!11206))

(declare-fun m!18983 () Bool)

(assert (=> b!11204 m!18983))

(declare-fun m!18985 () Bool)

(assert (=> b!11206 m!18985))

(assert (=> b!11206 m!18985))

(declare-fun m!18987 () Bool)

(assert (=> b!11206 m!18987))

(assert (=> b!11206 m!18987))

(declare-fun m!18989 () Bool)

(assert (=> b!11206 m!18989))

(push 1)

(assert (not b!11206))

(assert (not b!11204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

