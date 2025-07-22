; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2103 () Bool)

(assert start!2103)

(declare-fun res!9048 () Bool)

(declare-fun e!5997 () Bool)

(assert (=> start!2103 (=> (not res!9048) (not e!5997))))

(declare-fun x!143 () (_ FloatingPoint 11 53))

(assert (=> start!2103 (= res!9048 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!143) (not (fp.isInfinite x!143)) (not (fp.isNaN x!143))))))

(assert (=> start!2103 e!5997))

(assert (=> start!2103 true))

(declare-fun b!11087 () Bool)

(declare-fun e!5996 () Bool)

(assert (=> b!11087 (= e!5997 e!5996)))

(declare-fun res!9047 () Bool)

(assert (=> b!11087 (=> (not res!9047) (not e!5996))))

(declare-fun lt!5377 () (_ BitVec 32))

(assert (=> b!11087 (= res!9047 (and (bvsle #b11111111111111111111111111101001 lt!5377) (bvsle lt!5377 #b00000000000000000000001111101000)))))

(declare-fun lt!5379 () (_ BitVec 32))

(assert (=> b!11087 (= lt!5377 (bvsub (bvashr lt!5379 #b00000000000000000000000000010100) #b00000000000000000000010000010110))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11087 (= lt!5379 (bvand (__HI!0 x!143) #b01111111111111111111111111111111))))

(declare-fun b!11088 () Bool)

(declare-fun e!5998 () Bool)

(assert (=> b!11088 (= e!5996 e!5998)))

(declare-fun res!9046 () Bool)

(assert (=> b!11088 (=> (not res!9046) (not e!5998))))

(declare-fun lt!5380 () (_ BitVec 32))

(assert (=> b!11088 (= res!9046 (and (bvsle #b00000000000000000000000000011000 lt!5380) (bvsle lt!5380 #b00000000000000000000001111110000) (= (bvsrem lt!5380 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun lt!5381 () (_ BitVec 32))

(assert (=> b!11088 (= lt!5380 (ite (bvslt lt!5381 #b00000000000000000000000000011000) #b00000000000000000000000000011000 lt!5381))))

(assert (=> b!11088 (= lt!5381 (bvmul #b00000000000000000000000000011000 (bvsdiv (bvadd lt!5377 #b00000000000000000000000000010111) #b00000000000000000000000000011000)))))

(declare-fun b!11089 () Bool)

(assert (=> b!11089 (= e!5998 false)))

(declare-fun lt!5378 () (_ FloatingPoint 11 53))

(declare-fun __HI!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!1 ((_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(declare-fun __LO!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!11089 (= lt!5378 (__HI!1 (__LO!1 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (__LO!0 x!143)) (bvsub lt!5379 (bvshl lt!5380 #b00000000000000000000000000010100))))))

(assert (= (and start!2103 res!9048) b!11087))

(assert (= (and b!11087 res!9047) b!11088))

(assert (= (and b!11088 res!9046) b!11089))

(declare-fun m!18871 () Bool)

(assert (=> b!11087 m!18871))

(declare-fun m!18873 () Bool)

(assert (=> b!11089 m!18873))

(assert (=> b!11089 m!18873))

(declare-fun m!18875 () Bool)

(assert (=> b!11089 m!18875))

(assert (=> b!11089 m!18875))

(declare-fun m!18877 () Bool)

(assert (=> b!11089 m!18877))

(push 1)

(assert (not b!11089))

(assert (not b!11087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

