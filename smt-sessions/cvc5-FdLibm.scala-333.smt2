; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2069 () Bool)

(assert start!2069)

(declare-fun res!9002 () Bool)

(declare-fun e!5915 () Bool)

(assert (=> start!2069 (=> (not res!9002) (not e!5915))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2069 (= res!9002 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2069 e!5915))

(assert (=> start!2069 true))

(declare-fun b!10970 () Bool)

(declare-fun e!5916 () Bool)

(assert (=> b!10970 (= e!5915 e!5916)))

(declare-fun res!9001 () Bool)

(assert (=> b!10970 (=> (not res!9001) (not e!5916))))

(declare-fun lt!5279 () (_ BitVec 32))

(assert (=> b!10970 (= res!9001 (and (bvsle #b11111111111111111111111111101001 lt!5279) (bvsle lt!5279 #b00000000000000000000001111101000)))))

(declare-fun lt!5282 () (_ BitVec 32))

(assert (=> b!10970 (= lt!5279 (bvsub (bvashr lt!5282 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10970 (= lt!5282 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10971 () Bool)

(declare-fun e!5917 () Bool)

(assert (=> b!10971 (= e!5916 e!5917)))

(declare-fun res!9003 () Bool)

(assert (=> b!10971 (=> (not res!9003) (not e!5917))))

(declare-fun lt!5281 () (_ BitVec 32))

(assert (=> b!10971 (= res!9003 (and (bvsle #b00000000000000000000000000011000 lt!5281) (bvsle lt!5281 #b00000000000000000000001111110000) (= (bvsrem lt!5281 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5280 () (_ BitVec 32))

(assert (=> b!10971 (= lt!5281 (ite (bvslt lt!5280 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5280))))

(assert (=> b!10971 (= lt!5280 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5279 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10972 () Bool)

(assert (=> b!10972 (= e!5917 false)))

(declare-fun lt!5278 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10972 (= lt!5278 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5282 (bvshl lt!5281 #b00000000000000000000000000010100))))))

(assert (= (and start!2069 res!9002) b!10970))

(assert (= (and b!10970 res!9001) b!10971))

(assert (= (and b!10971 res!9003) b!10972))

(declare-fun m!18771 () Bool)

(assert (=> b!10970 m!18771))

(declare-fun m!18773 () Bool)

(assert (=> b!10972 m!18773))

(assert (=> b!10972 m!18773))

(declare-fun m!18775 () Bool)

(assert (=> b!10972 m!18775))

(assert (=> b!10972 m!18775))

(declare-fun m!18777 () Bool)

(assert (=> b!10972 m!18777))

(push 1)

(assert (not b!10970))

(assert (not b!10972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

