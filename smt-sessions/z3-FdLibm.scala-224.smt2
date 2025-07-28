; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1317 () Bool)

(assert start!1317)

(declare-fun b!6372 () Bool)

(declare-fun e!3388 () Bool)

(declare-fun e!3386 () Bool)

(assert (=> b!6372 (= e!3388 e!3386)))

(declare-fun res!5206 () Bool)

(assert (=> b!6372 (=> (not res!5206) (not e!3386))))

(declare-fun lt!3358 () (_ BitVec 32))

(declare-fun jz!27 () (_ BitVec 32))

(assert (=> b!6372 (= res!5206 (bvsle lt!3358 jz!27))))

(assert (=> b!6372 (= lt!3358 #b00000000000000000000000000000000)))

(declare-datatypes ((array!542 0))(
  ( (array!543 (arr!242 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!242 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!423 0))(
  ( (Unit!424) )
))
(declare-datatypes ((tuple3!94 0))(
  ( (tuple3!95 (_1!159 Unit!423) (_2!159 (_ BitVec 32)) (_3!146 array!542)) )
))
(declare-fun lt!3359 () tuple3!94)

(declare-fun e!3390 () tuple3!94)

(assert (=> b!6372 (= lt!3359 e!3390)))

(declare-fun c!792 () Bool)

(declare-fun lt!3362 () (_ BitVec 32))

(declare-fun xx!37 () array!542)

(assert (=> b!6372 (= c!792 (bvsle lt!3362 (bvadd (bvsub (size!242 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6372 (= lt!3362 #b00000000000000000000000000000000)))

(declare-fun lt!3356 () array!542)

(assert (=> b!6372 (= lt!3356 (array!543 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun e!3387 () tuple3!94)

(declare-fun e!10 () (_ BitVec 32))

(declare-fun lt!3360 () (_ BitVec 32))

(declare-fun b!6373 () Bool)

(declare-fun lt!3363 () array!542)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!542 (_ BitVec 32) array!542) tuple3!94)

(assert (=> b!6373 (= e!3387 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3360 lt!3363))))

(declare-fun b!6375 () Bool)

(declare-fun e!3389 () Bool)

(assert (=> b!6375 (= e!3386 e!3389)))

(declare-fun res!5205 () Bool)

(assert (=> b!6375 (=> (not res!5205) (not e!3389))))

(declare-fun lt!3355 () (_ BitVec 32))

(assert (=> b!6375 (= res!5205 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3355 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3355) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6375 (= lt!3355 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6376 () Bool)

(assert (=> b!6376 (= e!3389 (bvsgt lt!3358 jz!27))))

(declare-fun lt!3357 () tuple3!94)

(assert (=> b!6376 (= lt!3357 e!3387)))

(declare-fun c!791 () Bool)

(assert (=> b!6376 (= c!791 (bvsle lt!3360 (bvadd (bvsub (size!242 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6376 (= lt!3360 #b00000000000000000000000000000000)))

(assert (=> b!6376 (= lt!3363 (array!543 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!6377 () Bool)

(declare-fun res!5207 () Bool)

(declare-fun e!3392 () Bool)

(assert (=> b!6377 (=> (not res!5207) (not e!3392))))

(declare-fun xxInv!0 (array!542) Bool)

(assert (=> b!6377 (= res!5207 (xxInv!0 xx!37))))

(declare-fun b!6378 () Bool)

(assert (=> b!6378 (= e!3392 e!3388)))

(declare-fun res!5203 () Bool)

(assert (=> b!6378 (=> (not res!5203) (not e!3388))))

(declare-fun lt!3361 () (_ BitVec 32))

(assert (=> b!6378 (= res!5203 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3361 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3361) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6378 (= lt!3361 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!6379 () Bool)

(assert (=> b!6379 (= e!3390 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3362 lt!3356))))

(declare-fun b!6380 () Bool)

(declare-fun Unit!425 () Unit!423)

(assert (=> b!6380 (= e!3390 (tuple3!95 Unit!425 lt!3362 lt!3356))))

(declare-fun b!6374 () Bool)

(declare-fun Unit!426 () Unit!423)

(assert (=> b!6374 (= e!3387 (tuple3!95 Unit!426 lt!3360 lt!3363))))

(declare-fun res!5204 () Bool)

(assert (=> start!1317 (=> (not res!5204) (not e!3392))))

(assert (=> start!1317 (= res!5204 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1317 e!3392))

(assert (=> start!1317 true))

(declare-fun array_inv!192 (array!542) Bool)

(assert (=> start!1317 (array_inv!192 xx!37)))

(assert (= (and start!1317 res!5204) b!6377))

(assert (= (and b!6377 res!5207) b!6378))

(assert (= (and b!6378 res!5203) b!6372))

(assert (= (and b!6372 c!792) b!6379))

(assert (= (and b!6372 (not c!792)) b!6380))

(assert (= (and b!6372 res!5206) b!6375))

(assert (= (and b!6375 res!5205) b!6376))

(assert (= (and b!6376 c!791) b!6373))

(assert (= (and b!6376 (not c!791)) b!6374))

(declare-fun m!11807 () Bool)

(assert (=> b!6373 m!11807))

(declare-fun m!11809 () Bool)

(assert (=> b!6377 m!11809))

(declare-fun m!11811 () Bool)

(assert (=> b!6379 m!11811))

(declare-fun m!11813 () Bool)

(assert (=> start!1317 m!11813))

(check-sat (not b!6373) (not b!6377) (not start!1317) (not b!6379))
(check-sat)
