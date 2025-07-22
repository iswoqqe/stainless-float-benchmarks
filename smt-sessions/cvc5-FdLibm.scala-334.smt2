; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2071 () Bool)

(assert start!2071)

(declare-fun res!9012 () Bool)

(declare-fun e!5924 () Bool)

(assert (=> start!2071 (=> (not res!9012) (not e!5924))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2071 (= res!9012 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2071 e!5924))

(assert (=> start!2071 true))

(declare-fun b!10979 () Bool)

(declare-fun e!5926 () Bool)

(assert (=> b!10979 (= e!5924 e!5926)))

(declare-fun res!9011 () Bool)

(assert (=> b!10979 (=> (not res!9011) (not e!5926))))

(declare-fun lt!5295 () (_ BitVec 32))

(assert (=> b!10979 (= res!9011 (and (bvsle #b11111111111111111111111111101001 lt!5295) (bvsle lt!5295 #b00000000000000000000001111101000)))))

(declare-fun lt!5297 () (_ BitVec 32))

(assert (=> b!10979 (= lt!5295 (bvsub (bvashr lt!5297 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10979 (= lt!5297 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!10980 () Bool)

(declare-fun e!5925 () Bool)

(assert (=> b!10980 (= e!5926 e!5925)))

(declare-fun res!9010 () Bool)

(assert (=> b!10980 (=> (not res!9010) (not e!5925))))

(declare-fun lt!5296 () (_ BitVec 32))

(assert (=> b!10980 (= res!9010 (and (bvsle #b00000000000000000000000000011000 lt!5296) (bvsle lt!5296 #b00000000000000000000001111110000) (= (bvsrem lt!5296 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5293 () (_ BitVec 32))

(assert (=> b!10980 (= lt!5296 (ite (bvslt lt!5293 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5293))))

(assert (=> b!10980 (= lt!5293 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5295 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!10981 () Bool)

(assert (=> b!10981 (= e!5925 false)))

(declare-fun lt!5294 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!10981 (= lt!5294 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5297 (bvshl lt!5296 #b00000000000000000000000000010100))))))

(assert (= (and start!2071 res!9012) b!10979))

(assert (= (and b!10979 res!9011) b!10980))

(assert (= (and b!10980 res!9010) b!10981))

(declare-fun m!18779 () Bool)

(assert (=> b!10979 m!18779))

(declare-fun m!18781 () Bool)

(assert (=> b!10981 m!18781))

(assert (=> b!10981 m!18781))

(declare-fun m!18783 () Bool)

(assert (=> b!10981 m!18783))

(assert (=> b!10981 m!18783))

(declare-fun m!18785 () Bool)

(assert (=> b!10981 m!18785))

(push 1)

(assert (not b!10979))

(assert (not b!10981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

