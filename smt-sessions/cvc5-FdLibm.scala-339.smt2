; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2105 () Bool)

(assert start!2105)

(declare-fun res!9055 () Bool)

(declare-fun e!6006 () Bool)

(assert (=> start!2105 (=> (not res!9055) (not e!6006))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2105 (= res!9055 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2105 e!6006))

(assert (=> start!2105 true))

(declare-fun b!11096 () Bool)

(declare-fun e!6005 () Bool)

(assert (=> b!11096 (= e!6006 e!6005)))

(declare-fun res!9056 () Bool)

(assert (=> b!11096 (=> (not res!9056) (not e!6005))))

(declare-fun lt!5394 () (_ BitVec 32))

(assert (=> b!11096 (= res!9056 (and (bvsle #b11111111111111111111111111101001 lt!5394) (bvsle lt!5394 #b00000000000000000000001111101000)))))

(declare-fun lt!5396 () (_ BitVec 32))

(assert (=> b!11096 (= lt!5394 (bvsub (bvashr lt!5396 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11096 (= lt!5396 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11097 () Bool)

(declare-fun e!6007 () Bool)

(assert (=> b!11097 (= e!6005 e!6007)))

(declare-fun res!9057 () Bool)

(assert (=> b!11097 (=> (not res!9057) (not e!6007))))

(declare-fun lt!5393 () (_ BitVec 32))

(assert (=> b!11097 (= res!9057 (and (bvsle #b00000000000000000000000000011000 lt!5393) (bvsle lt!5393 #b00000000000000000000001111110000) (= (bvsrem lt!5393 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5395 () (_ BitVec 32))

(assert (=> b!11097 (= lt!5393 (ite (bvslt lt!5395 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5395))))

(assert (=> b!11097 (= lt!5395 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5394 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11098 () Bool)

(assert (=> b!11098 (= e!6007 false)))

(declare-fun lt!5392 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11098 (= lt!5392 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5396 (bvshl lt!5393 #b00000000000000000000000000010100))))))

(assert (= (and start!2105 res!9055) b!11096))

(assert (= (and b!11096 res!9056) b!11097))

(assert (= (and b!11097 res!9057) b!11098))

(declare-fun m!18879 () Bool)

(assert (=> b!11096 m!18879))

(declare-fun m!18881 () Bool)

(assert (=> b!11098 m!18881))

(assert (=> b!11098 m!18881))

(declare-fun m!18883 () Bool)

(assert (=> b!11098 m!18883))

(assert (=> b!11098 m!18883))

(declare-fun m!18885 () Bool)

(assert (=> b!11098 m!18885))

(push 1)

(assert (not b!11096))

(assert (not b!11098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

